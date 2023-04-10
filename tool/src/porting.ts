import _, { PropertyPath } from "lodash";

import { callbackDictionary } from "./callback_dictionary.js";
import { commonModes } from "./common_modes.js";
import { Mode } from "./types.js";

export function generateMode(
  mode: string | Mode,
  matchCommonKey: boolean,
  commonSet: Set<string>,
): string {
  if (typeof mode === "string") {
    return generateModeFromString(mode, matchCommonKey, commonSet);
  }

  if (mode == null) {
    return JSON.stringify(null);
  }

  let code = "Mode(";
  Object.entries(mode).forEach(([k, v], i, arr) => {
    if (k === "exports") return; // CPP

    if (v instanceof RegExp) v = v.source;
    if (k === "end" && typeof v === "boolean") v = v.toString();
    if (k === "subLanguage" && typeof v === "string") {
      v = [v];
    }

    switch (k) {
      case "className":
        if (v === null) {
          code += `${k}: preserveNullString`;
          break;
        }
        code += `${k}: ${JSON.stringify(v)}`;
        break;
      case "on:begin":
        if (callbackDictionary.has(v.toString())) {
          code += `onBegin: ${callbackDictionary.get(v.toString())}`;
          break;
        }
        code += `onBegin: (match, resp) => throw Exception(r'''Callback not ported: ${v
          .toString()
          .replace(/'/g, "r'")}''')`;
        break;
      case "on:end":
        if (callbackDictionary.has(v.toString())) {
          code += `onEnd: ${callbackDictionary.get(v.toString())}`;
          break;
        }
        code += `onEnd: (match, resp) => throw Exception(r'''Callback not ported: ${v
          .toString()
          .replace(/'/g, "r'")}''')`;
        break;

      case "starts":
        code += `${k}: ${generateMode(v, true, commonSet)}`;
        break;
      case "contains":
      case "variants":
        if (v == null) {
          code += `${k}: null`;
        } else if (Array.isArray(v)) {
          const arr = v.map((m) => {
            return generateMode(m, true, commonSet);
          });
          if (arr.length != 0) {
            code += `${k}: [${arr.join(",")},]`;
            break;
          }
          code += `${k}: []`;
        } else {
          throw "should not be here";
        }
        break;
      default:
        code += `${k}: ${JSON.stringify(v)}`;
    }

    if (i < arr.length) {
      code += ",";
    }
  });
  code += ")";
  return code;
}

function generateModeFromString(
  str: string,
  matchCommonKey: boolean,
  commonSet: Set<string>,
): string {
  if (matchCommonKey) {
    for (const entry of commonModes) {
      if (entry[0] === str) {
        return entry[0];
      }
    }
  }

  if (str === "self") {
    return "Mode(self:true)";
  }

  if (str.startsWith("~")) {
    commonSet.add(str);
    return `Mode(ref: '${str}')`;
  }

  throw new Error(`Should not be here: ${str}`);
}

/**
 * Gets the path to the pbject by reference string
 *
 * @param str reference string  `~contains~0` -> `*.contains[0]`
 * @returns
 */
export function getLodashGetKey(str: String): PropertyPath {
  let lodashGetKey = "";
  for (let item of str.split("~").slice(1)) {
    if (isNaN(parseInt(item, 10))) {
      lodashGetKey += "." + item;
    } else {
      lodashGetKey += "[" + item + "]";
    }
  }

  lodashGetKey = lodashGetKey.slice(1);
  return lodashGetKey;
}

/**
 * Recursively takes all of the references from [rootObject] and return them in a set.
 */
export function expandRefs(rootObject: Object): Set<String> {
  let commonSet = new Set<String>();
  expandRefsInternal(rootObject, commonSet, rootObject);

  return commonSet;
}

function expandRefsInternal(
  rootObject: Object,
  commonSet: Set<String>,
  currentObject: Object,
): void {
  if (typeof currentObject === "string") {
    if (commonSet.has(currentObject)) {
      return;
    }
    if (currentObject.startsWith("~")) {
      commonSet.add(currentObject);
      let lodashGetKey: PropertyPath = getLodashGetKey(currentObject);

      expandRefsInternal(
        rootObject,
        commonSet,
        _.get(rootObject, lodashGetKey),
      );
    }
  }

  if (currentObject === null) {
    return;
  }

  let entries = Object.entries(currentObject);

  for (const item of entries) {
    let [k, v] = item;

    switch (k) {
      case "starts":
        expandRefsInternal(rootObject, commonSet, v);
        break;

      case "contains":
      case "variants":
        if (v === null) {
          break;
        }

        if (Array.isArray(v)) {
          for (const m of v) {
            expandRefsInternal(rootObject, commonSet, m);
          }

          break;
        }

        if (typeof v === "string") {
          expandRefsInternal(rootObject, commonSet, v);
          break;
        }

        throw "should not be here";
    }
  }
}

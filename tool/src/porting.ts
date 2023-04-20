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

    // This is a workaround for CircularJSON serialization.
    // Symbol `~` is reserved by CircularJSON and corresponds to
    // `\\x7e` in radix16 String.
    // That is why when an Object is serialized
    // CircularJSON replaces `\\x7e` with `\\\\x7e`.
    if (k === "begin" && v && v.includes("\\\\x7e")) {
      v = v.replaceAll("\\\\x7e", "\\x7e");
    }

    switch (k) {
      case "className":
      case "scope":
        if (v === null || v === "") {
          code += `${k}: overwritingNullString`;
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
          code += `${k}: [${arr.join(",")}]`;
        } else {
          throw "should not be here";
        }
        break;
      default:
        code += `${k}: ${JSON.stringify(v)}`;
    }

    if (i < arr.length - 1) {
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
 * Returns all CircularJSON tokens found in obj recursively.
 * obj should be a plain JSON deserialization of an object stringified with CircularJSON.
 */
export function getCircularJsonTokens(obj: Object): Set<string> {
  const result = new Set<string>();
  addCircularJsonTokens(obj, result, obj);

  return result;
}

function addCircularJsonTokens(
  rootObject: Object,
  tokens: Set<string>,
  currentObject: Object,
): void {
  if (typeof currentObject === "string") {
    if (tokens.has(currentObject)) {
      return;
    }
    if (currentObject.startsWith("~")) {
      tokens.add(currentObject);
      let lodashGetKey: PropertyPath = getLodashGetKey(currentObject);

      addCircularJsonTokens(
        rootObject,
        tokens,
        _.get(rootObject, lodashGetKey),
      );
    }
    return;
  }

  if (currentObject === null) {
    return;
  }

  const entries = Object.entries(currentObject);

  for (const item of entries) {
    const [k, v] = item;

    switch (k) {
      case "starts":
        addCircularJsonTokens(rootObject, tokens, v);
        break;

      case "contains":
      case "variants":
        if (v === null) {
          break;
        }

        if (typeof v === "string") {
          addCircularJsonTokens(rootObject, tokens, v);
          break;
        }

        if (Array.isArray(v)) {
          for (const element of v) {
            addCircularJsonTokens(rootObject, tokens, element);
          }

          break;
        }

        throw "should not be here";
    }
  }
}

import { Language, Mode } from "highlight.js";
import _, { PropertyPath } from "lodash";

import { callbackDictionary } from "./callback_dictionary.js";
import { commonModes } from "./common_modes.js";

export function generateLanguage(
  language: Language,
  id: string,
  refs: string,
): string {
  let entries: MapEntry<string, string>[] = [];

  for (const [k, v] of Object.entries(language)) {
    const entry = generateLanguageEntry(k, v);
    if (entry !== undefined) {
      entries.push(entry);
    }
  }

  return `Language(id: "${id}", ${refs}, ${entries
    .map(({ key, value }) => `${key}: ${value},`)
    .join("")})`;
}

export function generateMode(mode: string | Mode): string {
  if (typeof mode === "string") {
    return generateModeFromString(mode);
  }

  let entries: MapEntry<string, string>[] = [];

  for (const [k, v] of Object.entries(mode)) {
    const entry = generateModeEntry(k, v);
    if (entry !== undefined) {
      entries.push(entry);
    }
  }

  return `Mode(${entries
    .map(({ key, value }) => `${key}: ${value},`)
    .join("")})`;
}

function generateModeFromString(str: string): string {
  for (const entry of commonModes) {
    if (entry[0] === str) {
      return entry[0];
    }
  }

  if (str === "self") {
    return "ModeSelfReference()";
  }

  if (str.startsWith("~")) {
    return `ModeReference('${str}')`;
  }

  throw new Error(`Should not be here: ${str}`);
}

function generateLanguageEntry(
  key: string,
  value: any,
): MapEntry<string, string> | undefined {
  key = preprocessModeEntryKey(key);
  value = preprocessModeEntryValue(value);

  switch (key) {
    case "name":
    case "unicodeRegex":
    case "rawDefinition":
    case "aliases":
    case "disableAutodetect":
    case "case_insensitive":
    case "keywords":
    // case "exports": unused in Dart core
    case "classNameAliases":
    case "compilerExtensions":
    case "supersetOf":
      return { key: key, value: JSON.stringify(value) };
  }

  return generateModeEntry(key, value);
}

function generateModeEntry(
  key: string,
  value: any,
): MapEntry<string, string> | undefined {
  key = preprocessModeEntryKey(key);
  value = preprocessModeEntryValue(value);

  switch (key) {
    case "begin":
      if (value && value.includes("\\\\x7e")) {
        value = value.replaceAll("\\\\x7e", "\\x7e");
      }
      return { key: key, value: JSON.stringify(value) };

    case "end":
      if (typeof value === "boolean") value = value.toString();
      return { key: key, value: JSON.stringify(value) };

    case "onBegin":
    case "onEnd":
      return modeEntryCallback(key, value);

    case "starts":
      return { key: key, value: generateMode(value) };

    case "subLanguage":
      if (typeof value === "string") value = [value];
      return { key: key, value: JSON.stringify(value) };

    case "className":
    case "scope":
      if (value === null || value === "") {
        return { key: key, value: "overwritingNullString" };
      }
      return { key: key, value: JSON.stringify(value) };

    case "contains":
    case "variants":
      if (value == null) {
        return { key: key, value: "null" };
      }

      if (Array.isArray(value)) {
        const arr = value.map((mode) => generateMode(mode) + ",");
        return { key: key, value: `[${arr.join("")}]` };
      }

      throw "should not be here";

    case "match":
    case "className":
    case "scope":
    case "beginScope":
    case "endScope":
    case "endsParent":
    case "endsWithParent":
    case "endSameAsBegin":
    case "skip":
    case "excludeBegin":
    case "excludeEnd":
    case "returnBegin":
    case "returnEnd":
    case "__beforeBegin":
    case "parent":
    case "lexemes":
    case "keywords":
    case "beginKeywords":
    case "relevance":
    case "illegal":
    case "cachedVariants":
    case "subLanguage":
    case "isCompiled":
    case "label":
      return { key: key, value: JSON.stringify(value) };
  }

  return undefined;
}

function preprocessModeEntryValue(value: any): any {
  if (value instanceof RegExp) return value.source;
  return value;
}

interface MapEntry<K, V> {
  key: K;
  value: V;
}

function modeEntryCallback(key: string, value: any): MapEntry<string, string> {
  const code = value.toString();
  const dartFunctionName = callbackDictionary.get(code);

  return {
    key: key,
    value:
      dartFunctionName === undefined
        ? `throw Exception(r'''Callback not ported: ${code}, add its language to callbackDictionary.''')`
        : dartFunctionName,
  };
}

function preprocessModeEntryKey(key: string): string {
  switch (key) {
    case "on:begin":
      return "onBegin";
    case "on:end":
      return "onEnd";
  }
  return key;
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

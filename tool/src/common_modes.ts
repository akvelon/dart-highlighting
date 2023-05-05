import hljs, { Mode } from "highlight.js";

// Map of all modes exported from HighlightJS.
export const commonModes = importCommonModes();

function importCommonModes(): Map<string, Mode> {
  const allExported = Object.entries(hljs);
  const modeArray = allExported.filter(([key, value]) => isMode(key, value));
  return new Map<string, Mode>(modeArray as [string, Mode][]);
}

function isMode(key: string, value: any): boolean {
  // SCREAMING_CAPS only.
  if (!/^[A-Z][_0-9A-Z]*$/.test(key)) {
    return false;
  }

  if (key.endsWith("_RE")) {
    return false;
  }

  if (typeof value === "function") {
    return false;
  }

  return true;
}

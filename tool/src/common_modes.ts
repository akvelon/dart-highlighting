import hljs from "highlight.js";

import { Mode } from "./types.js";

// Map of all modes exported from HighlightJS.
export const commonModes = importCommonModes();

function importCommonModes(): Map<string, Mode> {
  return new Map<string, Mode>([
    ...(Object.entries(hljs).filter(([key, value]) => isMode(key, value)) as [
      string,
      Mode,
    ][]),
  ]);
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

import hljs from "highlight.js";
import mathematica from "highlight.js/lib/languages/mathematica";

import { expand, StringObject } from "./util.js"

export const callbackDictionary = new Map<string, string>([
  [
    hljs.END_SAME_AS_BEGIN({})["on:begin"]!.toString(),
    "endSameAsBeginOnBegin"
  ],
  [
    hljs.END_SAME_AS_BEGIN({})["on:end"]!.toString(),
    "endSameAsBeginOnEnd"
  ],
  [
    hljs.SHEBANG()["on:begin"]!.toString(),
    "shebangOnBegin",
  ],

  ...expand([
    mathematica,
  ].map(language => getLanguageCallbacks(language))),
]);

function getLanguageCallbacks(language: StringObject<any>): [string, string][] {
  // TODO: Extract all callbacks recursively.
  return [["a", "b"]];
}

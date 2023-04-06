import hljs from "highlight.js";
import mathematica from "highlight.js/lib/languages/mathematica";
import javascript from "highlight.js/lib/languages/javascript";
import typescript from "highlight.js/lib/languages/typescript";
import ruby from "highlight.js/lib/languages/ruby";

import { expand, StringObject } from "./util.js"
import _ from "lodash";

const commonCallbacks = new Map<string, string>(
  [
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
  ]
);

export const callbackDictionary = new Map<string, string>([
  ...commonCallbacks,

  ...expand([
    javascript(hljs),
    mathematica(hljs),
    ruby(hljs),
    typescript(hljs),
  ].map(language => getLanguageCallbacks(language))),
]);

function getLanguageCallbacks(language: StringObject<any>): [string, string][] {
  const result: [string, string][] = [];

  function addResult(k: string, v: string): void {
    if (!commonCallbacks.has(v.toString())) {
      result.push([v.toString(), k]);
    }
  };

  const visitedModes = new Set<StringObject<any>>();
  const languageName: string = language.name;
  const currentName: string[] = ['language'];
  if (languageName === undefined) {
    throw Error(`The language doesn't have a name: ${language}`);
  }

  currentName.push(languageName.toLowerCase());

  function iterate(language: StringObject<any>): void {
    if (visitedModes.has(language)) {
      return;
    }
    visitedModes.add(language);

    const entries = Object.entries(language);

    for (const item of entries) {
      const [k, v] = item;

      switch (k) {
        case "on:begin":
          addResult(
            [...currentName, "onBegin"].join("_"),
            v,
          );
          break;

        case "on:end":
          addResult(
            [...currentName, "onEnd"].join("_"),
            v,
          );
          break;

        case "starts":
          if (v === null) {
            throw Error("Starts must not be null");
          }
          currentName.push(k);
          iterate(v);
          currentName.pop();
          break;

        case "contains":
        case "variants":
          currentName.push(k);
          if (v === null) {
            throw Error("Contains and Variants must not be null");
          }

          if (Array.isArray(v)) {
            let index = 0;
            for (const i in v) {
              currentName.push(index.toString());
              const resultLengthBefore = result.length;
              iterate(v[i]);
              if (result.length != resultLengthBefore) {
                index++;
              }
              currentName.pop();
            }
            currentName.pop();
            break;
          }

          throw "should not be here";
      }
    }
  }

  iterate(language);

  return result;
}

import hljs from "highlight.js";
import mathematica from "highlight.js/lib/languages/mathematica";
import javascript from "highlight.js/lib/languages/javascript";
import typescript from "highlight.js/lib/languages/typescript";
import php from "highlight.js/lib/languages/php";
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
    php(hljs),
    ruby(hljs),
    typescript(hljs),
  ].map(language => getLanguageCallbacks(language))),
]);

function getLanguageCallbacks(language: StringObject<any>): [string, string][] {
  let result: [string, string][] = [];

  let objects = <StringObject<any>>[];
  let languageName: string = language.name;
  let currentName: string[] = ['k'];
  if (languageName !== undefined) {
    currentName.push(languageName.toLowerCase());
  }


  function iterate(language: StringObject<any>, callback: { (k: string, v: any): void }) {
    if (objects.includes(language)) {
      return;
    }
    else {
      objects.push(language);
    }

    if (language === null) {
      return;
    }

    let entries = Object.entries(language);

    for (const item of entries) {
      let [k, v] = item;

      switch (k) {
        case "on:begin":
          currentName.push('onBegin');
          callback(currentName.reduce((prev, current) => {
            return prev + "_" + current;
          }), v);
          currentName.pop();
          break;

        case "on:end":
          currentName.push('onEnd');
          callback("_" + currentName.reduce((prev, current) => {
            return prev + "_" + current;
          }), v);
          currentName.pop();
          break;

        case "starts":
          currentName.push(k);
          iterate(v, callback);
          currentName.pop();
          break;

        case "contains":
        case "variants":
          currentName.push(k);
          if (v === null) {
            currentName.pop();
            break;
          }

          if (Array.isArray(v)) {
            let index = 0;
            for (const i in v) {
              currentName.push(index.toString());
              let resultLength = result.length;
              iterate(v[i], callback);
              if (result.length != resultLength) {
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

  iterate(language, (k, v) => {
    if (!commonCallbacks.has(v.toString())) {
      result.push([v.toString(), k]);
    }
  });

  return result;
}

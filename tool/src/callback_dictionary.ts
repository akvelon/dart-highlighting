import hljs from "highlight.js";
import mathematica from "highlight.js/lib/languages/mathematica";
import javascript from "highlight.js/lib/languages/javascript";
import _ from "lodash";

import { Mode, ModeCallback } from "./types.js";

const commonCallbacks = new Map<string, string>([
  [hljs.END_SAME_AS_BEGIN({})["on:begin"]!.toString(), "endSameAsBeginOnBegin"],
  [hljs.END_SAME_AS_BEGIN({})["on:end"]!.toString(), "endSameAsBeginOnEnd"],
  [hljs.SHEBANG()["on:begin"]!.toString(), "shebangOnBegin"],
]);

class LanguagesCallbackParser {
  languages: Mode[];
  entries: Map<string, string>;

  constructor(languages: Mode[]) {
    this.languages = languages;
    this.entries = new Map<string, string>();

    this.process();
  }

  private process() {
    for (const language of this.languages) {
      const parser = new LanguageCallbackParser(language);
      parser.entries.forEach((dartFunctionName, code) =>
        this.entries.set(code, dartFunctionName),
      );
    }
  }
}

interface CallbackEntry {
  callback: ModeCallback;
  dartFunctionName: string;
}

class LanguageCallbackParser {
  language: Mode;
  visitedModes: Set<Mode>;
  entries: Map<string, string>;

  constructor(language: Mode) {
    this.language = language;
    this.visitedModes = new Set<Mode>();
    this.entries = new Map<string, string>();

    // TODO: Sort out types in Highlight.js, https://github.com/akvelon/dart-highlighting/issues/50
    this.iterate(language, `language_${(language as any).name.toLowerCase()}`);
  }

  private iterate(language: Mode, currentName: string): void {
    if (this.visitedModes.has(language)) {
      return;
    }
    this.visitedModes.add(language);

    for (const item of Object.entries(language)) {
      const [k, v] = item;

      switch (k) {
        case "on:begin":
          this.addEntry({
            callback: v,
            dartFunctionName: currentName + "_onBegin",
          });
          break;

        case "on:end":
          this.addEntry({
            callback: v,
            dartFunctionName: currentName + "_onEnd",
          });
          break;

        case "starts":
          if (v === null) {
            throw Error("Starts must not be null");
          }
          this.iterate(v, currentName + "_" + k);
          break;

        case "contains":
        case "variants":
          if (v === null) {
            throw Error("Contains and Variants must not be null");
          }

          if (Array.isArray(v)) {
            let index = 0;
            for (const i in v) {
              const sizeBefore = this.entries.size;
              this.iterate(v[i], `${currentName}_${k}_${index}`);
              if (this.entries.size !== sizeBefore) {
                index++;
              }
            }
            break;
          }

          throw "should not be here";
      }
    }
  }

  private addEntry(entry: CallbackEntry): void {
    const code = entry.callback.toString();

    if (!commonCallbacks.has(code)) {
      this.entries.set(code, entry.dartFunctionName);
    }
  }
}

export const callbackDictionary = new Map<string, string>([
  ...new LanguagesCallbackParser([
    mathematica(hljs),
    javascript(hljs),
  ]).entries,

  ...commonCallbacks,
]);

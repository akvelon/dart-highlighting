import hljs, { Language, Mode, ModeCallback } from "highlight.js";
import mathematica from "highlight.js/lib/languages/mathematica";
import javascript from "highlight.js/lib/languages/javascript";
import php from "highlight.js/lib/languages/php";
import _ from "lodash";

const commonCallbacks = new Map<string, string>([
  [hljs.END_SAME_AS_BEGIN({})["on:begin"]!.toString(), "endSameAsBeginOnBegin"],
  [hljs.END_SAME_AS_BEGIN({})["on:end"]!.toString(), "endSameAsBeginOnEnd"],
  [hljs.SHEBANG()["on:begin"]!.toString(), "shebangOnBegin"],
]);

class LanguagesCallbackParser {
  languages: Language[];
  entries: Map<string, string>;

  constructor(languages: Language[]) {
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

  constructor(language: Language) {
    this.language = language;
    this.visitedModes = new Set<Mode>();
    this.entries = new Map<string, string>();

    // Some languages do not have names: https://github.com/highlightjs/highlight.js/issues/3769
    // TODO: Use just name when that is fixed.
    this.iterate(
      language,
      `language_${(language.name || "undefined").toLowerCase()}`,
    );
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
    php(hljs),
  ]).entries,

  ...commonCallbacks,
]);

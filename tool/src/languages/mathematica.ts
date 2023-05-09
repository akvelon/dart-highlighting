import { readFileSync, writeFileSync } from "fs";

import { IGNORE_FOR_FILE_COMMENT, NOTICE_COMMENT } from "../common.js";

export function portMathematicaSpecific(): void {
  const fileName = "../node_modules/highlight.js/lib/languages/mathematica.js";
  const data = readFileSync(fileName, "utf8");

  const symbolSet = data.match(/SYSTEM_SYMBOLS\s*=\s*(\[[^\]]*\])/s);
  if (symbolSet === null || symbolSet[1] === null) {
    throw Error("Couldn't find symbol set of Mathematica.");
  }

  const output =
    NOTICE_COMMENT +
    IGNORE_FOR_FILE_COMMENT +
    "final SYSTEM_SYMBOLS = " +
    symbolSet[1].replace(/\[/, "{").replace(/\]/, "}").replace(/\s"/g, 'r"') +
    ";";

  writeFileSync(
    "../../highlighting/lib/src/languages/mathematica_symbols.g.dart",
    output,
  );
}

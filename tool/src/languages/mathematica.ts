import { readFileSync, writeFileSync } from "fs";

import { NOTICE_COMMENT } from "../common.js";

export function portMathematicaSpecific(): void {
    const fileName = '../node_modules/highlight.js/lib/languages/mathematica.js';
    const data = readFileSync(fileName, 'utf8');

    const symbolSet = data.match(/SYSTEM_SYMBOLS\s*=\s*(\[[^\]]*\])/s);
    if (symbolSet === null || symbolSet[1] === null) {
        throw Error("Couldn't find symbol set of Mathematica.");
    }

    const output =
        NOTICE_COMMENT
        + "final SYSTEM_SYMBOLS = "
        + symbolSet[1]
            .replace(/\[/, '{')
            .replace(/\]/, '}')
            .replace(/\s"/g, 'r"')
        + ";";
    writeFileSync("../../highlighting/lib/languages/common/mathematica_symbols.dart", output);
}

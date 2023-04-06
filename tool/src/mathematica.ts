import { readFile, writeFileSync } from "fs";
import { NOTICE_COMMENT } from "./common.js";

export async function portMathematicaSpecific(): Promise<any> {
    const fileName = '../node_modules/highlight.js/lib/languages/mathematica.js';

    readFile(fileName, 'utf8', (err: any, data: any) => {
        if (err) {
            throw Error("mathematica.js doesn't exist");
        }

        const symbolSet = data.match(/SYSTEM_SYMBOLS\s*=\s*(\[[^\]]*\])/s);
        const output =
            NOTICE_COMMENT
            + "final SYSTEM_SYMBOLS = "
            + symbolSet[1]
                .replace(/\[/, '{')
                .replace(/\]/, '}')
                .replace(/\s"/g, 'r"')
            + ";";
        writeFileSync("../../highlighting/lib/languages/common/mathematica_symbols.dart", output);
    });
}

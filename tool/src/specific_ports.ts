export async function portMathematicaSymbolsSet(): Promise<any> {
    const notice_comment = "// GENERATED CODE - DO NOT MODIFY BY HAND\n";
    const fs = await import('fs');
    const fileName = '../node_modules/highlight.js/lib/languages/mathematica.js';

    fs.readFile(fileName, 'utf8', (err: any, data: any) => {
        if (err) {
            throw Error("mathematica.js doesn't exist");
        }

        const symbolSet = data.match(/SYSTEM_SYMBOLS\s*=\s*(\[[^\]]*\])/s);
        const output =
            notice_comment
            + "final SYSTEM_SYMBOLS = "
            + symbolSet[1]
                .replace(/\[/, '{')
                .replace(/\]/, '}')
                .replace(/\s"/g, 'r"')
            + ";";
        fs.writeFileSync("../../highlighting/lib/languages/common/mathematica_symbols.dart", output);
    });
}

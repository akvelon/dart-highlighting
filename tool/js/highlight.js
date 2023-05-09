import CircularJSON from "circular-json";
import fs from "fs";
import hljs from "highlight.js"; // TODO: Do not register languages
import _ from "lodash";
import path from "path";

import { IGNORE_FOR_FILE_COMMENT, NOTICE_COMMENT } from "./common.js";
import { commonModes } from "./common_modes.js";
import { generateLanguage, generateMode, getCircularJsonTokens, getLodashGetKey } from './porting.js';

import { portMathematicaSpecific } from './languages/mathematica.js';

import { createRequire } from "module";
const require = createRequire(import.meta.url);

const dir = "../node_modules/highlight.js/lib/languages";

/**
 * highlighting/src/common_modes.dart
 */
export function portCommonModes() {
  let common = `
    ${NOTICE_COMMENT}
    ${IGNORE_FOR_FILE_COMMENT}
    // ignore_for_file: non_constant_identifier_names

    import 'mode.dart';`;

  commonModes.forEach((value, key) => {
    const nonCircularObj = getNonCircularObject(value, key);

    const mode = generateMode(nonCircularObj);
    common += `final ${key}=${mode};\n\n`;
  });

  fs.writeFileSync(
    `../../highlighting/lib/src/common_modes.g.dart`,
    common.replace(/\$/g, "\\$")
  );
}

function normalizeLanguageName(name) {
  if (/^\d/.test(name)) {
    name = "lang" + name;
  }
  return _.camelCase(name);
}

export function portAllModes() {
  let all = "import '../src/language.dart';";
  let builtin = "final builtinLanguages = <String, Language>{";
  let community = "final communityLanguages = <String, Language>{";

  const dirs = fs.readdirSync(dir);
  const items = [
    ...dirs.filter(file => !file.endsWith(".js.js")).map(file => ({
      name: path.basename(file, path.extname(file)),
      factory: require(path.resolve(dir, file)),
      community: false
    })),
  ];

  // ["json"]
  items.forEach(item => {
    let originalLang = item.name;
    let lang = normalizeLanguageName(originalLang);

    try {
      const circularObj = item.factory(hljs);
      const nonCircularObj = getNonCircularObject(circularObj);
      const tokens = getCircularJsonTokens(nonCircularObj);

      let refs = "refs: {";
      [...tokens]
        .sort((a, b) => (a < b ? 1 : -1))
        .forEach(token => {
          // ~contains~0 -> lang.contains[0]
          let lodashGetKey = getLodashGetKey(token);

          const mode = _.get(nonCircularObj, lodashGetKey);
          const data = generateMode(mode);
          refs += `'${token}': ${data},`;

          // The first occurrence of this Mode is the full object.
          // Replace it with the token.
          _.set(nonCircularObj, lodashGetKey, token);
        });
      refs += "}";

      const data = generateLanguage(nonCircularObj, item.name, refs);

      fs.writeFileSync(
        `../../highlighting/lib/languages/${originalLang}.dart`,
        `${NOTICE_COMMENT}
        ${IGNORE_FOR_FILE_COMMENT}
        import '../src/language_definition_common.dart';

        final ${lang}=${data};`
          .replace(/"hljs\.(.*?)"/g, "$1")
          .replace(/\$/g, "\\$")
      );

      all += `import '${originalLang}.dart';`;
      if (item.community) {
        community += `'${originalLang}': ${lang},`;
      } else {
        builtin += `'${originalLang}': ${lang},`;
      }
    } catch (err) {
      console.error(err);
    }
  });

  // all.dart
  builtin += "};";
  community += "};";
  all += community + builtin;
  all += "final allLanguages = {...builtinLanguages,...communityLanguages};";
  fs.writeFileSync(
    `../../highlighting/lib/languages/all.dart`,
    all.replace(/\$/g, "\\$")
  );
}

function getNonCircularObject(circularObject, name = "") {
  const str = CircularJSON.stringify(circularObject, (k, v) => {
    // console.log(v);
    // RegExp -> string
    if (v instanceof RegExp) {
      return v.source;
    }

    // hljs common mode -> string
    for (let entry of commonModes) {
      if (entry[1] === v) {
        if (entry[0] === name) {
          return v;
        }

        return entry[0];
      }
    }

    if (k === "keywords" || Array.isArray(v)) {
      return _.clone(v);
    }

    if (v instanceof Function) {
      return v.toString();
    }

    return v;
  });

  return JSON.parse(str);
}

portMathematicaSpecific();

portCommonModes();
portAllModes();

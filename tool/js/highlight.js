import CircularJSON from "circular-json";
import fs from "fs";
import hljs from "highlight.js"; // TODO: Do not register languages
import _ from "lodash";
import path from "path";

import { callbackDictionary } from "./callback_dictionary.js";
import { NOTICE_COMMENT } from "./common.js";
import { commonModes } from "./common_modes.js";
import { expandRefs, generateMode, getLodashGetKey } from './porting.js';

import { portMathematicaSpecific } from './languages/mathematica.js';

import { createRequire } from "module";
const require = createRequire(import.meta.url);

const dir = "../node_modules/highlight.js/lib/languages";

/**
 * highlighting/src/common_modes.dart
 */
export function portCommonModes() {
  let common = `${NOTICE_COMMENT}import 'mode.dart';`;
  commonModes.forEach((value, key) => {
    let nonCircularObj = getNonCircularObject(value, key);

    const mode = generateMode(nonCircularObj, true, new Set());
    common += `final ${key}=${mode};`;
  });

  fs.writeFileSync(
    `../../highlighting/lib/src/common_modes.dart`,
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
  let all = "import '../src/mode.dart';";
  let builtin = "final builtinLanguages = <String, Mode>{";
  let community = "final communityLanguages = <String, Mode>{";

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
      const nonCircularObj = getNonCircularObject(item.factory(hljs));
      const commonSet = expandRefs(nonCircularObj);

      generateMode(nonCircularObj, true, commonSet);

      var commonStr = "refs: {";
      [...commonSet]
        .sort((a, b) => (a < b ? 1 : -1))
        .forEach(commonKey => {
          // console.log(commonKey);

          // ~contains~0 -> lang.contains[0]
          let lodashGetKey = getLodashGetKey(commonKey);

          const data = generateMode(_.get(nonCircularObj, lodashGetKey), true, new Set());
          commonStr += `'${commonKey}': ${data},`;

          // Set the first ref
          _.set(nonCircularObj, lodashGetKey, commonKey);
        });
      commonStr += "},";

      const data = generateMode(nonCircularObj, true, commonSet);

      fs.writeFileSync(
        `../../highlighting/lib/languages/${originalLang}.dart`,
        `${NOTICE_COMMENT}
        import '../src/language_definition_parts.dart';

        final ${lang}=Mode(${commonStr} ${data.slice(
          5
        )};`
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

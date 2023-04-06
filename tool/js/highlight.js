import CircularJSON from "circular-json";
import fs from "fs";
import hljs from "highlight.js"; // TODO: Do not register languages
import _ from "lodash";
import path from "path";

import { callbackDictionary } from "./callback_dictionary.js";
import { NOTICE_COMMENT } from "./common.js";
import { expandRefs, getLodashGetKey } from './porting.js';
import { portMathematicaSpecific } from './mathematica.js';

import { createRequire } from "module";
const require = createRequire(import.meta.url);

const dir = "../node_modules/highlight.js/lib/languages";
hljs.registerLanguage("cpp", require(path.resolve(dir, "cpp"))); // exports

const modeEntries = Object.entries(hljs).filter(
  ([k]) =>
    /^[A-Z]/.test(k) && !k.endsWith("_RE") && typeof hljs[k] !== "function" && k !== "HighlightJS"
);

function generateMode(obj, matchCommonKey = true, commonSet = new Set()) {
  if (typeof obj === "string") {
    if (matchCommonKey) {
      for (const entry of modeEntries) {
        if (entry[0] === obj) {
          return entry[0];
        }
      }
    }

    if (obj === "self") {
      return "Mode(self:true)";
    }

    if (obj.startsWith("~")) {
      commonSet.add(obj);
      return `Mode(ref: '${obj}')`;
    }

    throw new Error("should not be here: " + obj);
  }

  if (obj == null) {
    return JSON.stringify(null);
  }

  let code = "Mode(";
  Object.entries(obj).forEach(([k, v], i, arr) => {
    if (k === "exports") return; // CPP

    if (v instanceof RegExp) v = v.source;
    if (k === "end" && typeof v === "boolean") v = v.toString();
    if (k === "subLanguage" && typeof v === "string") {
      v = [v];
    }

    switch (k) {
      case "on:begin":
        if (callbackDictionary.has(v.toString())) {
          code += `onBegin: ${callbackDictionary.get(v.toString())}`;
          break;
        }
        code += `onBegin: (match, resp) => throw Exception(r'''Callback not ported: ${v.toString().replace(/'/g, "r'")}''')`;
        break;
      case "on:end":
        if (callbackDictionary.has(v.toString())) {
          code += `onEnd: ${callbackDictionary.get(v.toString())}`;
          break;
        }
        code += `onEnd: (match, resp) => throw Exception(r'''Callback not ported: ${v.toString().replace(/'/g, "r'")}''')`;
        break;

      case "starts":
        code += `${k}: ${generateMode(v, true, commonSet)}`;
        break;
      case "contains":
      case "variants":
        if (v == null) {
          code += `${k}: null`;
        } else if (Array.isArray(v)) {
          const arr = v.map(m => {
            return generateMode(m, true, commonSet);
          });
          code += `${k}: [${arr.join(",")}]`;
        } else if (typeof v === "string") {
          return `Mode(ref: '${v}')`;
        } else {
          throw "should not be here";
        }
        break;
      default:
        code += `${k}: ${JSON.stringify(v)}`;
    }

    if (i < arr.length - 1) {
      code += ",";
    }
  });
  code += ")";
  return code;
}

/**
 * highlighting/src/common_modes.dart
 */
export function commonModes() {
  let common = `${NOTICE_COMMENT}import 'mode.dart';`;
  modeEntries.forEach(([key, value]) => {
    let [nonCircularObj, containsCallbacks] = getNonCircularObject(value, key);

    common += `final ${key}=${generateMode(nonCircularObj, true)};`;
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

export function allModes() {
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
      const [nonCircularObj, containsCallbacks] = getNonCircularObject(item.factory(hljs));
      const commonSet = expandRefs(nonCircularObj);

      generateMode(nonCircularObj, true, commonSet);

      var commonStr = "refs: {";
      [...commonSet]
        .sort((a, b) => (a < b ? 1 : -1))
        .forEach(commonKey => {
          // console.log(commonKey);

          // ~contains~0 -> lang.contains[0]
          let lodashGetKey = getLodashGetKey(commonKey);

          const data = generateMode(_.get(nonCircularObj, lodashGetKey), true);
          commonStr += `'${commonKey}': ${data},`;

          // Set the first ref
          _.set(nonCircularObj, lodashGetKey, commonKey);
        });
      commonStr += "},";

      const data = generateMode(nonCircularObj, true);

      fs.writeFileSync(
        `../../highlighting/lib/languages/${originalLang}.dart`,
        `${NOTICE_COMMENT}
        import '../src/mode.dart';
        import '../src/common_modes.dart';
        ${containsCallbacks ? "import 'package:highlighting/languages/common/callbacks.dart';" : ""}
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
  let containsCallbacks = false;
  const str = CircularJSON.stringify(circularObject, (k, v) => {
    // console.log(v);
    // RegExp -> string
    if (v instanceof RegExp) {
      return v.source;
    }

    // hljs common mode -> string
    for (let entry of modeEntries) {
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
      containsCallbacks = true;
      return v.toString();
    }

    return v;
  });

  return [JSON.parse(str), containsCallbacks];
}

portMathematicaSpecific();
commonModes();
allModes();

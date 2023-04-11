// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final livescript = Mode(
  refs: {
    '~contains~2~variants~2~contains~2': Mode(
      className: "subst",
      begin: "#[A-Za-z\$_]",
      end: "(?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*",
      keywords: {
        "keyword": [
          "as",
          "in",
          "of",
          "if",
          "for",
          "while",
          "finally",
          "var",
          "new",
          "function",
          "do",
          "return",
          "void",
          "else",
          "break",
          "catch",
          "instanceof",
          "with",
          "throw",
          "case",
          "default",
          "try",
          "switch",
          "continue",
          "typeof",
          "delete",
          "let",
          "yield",
          "const",
          "class",
          "debugger",
          "async",
          "await",
          "static",
          "import",
          "from",
          "export",
          "extends",
          "then",
          "unless",
          "until",
          "loop",
          "of",
          "by",
          "when",
          "and",
          "or",
          "is",
          "isnt",
          "not",
          "it",
          "that",
          "otherwise",
          "from",
          "to",
          "til",
          "fallthrough",
          "case",
          "enum",
          "native",
          "list",
          "map",
          "__hasProp",
          "__extends",
          "__slice",
          "__bind",
          "__indexOf"
        ],
        "literal": [
          "true",
          "false",
          "null",
          "undefined",
          "NaN",
          "Infinity",
          "yes",
          "no",
          "on",
          "off",
          "it",
          "that",
          "void"
        ],
        "built_in": [
          "setInterval",
          "setTimeout",
          "clearInterval",
          "clearTimeout",
          "require",
          "exports",
          "eval",
          "isFinite",
          "isNaN",
          "parseFloat",
          "parseInt",
          "decodeURI",
          "decodeURIComponent",
          "encodeURI",
          "encodeURIComponent",
          "escape",
          "unescape",
          "Object",
          "Function",
          "Boolean",
          "Symbol",
          "Math",
          "Date",
          "Number",
          "BigInt",
          "String",
          "RegExp",
          "Array",
          "Float32Array",
          "Float64Array",
          "Int8Array",
          "Uint8Array",
          "Uint8ClampedArray",
          "Int16Array",
          "Int32Array",
          "Uint16Array",
          "Uint32Array",
          "BigInt64Array",
          "BigUint64Array",
          "Set",
          "Map",
          "WeakSet",
          "WeakMap",
          "ArrayBuffer",
          "SharedArrayBuffer",
          "Atomics",
          "DataView",
          "JSON",
          "Promise",
          "Generator",
          "GeneratorFunction",
          "AsyncFunction",
          "Reflect",
          "Proxy",
          "Intl",
          "WebAssembly",
          "Error",
          "EvalError",
          "InternalError",
          "RangeError",
          "ReferenceError",
          "SyntaxError",
          "TypeError",
          "URIError",
          "npm",
          "print"
        ]
      },
    ),
    '~contains~2~variants~2~contains~1~contains~5': Mode(
      begin: "``",
      end: "``",
      excludeBegin: true,
      excludeEnd: true,
      subLanguage: ["javascript"],
    ),
    '~contains~2~variants~2~contains~1~contains~4': Mode(
      begin: "@[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*",
    ),
    '~contains~2~variants~2~contains~1~contains~3': Mode(
      className: "regexp",
      variants: [
        Mode(
          begin: "//",
          end: "//[gim]*",
          contains: [
            Mode(ref: '~contains~2~variants~2~contains~1'),
            HASH_COMMENT_MODE,
          ],
        ),
        Mode(
          begin: "\\/(?![ *])(\\\\.|[^\\\\\\n])*?\\/[gim]*(?=\\W)",
        ),
      ],
    ),
    '~contains~2~variants~2~contains~1': Mode(
      className: "subst",
      begin: "#\\{",
      end: "\\}",
      keywords: {
        "keyword": [
          "as",
          "in",
          "of",
          "if",
          "for",
          "while",
          "finally",
          "var",
          "new",
          "function",
          "do",
          "return",
          "void",
          "else",
          "break",
          "catch",
          "instanceof",
          "with",
          "throw",
          "case",
          "default",
          "try",
          "switch",
          "continue",
          "typeof",
          "delete",
          "let",
          "yield",
          "const",
          "class",
          "debugger",
          "async",
          "await",
          "static",
          "import",
          "from",
          "export",
          "extends",
          "then",
          "unless",
          "until",
          "loop",
          "of",
          "by",
          "when",
          "and",
          "or",
          "is",
          "isnt",
          "not",
          "it",
          "that",
          "otherwise",
          "from",
          "to",
          "til",
          "fallthrough",
          "case",
          "enum",
          "native",
          "list",
          "map",
          "__hasProp",
          "__extends",
          "__slice",
          "__bind",
          "__indexOf"
        ],
        "literal": [
          "true",
          "false",
          "null",
          "undefined",
          "NaN",
          "Infinity",
          "yes",
          "no",
          "on",
          "off",
          "it",
          "that",
          "void"
        ],
        "built_in": [
          "setInterval",
          "setTimeout",
          "clearInterval",
          "clearTimeout",
          "require",
          "exports",
          "eval",
          "isFinite",
          "isNaN",
          "parseFloat",
          "parseInt",
          "decodeURI",
          "decodeURIComponent",
          "encodeURI",
          "encodeURIComponent",
          "escape",
          "unescape",
          "Object",
          "Function",
          "Boolean",
          "Symbol",
          "Math",
          "Date",
          "Number",
          "BigInt",
          "String",
          "RegExp",
          "Array",
          "Float32Array",
          "Float64Array",
          "Int8Array",
          "Uint8Array",
          "Uint8ClampedArray",
          "Int16Array",
          "Int32Array",
          "Uint16Array",
          "Uint32Array",
          "BigInt64Array",
          "BigUint64Array",
          "Set",
          "Map",
          "WeakSet",
          "WeakMap",
          "ArrayBuffer",
          "SharedArrayBuffer",
          "Atomics",
          "DataView",
          "JSON",
          "Promise",
          "Generator",
          "GeneratorFunction",
          "AsyncFunction",
          "Reflect",
          "Proxy",
          "Intl",
          "WebAssembly",
          "Error",
          "EvalError",
          "InternalError",
          "RangeError",
          "ReferenceError",
          "SyntaxError",
          "TypeError",
          "URIError",
          "npm",
          "print"
        ]
      },
      contains: [
        BINARY_NUMBER_MODE,
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~2~variants~2~contains~1~contains~3'),
        Mode(ref: '~contains~2~variants~2~contains~1~contains~4'),
        Mode(ref: '~contains~2~variants~2~contains~1~contains~5'),
      ],
    ),
    '~contains~2': Mode(
      className: "string",
      variants: [
        Mode(
          begin: "'''",
          end: "'''",
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
        Mode(
          begin: "'",
          end: "'",
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
        Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~2~variants~2~contains~1'),
            Mode(ref: '~contains~2~variants~2~contains~2'),
          ],
        ),
        Mode(
          begin: "\"",
          end: "\"",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~2~variants~2~contains~1'),
            Mode(ref: '~contains~2~variants~2~contains~2'),
          ],
        ),
        Mode(
          begin: "\\\\",
          end: "(\\s|\$)",
          excludeEnd: true,
        ),
      ],
    ),
    '~contains~1': Mode(
      className: "number",
      begin:
          "(\\b0[xX][a-fA-F0-9_]+)|(\\b\\d(\\d|_\\d)*(\\.(\\d(\\d|_\\d)*)?)?(_*[eE]([-+]\\d(_\\d|\\d)*)?)?[_a-z]*)",
      relevance: 0,
      starts: Mode(
        end: "(\\s*/)?",
        relevance: 0,
      ),
    ),
  },
  name: "LiveScript",
  aliases: ["ls"],
  keywords: {
    "keyword": [
      "as",
      "in",
      "of",
      "if",
      "for",
      "while",
      "finally",
      "var",
      "new",
      "function",
      "do",
      "return",
      "void",
      "else",
      "break",
      "catch",
      "instanceof",
      "with",
      "throw",
      "case",
      "default",
      "try",
      "switch",
      "continue",
      "typeof",
      "delete",
      "let",
      "yield",
      "const",
      "class",
      "debugger",
      "async",
      "await",
      "static",
      "import",
      "from",
      "export",
      "extends",
      "then",
      "unless",
      "until",
      "loop",
      "of",
      "by",
      "when",
      "and",
      "or",
      "is",
      "isnt",
      "not",
      "it",
      "that",
      "otherwise",
      "from",
      "to",
      "til",
      "fallthrough",
      "case",
      "enum",
      "native",
      "list",
      "map",
      "__hasProp",
      "__extends",
      "__slice",
      "__bind",
      "__indexOf"
    ],
    "literal": [
      "true",
      "false",
      "null",
      "undefined",
      "NaN",
      "Infinity",
      "yes",
      "no",
      "on",
      "off",
      "it",
      "that",
      "void"
    ],
    "built_in": [
      "setInterval",
      "setTimeout",
      "clearInterval",
      "clearTimeout",
      "require",
      "exports",
      "eval",
      "isFinite",
      "isNaN",
      "parseFloat",
      "parseInt",
      "decodeURI",
      "decodeURIComponent",
      "encodeURI",
      "encodeURIComponent",
      "escape",
      "unescape",
      "Object",
      "Function",
      "Boolean",
      "Symbol",
      "Math",
      "Date",
      "Number",
      "BigInt",
      "String",
      "RegExp",
      "Array",
      "Float32Array",
      "Float64Array",
      "Int8Array",
      "Uint8Array",
      "Uint8ClampedArray",
      "Int16Array",
      "Int32Array",
      "Uint16Array",
      "Uint32Array",
      "BigInt64Array",
      "BigUint64Array",
      "Set",
      "Map",
      "WeakSet",
      "WeakMap",
      "ArrayBuffer",
      "SharedArrayBuffer",
      "Atomics",
      "DataView",
      "JSON",
      "Promise",
      "Generator",
      "GeneratorFunction",
      "AsyncFunction",
      "Reflect",
      "Proxy",
      "Intl",
      "WebAssembly",
      "Error",
      "EvalError",
      "InternalError",
      "RangeError",
      "ReferenceError",
      "SyntaxError",
      "TypeError",
      "URIError",
      "npm",
      "print"
    ]
  },
  illegal: "\\/\\*",
  contains: [
    BINARY_NUMBER_MODE,
    Mode(ref: '~contains~1'),
    Mode(ref: '~contains~2'),
    Mode(ref: '~contains~2~variants~2~contains~1~contains~3'),
    Mode(ref: '~contains~2~variants~2~contains~1~contains~4'),
    Mode(ref: '~contains~2~variants~2~contains~1~contains~5'),
    Mode(
      scope: "comment",
      begin: "\\/\\*",
      end: "\\*\\/",
      contains: [
        Mode(
          scope: "doctag",
          begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
          excludeBegin: true,
          relevance: 0,
        ),
        Mode(
          begin:
              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
        ),
      ],
    ),
    HASH_COMMENT_MODE,
    Mode(
      begin: "(#=>|=>|\\|>>|-?->|!->)",
    ),
    Mode(
      className: "function",
      contains: [
        Mode(
          scope: "title",
          begin: "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*",
          relevance: 0,
        ),
        Mode(
          className: "params",
          begin: "\\(",
          returnBegin: true,
          contains: [
            Mode(
              begin: "\\(",
              end: "\\)",
              keywords: {
                "keyword": [
                  "as",
                  "in",
                  "of",
                  "if",
                  "for",
                  "while",
                  "finally",
                  "var",
                  "new",
                  "function",
                  "do",
                  "return",
                  "void",
                  "else",
                  "break",
                  "catch",
                  "instanceof",
                  "with",
                  "throw",
                  "case",
                  "default",
                  "try",
                  "switch",
                  "continue",
                  "typeof",
                  "delete",
                  "let",
                  "yield",
                  "const",
                  "class",
                  "debugger",
                  "async",
                  "await",
                  "static",
                  "import",
                  "from",
                  "export",
                  "extends",
                  "then",
                  "unless",
                  "until",
                  "loop",
                  "of",
                  "by",
                  "when",
                  "and",
                  "or",
                  "is",
                  "isnt",
                  "not",
                  "it",
                  "that",
                  "otherwise",
                  "from",
                  "to",
                  "til",
                  "fallthrough",
                  "case",
                  "enum",
                  "native",
                  "list",
                  "map",
                  "__hasProp",
                  "__extends",
                  "__slice",
                  "__bind",
                  "__indexOf"
                ],
                "literal": [
                  "true",
                  "false",
                  "null",
                  "undefined",
                  "NaN",
                  "Infinity",
                  "yes",
                  "no",
                  "on",
                  "off",
                  "it",
                  "that",
                  "void"
                ],
                "built_in": [
                  "setInterval",
                  "setTimeout",
                  "clearInterval",
                  "clearTimeout",
                  "require",
                  "exports",
                  "eval",
                  "isFinite",
                  "isNaN",
                  "parseFloat",
                  "parseInt",
                  "decodeURI",
                  "decodeURIComponent",
                  "encodeURI",
                  "encodeURIComponent",
                  "escape",
                  "unescape",
                  "Object",
                  "Function",
                  "Boolean",
                  "Symbol",
                  "Math",
                  "Date",
                  "Number",
                  "BigInt",
                  "String",
                  "RegExp",
                  "Array",
                  "Float32Array",
                  "Float64Array",
                  "Int8Array",
                  "Uint8Array",
                  "Uint8ClampedArray",
                  "Int16Array",
                  "Int32Array",
                  "Uint16Array",
                  "Uint32Array",
                  "BigInt64Array",
                  "BigUint64Array",
                  "Set",
                  "Map",
                  "WeakSet",
                  "WeakMap",
                  "ArrayBuffer",
                  "SharedArrayBuffer",
                  "Atomics",
                  "DataView",
                  "JSON",
                  "Promise",
                  "Generator",
                  "GeneratorFunction",
                  "AsyncFunction",
                  "Reflect",
                  "Proxy",
                  "Intl",
                  "WebAssembly",
                  "Error",
                  "EvalError",
                  "InternalError",
                  "RangeError",
                  "ReferenceError",
                  "SyntaxError",
                  "TypeError",
                  "URIError",
                  "npm",
                  "print"
                ]
              },
              contains: [
                Mode(self: true),
                BINARY_NUMBER_MODE,
                Mode(ref: '~contains~1'),
                Mode(ref: '~contains~2'),
                Mode(ref: '~contains~2~variants~2~contains~1~contains~3'),
                Mode(ref: '~contains~2~variants~2~contains~1~contains~4'),
                Mode(ref: '~contains~2~variants~2~contains~1~contains~5'),
              ],
            ),
          ],
        ),
      ],
      returnBegin: true,
      variants: [
        Mode(
          begin:
              "([A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*\\s*(?:=|:=)\\s*)?(\\(.*\\)\\s*)?\\B->\\*?",
          end: "->\\*?",
        ),
        Mode(
          begin:
              "([A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*\\s*(?:=|:=)\\s*)?!?(\\(.*\\)\\s*)?\\B[-\\x7e]{1,2}>\\*?",
          end: "[-\\x7e]{1,2}>\\*?",
        ),
        Mode(
          begin:
              "([A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*\\s*(?:=|:=)\\s*)?(\\(.*\\)\\s*)?\\B!?[-\\x7e]{1,2}>\\*?",
          end: "!?[-\\x7e]{1,2}>\\*?",
        ),
      ],
    ),
    Mode(
      variants: [
        Mode(
          match: [
            "class\\s+",
            "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*",
            "\\s+extends\\s+",
            "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*"
          ],
        ),
        Mode(
          match: [
            "class\\s+",
            "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*"
          ],
        ),
      ],
      scope: {"2": "title.class", "4": "title.class.inherited"},
      keywords: {
        "keyword": [
          "as",
          "in",
          "of",
          "if",
          "for",
          "while",
          "finally",
          "var",
          "new",
          "function",
          "do",
          "return",
          "void",
          "else",
          "break",
          "catch",
          "instanceof",
          "with",
          "throw",
          "case",
          "default",
          "try",
          "switch",
          "continue",
          "typeof",
          "delete",
          "let",
          "yield",
          "const",
          "class",
          "debugger",
          "async",
          "await",
          "static",
          "import",
          "from",
          "export",
          "extends",
          "then",
          "unless",
          "until",
          "loop",
          "of",
          "by",
          "when",
          "and",
          "or",
          "is",
          "isnt",
          "not",
          "it",
          "that",
          "otherwise",
          "from",
          "to",
          "til",
          "fallthrough",
          "case",
          "enum",
          "native",
          "list",
          "map",
          "__hasProp",
          "__extends",
          "__slice",
          "__bind",
          "__indexOf"
        ],
        "literal": [
          "true",
          "false",
          "null",
          "undefined",
          "NaN",
          "Infinity",
          "yes",
          "no",
          "on",
          "off",
          "it",
          "that",
          "void"
        ],
        "built_in": [
          "setInterval",
          "setTimeout",
          "clearInterval",
          "clearTimeout",
          "require",
          "exports",
          "eval",
          "isFinite",
          "isNaN",
          "parseFloat",
          "parseInt",
          "decodeURI",
          "decodeURIComponent",
          "encodeURI",
          "encodeURIComponent",
          "escape",
          "unescape",
          "Object",
          "Function",
          "Boolean",
          "Symbol",
          "Math",
          "Date",
          "Number",
          "BigInt",
          "String",
          "RegExp",
          "Array",
          "Float32Array",
          "Float64Array",
          "Int8Array",
          "Uint8Array",
          "Uint8ClampedArray",
          "Int16Array",
          "Int32Array",
          "Uint16Array",
          "Uint32Array",
          "BigInt64Array",
          "BigUint64Array",
          "Set",
          "Map",
          "WeakSet",
          "WeakMap",
          "ArrayBuffer",
          "SharedArrayBuffer",
          "Atomics",
          "DataView",
          "JSON",
          "Promise",
          "Generator",
          "GeneratorFunction",
          "AsyncFunction",
          "Reflect",
          "Proxy",
          "Intl",
          "WebAssembly",
          "Error",
          "EvalError",
          "InternalError",
          "RangeError",
          "ReferenceError",
          "SyntaxError",
          "TypeError",
          "URIError",
          "npm",
          "print"
        ]
      },
    ),
    Mode(
      begin: "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*:",
      end: ":",
      returnBegin: true,
      returnEnd: true,
      relevance: 0,
    ),
  ],
);

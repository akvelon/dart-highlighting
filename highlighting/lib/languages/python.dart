// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final python = Mode(
  refs: {
    '~contains~7~contains~0': Mode(
      className: "params",
      variants: [
        Mode(
          className: overwritingNullString,
          begin: "\\(\\s*\\)",
          skip: true,
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          excludeBegin: true,
          excludeEnd: true,
          keywords: {
            "\$pattern": "[A-Za-z]\\w+|__\\w+__",
            "keyword": [
              "and",
              "as",
              "assert",
              "async",
              "await",
              "break",
              "case",
              "class",
              "continue",
              "def",
              "del",
              "elif",
              "else",
              "except",
              "finally",
              "for",
              "from",
              "global",
              "if",
              "import",
              "in",
              "is",
              "lambda",
              "match",
              "nonlocal|10",
              "not",
              "or",
              "pass",
              "raise",
              "return",
              "try",
              "while",
              "with",
              "yield"
            ],
            "built_in": [
              "__import__",
              "abs",
              "all",
              "any",
              "ascii",
              "bin",
              "bool",
              "breakpoint",
              "bytearray",
              "bytes",
              "callable",
              "chr",
              "classmethod",
              "compile",
              "complex",
              "delattr",
              "dict",
              "dir",
              "divmod",
              "enumerate",
              "eval",
              "exec",
              "filter",
              "float",
              "format",
              "frozenset",
              "getattr",
              "globals",
              "hasattr",
              "hash",
              "help",
              "hex",
              "id",
              "input",
              "int",
              "isinstance",
              "issubclass",
              "iter",
              "len",
              "list",
              "locals",
              "map",
              "max",
              "memoryview",
              "min",
              "next",
              "object",
              "oct",
              "open",
              "ord",
              "pow",
              "print",
              "property",
              "range",
              "repr",
              "reversed",
              "round",
              "set",
              "setattr",
              "slice",
              "sorted",
              "staticmethod",
              "str",
              "sum",
              "super",
              "tuple",
              "type",
              "vars",
              "zip"
            ],
            "literal": [
              "__debug__",
              "Ellipsis",
              "False",
              "None",
              "NotImplemented",
              "True"
            ],
            "type": [
              "Any",
              "Callable",
              "Coroutine",
              "Dict",
              "List",
              "Literal",
              "Generic",
              "Optional",
              "Sequence",
              "Set",
              "Tuple",
              "Type",
              "Union"
            ]
          },
          contains: [
            Mode(self: true),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~4'),
            HASH_COMMENT_MODE,
          ],
        ),
      ],
    ),
    '~contains~4~variants~2~contains~3': Mode(
      className: "subst",
      begin: "\\{",
      end: "\\}",
      keywords: {
        "\$pattern": "[A-Za-z]\\w+|__\\w+__",
        "keyword": [
          "and",
          "as",
          "assert",
          "async",
          "await",
          "break",
          "case",
          "class",
          "continue",
          "def",
          "del",
          "elif",
          "else",
          "except",
          "finally",
          "for",
          "from",
          "global",
          "if",
          "import",
          "in",
          "is",
          "lambda",
          "match",
          "nonlocal|10",
          "not",
          "or",
          "pass",
          "raise",
          "return",
          "try",
          "while",
          "with",
          "yield"
        ],
        "built_in": [
          "__import__",
          "abs",
          "all",
          "any",
          "ascii",
          "bin",
          "bool",
          "breakpoint",
          "bytearray",
          "bytes",
          "callable",
          "chr",
          "classmethod",
          "compile",
          "complex",
          "delattr",
          "dict",
          "dir",
          "divmod",
          "enumerate",
          "eval",
          "exec",
          "filter",
          "float",
          "format",
          "frozenset",
          "getattr",
          "globals",
          "hasattr",
          "hash",
          "help",
          "hex",
          "id",
          "input",
          "int",
          "isinstance",
          "issubclass",
          "iter",
          "len",
          "list",
          "locals",
          "map",
          "max",
          "memoryview",
          "min",
          "next",
          "object",
          "oct",
          "open",
          "ord",
          "pow",
          "print",
          "property",
          "range",
          "repr",
          "reversed",
          "round",
          "set",
          "setattr",
          "slice",
          "sorted",
          "staticmethod",
          "str",
          "sum",
          "super",
          "tuple",
          "type",
          "vars",
          "zip"
        ],
        "literal": [
          "__debug__",
          "Ellipsis",
          "False",
          "None",
          "NotImplemented",
          "True"
        ],
        "type": [
          "Any",
          "Callable",
          "Coroutine",
          "Dict",
          "List",
          "Literal",
          "Generic",
          "Optional",
          "Sequence",
          "Set",
          "Tuple",
          "Type",
          "Union"
        ]
      },
      illegal: "#",
      contains: [
        Mode(ref: '~contains~4'),
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~0'),
      ],
    ),
    '~contains~4~variants~2~contains~2': Mode(
      begin: "\\{\\{",
      relevance: 0,
    ),
    '~contains~4': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      variants: [
        Mode(
          begin: "([uU]|[bB]|[rR]|[bB][rR]|[rR][bB])?'''",
          end: "'''",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~0'),
          ],
          relevance: 10,
        ),
        Mode(
          begin: "([uU]|[bB]|[rR]|[bB][rR]|[rR][bB])?\"\"\"",
          end: "\"\"\"",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~0'),
          ],
          relevance: 10,
        ),
        Mode(
          begin: "([fF][rR]|[rR][fF]|[fF])'''",
          end: "'''",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~4~variants~2~contains~2'),
            Mode(ref: '~contains~4~variants~2~contains~3'),
          ],
        ),
        Mode(
          begin: "([fF][rR]|[rR][fF]|[fF])\"\"\"",
          end: "\"\"\"",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~4~variants~2~contains~2'),
            Mode(ref: '~contains~4~variants~2~contains~3'),
          ],
        ),
        Mode(
          begin: "([uU]|[rR])'",
          end: "'",
          relevance: 10,
        ),
        Mode(
          begin: "([uU]|[rR])\"",
          end: "\"",
          relevance: 10,
        ),
        Mode(
          begin: "([bB]|[bB][rR]|[rR][bB])'",
          end: "'",
        ),
        Mode(
          begin: "([bB]|[bB][rR]|[rR][bB])\"",
          end: "\"",
        ),
        Mode(
          begin: "([fF][rR]|[rR][fF]|[fF])'",
          end: "'",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~4~variants~2~contains~2'),
            Mode(ref: '~contains~4~variants~2~contains~3'),
          ],
        ),
        Mode(
          begin: "([fF][rR]|[rR][fF]|[fF])\"",
          end: "\"",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~4~variants~2~contains~2'),
            Mode(ref: '~contains~4~variants~2~contains~3'),
          ],
        ),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE,
      ],
    ),
    '~contains~1': Mode(
      className: "number",
      relevance: 0,
      variants: [
        Mode(
          begin:
              "(\\b([0-9](_?[0-9])*)|((\\b([0-9](_?[0-9])*))?\\.([0-9](_?[0-9])*)|\\b([0-9](_?[0-9])*)\\.))[eE][+-]?([0-9](_?[0-9])*)[jJ]?(?=\\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)",
        ),
        Mode(
          begin:
              "((\\b([0-9](_?[0-9])*))?\\.([0-9](_?[0-9])*)|\\b([0-9](_?[0-9])*)\\.)[jJ]?",
        ),
        Mode(
          begin:
              "\\b([1-9](_?[0-9])*|0+(_?0)*)[lLjJ]?(?=\\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)",
        ),
        Mode(
          begin:
              "\\b0[bB](_?[01])+[lL]?(?=\\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)",
        ),
        Mode(
          begin:
              "\\b0[oO](_?[0-7])+[lL]?(?=\\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)",
        ),
        Mode(
          begin:
              "\\b0[xX](_?[0-9a-fA-F])+[lL]?(?=\\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)",
        ),
        Mode(
          begin:
              "\\b([0-9](_?[0-9])*)[jJ](?=\\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)",
        ),
      ],
    ),
    '~contains~0': Mode(
      className: "meta",
      begin: "^(>>>|\\.\\.\\.) ",
    ),
  },
  name: "Python",
  aliases: ["py", "gyp", "ipython"],
  unicodeRegex: true,
  keywords: {
    "\$pattern": "[A-Za-z]\\w+|__\\w+__",
    "keyword": [
      "and",
      "as",
      "assert",
      "async",
      "await",
      "break",
      "case",
      "class",
      "continue",
      "def",
      "del",
      "elif",
      "else",
      "except",
      "finally",
      "for",
      "from",
      "global",
      "if",
      "import",
      "in",
      "is",
      "lambda",
      "match",
      "nonlocal|10",
      "not",
      "or",
      "pass",
      "raise",
      "return",
      "try",
      "while",
      "with",
      "yield"
    ],
    "built_in": [
      "__import__",
      "abs",
      "all",
      "any",
      "ascii",
      "bin",
      "bool",
      "breakpoint",
      "bytearray",
      "bytes",
      "callable",
      "chr",
      "classmethod",
      "compile",
      "complex",
      "delattr",
      "dict",
      "dir",
      "divmod",
      "enumerate",
      "eval",
      "exec",
      "filter",
      "float",
      "format",
      "frozenset",
      "getattr",
      "globals",
      "hasattr",
      "hash",
      "help",
      "hex",
      "id",
      "input",
      "int",
      "isinstance",
      "issubclass",
      "iter",
      "len",
      "list",
      "locals",
      "map",
      "max",
      "memoryview",
      "min",
      "next",
      "object",
      "oct",
      "open",
      "ord",
      "pow",
      "print",
      "property",
      "range",
      "repr",
      "reversed",
      "round",
      "set",
      "setattr",
      "slice",
      "sorted",
      "staticmethod",
      "str",
      "sum",
      "super",
      "tuple",
      "type",
      "vars",
      "zip"
    ],
    "literal": [
      "__debug__",
      "Ellipsis",
      "False",
      "None",
      "NotImplemented",
      "True"
    ],
    "type": [
      "Any",
      "Callable",
      "Coroutine",
      "Dict",
      "List",
      "Literal",
      "Generic",
      "Optional",
      "Sequence",
      "Set",
      "Tuple",
      "Type",
      "Union"
    ]
  },
  illegal: "(<\\/|->|\\?)|=>",
  contains: [
    Mode(ref: '~contains~0'),
    Mode(ref: '~contains~1'),
    Mode(
      begin: "\\bself\\b",
    ),
    Mode(
      beginKeywords: "if",
      relevance: 0,
    ),
    Mode(ref: '~contains~4'),
    Mode(
      className: "comment",
      begin: "(?=# type:)",
      end: "\$",
      keywords: {
        "\$pattern": "[A-Za-z]\\w+|__\\w+__",
        "keyword": [
          "and",
          "as",
          "assert",
          "async",
          "await",
          "break",
          "case",
          "class",
          "continue",
          "def",
          "del",
          "elif",
          "else",
          "except",
          "finally",
          "for",
          "from",
          "global",
          "if",
          "import",
          "in",
          "is",
          "lambda",
          "match",
          "nonlocal|10",
          "not",
          "or",
          "pass",
          "raise",
          "return",
          "try",
          "while",
          "with",
          "yield"
        ],
        "built_in": [
          "__import__",
          "abs",
          "all",
          "any",
          "ascii",
          "bin",
          "bool",
          "breakpoint",
          "bytearray",
          "bytes",
          "callable",
          "chr",
          "classmethod",
          "compile",
          "complex",
          "delattr",
          "dict",
          "dir",
          "divmod",
          "enumerate",
          "eval",
          "exec",
          "filter",
          "float",
          "format",
          "frozenset",
          "getattr",
          "globals",
          "hasattr",
          "hash",
          "help",
          "hex",
          "id",
          "input",
          "int",
          "isinstance",
          "issubclass",
          "iter",
          "len",
          "list",
          "locals",
          "map",
          "max",
          "memoryview",
          "min",
          "next",
          "object",
          "oct",
          "open",
          "ord",
          "pow",
          "print",
          "property",
          "range",
          "repr",
          "reversed",
          "round",
          "set",
          "setattr",
          "slice",
          "sorted",
          "staticmethod",
          "str",
          "sum",
          "super",
          "tuple",
          "type",
          "vars",
          "zip"
        ],
        "literal": [
          "__debug__",
          "Ellipsis",
          "False",
          "None",
          "NotImplemented",
          "True"
        ],
        "type": [
          "Any",
          "Callable",
          "Coroutine",
          "Dict",
          "List",
          "Literal",
          "Generic",
          "Optional",
          "Sequence",
          "Set",
          "Tuple",
          "Type",
          "Union"
        ]
      },
      contains: [
        Mode(
          begin: "# type:",
        ),
        Mode(
          begin: "#",
          end: "\\b\\B",
          endsWithParent: true,
        ),
      ],
    ),
    HASH_COMMENT_MODE,
    Mode(
      match: ["\\bdef", "\\s+", "[\\p{XID_Start}_]\\p{XID_Continue}*"],
      scope: {"1": "keyword", "3": "title.function"},
      contains: [
        Mode(ref: '~contains~7~contains~0'),
      ],
    ),
    Mode(
      variants: [
        Mode(
          match: [
            "\\bclass",
            "\\s+",
            "[\\p{XID_Start}_]\\p{XID_Continue}*",
            "\\s*",
            "\\(\\s*",
            "[\\p{XID_Start}_]\\p{XID_Continue}*",
            "\\s*\\)"
          ],
        ),
        Mode(
          match: ["\\bclass", "\\s+", "[\\p{XID_Start}_]\\p{XID_Continue}*"],
        ),
      ],
      scope: {"1": "keyword", "3": "title.class", "6": "title.class.inherited"},
    ),
    Mode(
      className: "meta",
      begin: "^[\\t ]*@",
      end: "(?=#)|\$",
      contains: [
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~7~contains~0'),
        Mode(ref: '~contains~4'),
      ],
    ),
  ],
);

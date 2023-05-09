// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final reasonml = Language(
  id: "reasonml",
  refs: {
    '~contains~6': Mode(
      className: "constructor",
      begin: "`?[A-Z\$_][0-9a-zA-Z\$_]*\\(",
      end: "\\)",
      illegal: "\\n",
      keywords: {
        "keyword":
            "and as asr assert begin class constraint do done downto else end exception external for fun function functor if in include inherit initializer land lazy let lor lsl lsr lxor match method mod module mutable new nonrec object of open or private rec sig struct then to try type val virtual when while with",
        "built_in":
            "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 ref string unit ",
        "literal": "true false"
      },
      contains: [
        QUOTE_STRING_MODE,
        ModeReference('~contains~4~contains~1'),
        Mode(
          className: "params",
          begin: "\\b\\x7e?[a-z\$_][0-9a-zA-Z\$_]*",
        ),
      ],
    ),
    '~contains~4~contains~2': Mode(
      className: "number",
      relevance: 0,
      variants: [
        Mode(
          begin:
              "\\b(0[xX][a-fA-F0-9_]+[Lln]?|0[oO][0-7_]+[Lln]?|0[bB][01_]+[Lln]?|[0-9][0-9_]*([Lln]|(\\.[0-9_]*)?([eE][-+]?[0-9_]+)?)?)",
        ),
        Mode(
          begin:
              "\\(-\\b(0[xX][a-fA-F0-9_]+[Lln]?|0[oO][0-7_]+[Lln]?|0[bB][01_]+[Lln]?|[0-9][0-9_]*([Lln]|(\\.[0-9_]*)?([eE][-+]?[0-9_]+)?)?)\\)",
        ),
      ],
    ),
    '~contains~4~contains~1': Mode(
      className: "operator",
      relevance: 0,
      begin:
          "(\\|\\||\\+\\+|\\*\\*|\\+\\.|\\*|\\/|\\*\\.|\\/\\.|\\.\\.\\.|\\|>|&&|==|===)",
    ),
    '~contains~4~contains~0': Mode(
      className: "identifier",
      relevance: 0,
      begin: "\\x7e?[a-z\$_][0-9a-zA-Z\$_]*",
    ),
    '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1~variants~1~contains~4':
        Mode(
      className: "module",
      begin: "\\b`?[A-Z\$_][0-9a-zA-Z\$_]*",
      returnBegin: true,
      relevance: 0,
      end: ".",
      contains: [
        Mode(
          className: "identifier",
          begin: "`?[A-Z\$_][0-9a-zA-Z\$_]*",
          relevance: 0,
        ),
      ],
    ),
    '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1': Mode(
      className: "module-access",
      keywords: {
        "keyword":
            "and as asr assert begin class constraint do done downto else end exception external for fun function functor if in include inherit initializer land lazy let lor lsl lsr lxor match method mod module mutable new nonrec object of open or private rec sig struct then to try type val virtual when while with",
        "built_in":
            "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 ref string unit ",
        "literal": "true false"
      },
      returnBegin: true,
      variants: [
        Mode(
          begin:
              "\\b(`?[A-Z\$_][0-9a-zA-Z\$_]*\\.)+\\x7e?[a-z\$_][0-9a-zA-Z\$_]*",
        ),
        Mode(
          begin: "\\b(`?[A-Z\$_][0-9a-zA-Z\$_]*\\.)+\\(",
          end: "\\)",
          returnBegin: true,
          contains: [
            ModeReference('~contains~11'),
            Mode(
              begin: "\\(",
              end: "\\)",
              relevance: 0,
              skip: true,
            ),
            QUOTE_STRING_MODE,
            ModeReference('~contains~4~contains~1'),
            ModeReference(
                '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1~variants~1~contains~4'),
            ModeReference('~contains~11'),
          ],
        ),
        Mode(
          begin: "\\b(`?[A-Z\$_][0-9a-zA-Z\$_]*\\.)+\\{",
          end: "\\}",
        ),
      ],
      contains: [
        QUOTE_STRING_MODE,
        ModeReference('~contains~4~contains~1'),
        ModeReference(
            '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1~variants~1~contains~4'),
        ModeReference('~contains~11'),
      ],
    ),
    '~contains~11': Mode(
      className: "function",
      relevance: 0,
      keywords: {
        "keyword":
            "and as asr assert begin class constraint do done downto else end exception external for fun function functor if in include inherit initializer land lazy let lor lsl lsr lxor match method mod module mutable new nonrec object of open or private rec sig struct then to try type val virtual when while with",
        "built_in":
            "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 ref string unit ",
        "literal": "true false"
      },
      variants: [
        Mode(
          begin: "\\s(\\(\\.?.*?\\)|\\x7e?[a-z\$_][0-9a-zA-Z\$_]*)\\s*=>",
          end: "\\s*=>",
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(
              className: "params",
              variants: [
                Mode(
                  begin: "\\x7e?[a-z\$_][0-9a-zA-Z\$_]*",
                ),
                Mode(
                  begin:
                      "\\x7e?[a-z\$_][0-9a-zA-Z\$_]*(\\s*:\\s*[a-z\$_][0-9a-z\$_]*(\\(\\s*('?[a-z\$_][0-9a-z\$_]*\\s*(,'?[a-z\$_][0-9a-z\$_]*\\s*)*)?\\))?){0,2}",
                ),
                Mode(
                  begin: "\\(\\s*\\)",
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "\\s\\(\\.?[^;\\|]*\\)\\s*=>",
          end: "\\s=>",
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(
              className: "params",
              relevance: 0,
              variants: [
                Mode(
                  begin: "\\x7e?[a-z\$_][0-9a-zA-Z\$_]*",
                  end: "(,|\\n|\\))",
                  relevance: 0,
                  contains: [
                    ModeReference('~contains~4~contains~1'),
                    Mode(
                      className: "typing",
                      begin: ":",
                      end: "(,|\\n)",
                      returnBegin: true,
                      relevance: 0,
                      contains: [
                        Mode(
                          className: "module",
                          begin: "\\b`?[A-Z\$_][0-9a-zA-Z\$_]*",
                          returnBegin: true,
                          end: ".",
                          relevance: 0,
                          contains: [
                            Mode(
                              className: "identifier",
                              begin: "`?[A-Z\$_][0-9a-zA-Z\$_]*",
                              relevance: 0,
                            ),
                          ],
                        ),
                        ModeReference(
                            '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "\\(\\.\\s\\x7e?[a-z\$_][0-9a-zA-Z\$_]*\\)\\s*=>",
        ),
      ],
    ),
  },
  name: "ReasonML",
  aliases: ["re"],
  keywords: {
    "keyword":
        "and as asr assert begin class constraint do done downto else end exception external for fun function functor if in include inherit initializer land lazy let lor lsl lsr lxor match method mod module mutable new nonrec object of open or private rec sig struct then to try type val virtual when while with",
    "built_in":
        "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 ref string unit ",
    "literal": "true false"
  },
  illegal: "(:-|:=|\\\$\\{|\\+=)",
  contains: [
    Mode(
      scope: "comment",
      begin: "/\\*",
      end: "\\*/",
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
      illegal: "^(#,\\/\\/)",
    ),
    Mode(
      className: "character",
      begin: "'(\\\\[^']+|[^'])'",
      illegal: "\\n",
      relevance: 0,
    ),
    QUOTE_STRING_MODE,
    Mode(
      className: "literal",
      begin: "\\(\\)",
      relevance: 0,
    ),
    Mode(
      className: "literal",
      begin: "\\[\\|",
      end: "\\|\\]",
      relevance: 0,
      contains: [
        ModeReference('~contains~4~contains~0'),
        ModeReference('~contains~4~contains~1'),
        ModeReference('~contains~4~contains~2'),
      ],
    ),
    Mode(
      className: "literal",
      begin: "\\[",
      end: "\\]",
      relevance: 0,
      contains: [
        ModeReference('~contains~4~contains~0'),
        ModeReference('~contains~4~contains~1'),
        ModeReference('~contains~4~contains~2'),
      ],
    ),
    ModeReference('~contains~6'),
    Mode(
      className: "operator",
      begin:
          "\\s+(\\|\\||\\+\\+|\\*\\*|\\+\\.|\\*|\\/|\\*\\.|\\/\\.|\\.\\.\\.|\\|>|&&|==|===)\\s+",
      illegal: "-->",
      relevance: 0,
    ),
    ModeReference('~contains~4~contains~2'),
    C_LINE_COMMENT_MODE,
    Mode(
      className: "pattern-match",
      begin: "\\|",
      returnBegin: true,
      keywords: {
        "keyword":
            "and as asr assert begin class constraint do done downto else end exception external for fun function functor if in include inherit initializer land lazy let lor lsl lsr lxor match method mod module mutable new nonrec object of open or private rec sig struct then to try type val virtual when while with",
        "built_in":
            "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 ref string unit ",
        "literal": "true false"
      },
      end: "=>",
      relevance: 0,
      contains: [
        ModeReference('~contains~6'),
        ModeReference('~contains~4~contains~1'),
        Mode(
          relevance: 0,
          className: "constructor",
          begin: "`?[A-Z\$_][0-9a-zA-Z\$_]*",
        ),
      ],
    ),
    ModeReference('~contains~11'),
    Mode(
      className: "module-def",
      begin:
          "\\bmodule\\s+\\x7e?[a-z\$_][0-9a-zA-Z\$_]*\\s+`?[A-Z\$_][0-9a-zA-Z\$_]*\\s+=\\s+\\{",
      end: "\\}",
      returnBegin: true,
      keywords: {
        "keyword":
            "and as asr assert begin class constraint do done downto else end exception external for fun function functor if in include inherit initializer land lazy let lor lsl lsr lxor match method mod module mutable new nonrec object of open or private rec sig struct then to try type val virtual when while with",
        "built_in":
            "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 ref string unit ",
        "literal": "true false"
      },
      relevance: 0,
      contains: [
        Mode(
          className: "module",
          relevance: 0,
          begin: "`?[A-Z\$_][0-9a-zA-Z\$_]*",
        ),
        Mode(
          begin: "\\{",
          end: "\\}",
          relevance: 0,
          skip: true,
        ),
        QUOTE_STRING_MODE,
        ModeReference('~contains~4~contains~1'),
        ModeReference(
            '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1~variants~1~contains~4'),
        ModeReference('~contains~11'),
      ],
    ),
    ModeReference(
        '~contains~11~variants~1~contains~0~variants~0~contains~1~contains~1'),
  ],
);

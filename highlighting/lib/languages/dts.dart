// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final dts = Language(
  id: "dts",
  refs: {
    '~contains~7~contains~0': Mode(
      className: "number",
      variants: [
        Mode(
          begin: "\\b(\\d+(\\.\\d*)?|\\.\\d+)(u|U|l|L|ul|UL|f|F)",
        ),
        Mode(
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
        ),
      ],
      relevance: 0,
    ),
    '~contains~11~variants~2': Mode(
      begin: "'\\\\?.",
      end: "'",
      illegal: ".",
    ),
    '~contains~11~variants~1': Mode(
      begin: "(u8?|U)?R\"",
      end: "\"",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~11~variants~0': Mode(
      scope: "string",
      begin: "((u8?|U)|L)?\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~11': Mode(
      className: "string",
      variants: [
        ModeReference('~contains~11~variants~0'),
        ModeReference('~contains~11~variants~1'),
        ModeReference('~contains~11~variants~2'),
      ],
    ),
    '~contains~1': Mode(
      className: "variable",
      begin: "&[a-z\\d_]*\\b",
    ),
  },
  name: "Device Tree",
  contains: [
    Mode(
      className: "title.class",
      begin: "^\\/(?=\\s*\\{)",
      relevance: 10,
    ),
    ModeReference('~contains~1'),
    Mode(
      className: "keyword",
      begin: "/[a-z][a-z\\d-]*/",
    ),
    Mode(
      className: "symbol",
      begin: "^\\s*[a-zA-Z_][a-zA-Z\\d_]*:",
    ),
    Mode(
      className: "title.class",
      begin: "[a-zA-Z_][a-zA-Z\\d_@-]*(?=\\s\\{)",
      relevance: 0.2,
    ),
    Mode(
      relevance: 0,
      match: ["[a-z][a-z-,]+", "\\s*", "="],
      scope: {"1": "attr", "3": "operator"},
    ),
    Mode(
      match: "[a-z][a-z-,]+(?=;)",
      relevance: 0,
      scope: "attr",
    ),
    Mode(
      className: "params",
      relevance: 0,
      begin: "<",
      end: ">",
      contains: [
        ModeReference('~contains~7~contains~0'),
        ModeReference('~contains~1'),
      ],
    ),
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    ModeReference('~contains~7~contains~0'),
    ModeReference('~contains~11'),
    Mode(
      className: "meta",
      begin: "#",
      end: "\$",
      keywords: {"keyword": "if else elif endif define undef ifdef ifndef"},
      contains: [
        Mode(
          begin: "\\\\\\n",
          relevance: 0,
        ),
        Mode(
          beginKeywords: "include",
          end: "\$",
          keywords: {"keyword": "include"},
          contains: [
            Mode(
              className: "string",
              variants: [
                ModeReference('~contains~11~variants~0'),
                ModeReference('~contains~11~variants~1'),
                ModeReference('~contains~11~variants~2'),
              ],
            ),
            Mode(
              className: "string",
              begin: "<",
              end: ">",
              illegal: "\\n",
            ),
          ],
        ),
        ModeReference('~contains~11'),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
      ],
    ),
    Mode(
      scope: "punctuation",
      relevance: 0,
      match: "\\};|[;{}]",
    ),
    Mode(
      begin: "[a-zA-Z]\\w*::",
      keywords: "",
    ),
  ],
);

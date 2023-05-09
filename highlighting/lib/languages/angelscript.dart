// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final angelscript = Language(
  id: "angelscript",
  refs: {
    '~contains~8~contains~0~contains~1': Mode(
      className: "symbol",
      begin: "[a-zA-Z0-9_]+@",
      contains: [
        ModeReference('~contains~8~contains~0'),
      ],
    ),
    '~contains~8~contains~0': Mode(
      className: "keyword",
      begin: "<",
      end: ">",
      contains: [
        ModeReference('~contains~8'),
        ModeReference('~contains~8~contains~0~contains~1'),
      ],
    ),
    '~contains~8': Mode(
      className: "built_in",
      begin:
          "\\b(void|bool|int8|int16|int32|int64|int|uint8|uint16|uint32|uint64|uint|string|ref|array|double|float|auto|dictionary)",
      contains: [
        ModeReference('~contains~8~contains~0'),
      ],
    ),
  },
  name: "AngelScript",
  aliases: ["asc"],
  keywords: [
    "for",
    "in|0",
    "break",
    "continue",
    "while",
    "do|0",
    "return",
    "if",
    "else",
    "case",
    "switch",
    "namespace",
    "is",
    "cast",
    "or",
    "and",
    "xor",
    "not",
    "get|0",
    "in",
    "inout|10",
    "out",
    "override",
    "set|0",
    "private",
    "public",
    "const",
    "default|0",
    "final",
    "shared",
    "external",
    "mixin|10",
    "enum",
    "typedef",
    "funcdef",
    "this",
    "super",
    "import",
    "from",
    "interface",
    "abstract|0",
    "try",
    "catch",
    "protected",
    "explicit",
    "property"
  ],
  illegal: "(^using\\s+[A-Za-z0-9_\\.]+;\$|\\bfunction\\s*[^\\(])",
  contains: [
    Mode(
      className: "string",
      begin: "'",
      end: "'",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\"\"\"",
      end: "\"\"\"",
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      relevance: 0,
    ),
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      className: "string",
      begin: "^\\s*\\[",
      end: "\\]",
    ),
    Mode(
      beginKeywords: "interface namespace",
      end: "\\{",
      illegal: "[;.\\-]",
      contains: [
        Mode(
          className: "symbol",
          begin: "[a-zA-Z0-9_]+",
        ),
      ],
    ),
    Mode(
      beginKeywords: "class",
      end: "\\{",
      illegal: "[;.\\-]",
      contains: [
        Mode(
          className: "symbol",
          begin: "[a-zA-Z0-9_]+",
          contains: [
            Mode(
              begin: "[:,]\\s*",
              contains: [
                Mode(
                  className: "symbol",
                  begin: "[a-zA-Z0-9_]+",
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    ModeReference('~contains~8'),
    ModeReference('~contains~8~contains~0~contains~1'),
    Mode(
      className: "literal",
      begin: "\\b(null|true|false)",
    ),
    Mode(
      className: "number",
      relevance: 0,
      begin:
          "(-?)(\\b0[xXbBoOdD][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?f?|\\.\\d+f?)([eE][-+]?\\d+f?)?)",
    ),
  ],
);

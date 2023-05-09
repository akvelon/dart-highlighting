// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final groovy = Language(
  id: "groovy",
  refs: {
    '~contains~4': Mode(
      variants: [
        BINARY_NUMBER_MODE,
        C_NUMBER_MODE,
      ],
    ),
    '~contains~3': Mode(
      className: "regexp",
      begin: "\\x7e?\\/[^\\/\\n]+\\/",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~2': Mode(
      className: "string",
      variants: [
        Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
        ),
        Mode(
          begin: "'''",
          end: "'''",
        ),
        Mode(
          begin: "\\\$/",
          end: "/\\\$",
          relevance: 10,
        ),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE,
      ],
    ),
    '~contains~1': Mode(
      variants: [
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        Mode(
          scope: "comment",
          begin: "/\\*\\*",
          end: "\\*/",
          contains: [
            Mode(
              begin: "\\w+@",
              relevance: 0,
            ),
            Mode(
              className: "doctag",
              begin: "@[A-Za-z]+",
            ),
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
          relevance: 0,
        ),
      ],
    ),
  },
  name: "Groovy",
  keywords: {
    "variable.language": "this super",
    "literal": "true false null",
    "type": [
      "byte",
      "short",
      "char",
      "int",
      "long",
      "boolean",
      "float",
      "double",
      "void"
    ],
    "keyword": [
      "def",
      "as",
      "in",
      "assert",
      "trait",
      "abstract",
      "static",
      "volatile",
      "transient",
      "public",
      "private",
      "protected",
      "synchronized",
      "final",
      "class",
      "interface",
      "enum",
      "if",
      "else",
      "for",
      "while",
      "switch",
      "case",
      "break",
      "default",
      "continue",
      "throw",
      "throws",
      "try",
      "catch",
      "finally",
      "implements",
      "extends",
      "new",
      "import",
      "package",
      "return",
      "instanceof"
    ]
  },
  contains: [
    Mode(
      scope: "meta",
      begin: "^#![ ]*\\/.*\\bgroovy\\b.*",
      end: "\$",
      relevance: 10,
      onBegin: shebangOnBegin,
    ),
    ModeReference('~contains~1'),
    ModeReference('~contains~2'),
    ModeReference('~contains~3'),
    ModeReference('~contains~4'),
    Mode(
      match: [
        "(class|interface|trait|enum|extends|implements)",
        "\\s+",
        "[a-zA-Z_]\\w*"
      ],
      scope: {"1": "keyword", "3": "title.class"},
    ),
    Mode(
      className: "meta",
      begin: "@[A-Za-z]+",
      relevance: 0,
    ),
    Mode(
      className: "attr",
      begin: "[A-Za-z0-9_\$]+[ \t]*:",
      relevance: 0,
    ),
    Mode(
      begin: "\\?",
      end: ":",
      relevance: 0,
      contains: [
        ModeReference('~contains~1'),
        ModeReference('~contains~2'),
        ModeReference('~contains~3'),
        ModeReference('~contains~4'),
        ModeSelfReference(),
      ],
    ),
    Mode(
      className: "symbol",
      begin: "^[ \t]*(?=[A-Za-z0-9_\$]+:)",
      excludeBegin: true,
      end: "[A-Za-z0-9_\$]+:",
      relevance: 0,
    ),
  ],
  illegal: "#|<\\/",
);

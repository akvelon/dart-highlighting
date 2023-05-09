// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final cal = Language(
  id: "cal",
  refs: {
    '~contains~2': Mode(
      className: "string",
      begin: "(#\\d+)+",
    ),
    '~contains~1': Mode(
      className: "string",
      begin: "'",
      end: "'",
      contains: [
        Mode(
          begin: "''",
        ),
      ],
    ),
  },
  name: "C/AL",
  case_insensitive: true,
  keywords: {
    "keyword": [
      "div",
      "mod",
      "in",
      "and",
      "or",
      "not",
      "xor",
      "asserterror",
      "begin",
      "case",
      "do",
      "downto",
      "else",
      "end",
      "exit",
      "for",
      "local",
      "if",
      "of",
      "repeat",
      "then",
      "to",
      "until",
      "while",
      "with",
      "var"
    ],
    "literal": "false true"
  },
  illegal: "\\/\\*",
  contains: [
    Mode(
      match: "[\\w]+(?=\\=)",
      scope: "attribute",
      relevance: 0,
    ),
    ModeReference('~contains~1'),
    ModeReference('~contains~2'),
    Mode(
      className: "number",
      begin: "\\b\\d+(\\.\\d+)?(DT|D|T)",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
    ),
    NUMBER_MODE,
    Mode(
      match: [
        "OBJECT",
        "\\s+",
        "(?:Table|Form|Report|Dataport|Codeunit|XMLport|MenuSuite|Page|Query)",
        "\\s+",
        "\\d+",
        "\\s+(?=[^\\s])",
        ".*",
        "\$"
      ],
      relevance: 3,
      scope: {"1": "keyword", "3": "type", "5": "number", "7": "title"},
    ),
    Mode(
      match: ["procedure", "\\s+", "[a-zA-Z_][\\w@]*", "\\s*"],
      scope: {"1": "keyword", "3": "title.function"},
      contains: [
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          keywords: [
            "div",
            "mod",
            "in",
            "and",
            "or",
            "not",
            "xor",
            "asserterror",
            "begin",
            "case",
            "do",
            "downto",
            "else",
            "end",
            "exit",
            "for",
            "local",
            "if",
            "of",
            "repeat",
            "then",
            "to",
            "until",
            "while",
            "with",
            "var"
          ],
          contains: [
            ModeReference('~contains~1'),
            ModeReference('~contains~2'),
            NUMBER_MODE,
          ],
        ),
        C_LINE_COMMENT_MODE,
        Mode(
          scope: "comment",
          begin: "\\{",
          end: "\\}",
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
          relevance: 0,
        ),
        Mode(
          scope: "comment",
          begin: "\\(\\*",
          end: "\\*\\)",
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
          relevance: 10,
        ),
      ],
    ),
  ],
);

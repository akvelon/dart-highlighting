// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final ada = Language(
  id: "ada",
  refs: {
    '~contains~6~contains~2': Mode(
      begin: "\\s+:\\s+",
      end: "\\s*(:=|;|\\)|=>|\$)",
      illegal: "[]\\{\\}%#'\"",
      contains: [
        Mode(
          beginKeywords: "loop for declare others",
          endsParent: true,
        ),
        Mode(
          className: "keyword",
          beginKeywords:
              "not null constant access function procedure in out aliased exception",
        ),
        Mode(
          className: "type",
          begin: "[A-Za-z](_?[A-Za-z0-9.])*",
          endsParent: true,
          relevance: 0,
        ),
      ],
    ),
    '~contains~0': Mode(
      scope: "comment",
      begin: "--",
      end: "\$",
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
  },
  name: "Ada",
  case_insensitive: true,
  keywords: {
    "keyword": [
      "abort",
      "else",
      "new",
      "return",
      "abs",
      "elsif",
      "not",
      "reverse",
      "abstract",
      "end",
      "accept",
      "entry",
      "select",
      "access",
      "exception",
      "of",
      "separate",
      "aliased",
      "exit",
      "or",
      "some",
      "all",
      "others",
      "subtype",
      "and",
      "for",
      "out",
      "synchronized",
      "array",
      "function",
      "overriding",
      "at",
      "tagged",
      "generic",
      "package",
      "task",
      "begin",
      "goto",
      "pragma",
      "terminate",
      "body",
      "private",
      "then",
      "if",
      "procedure",
      "type",
      "case",
      "in",
      "protected",
      "constant",
      "interface",
      "is",
      "raise",
      "use",
      "declare",
      "range",
      "delay",
      "limited",
      "record",
      "when",
      "delta",
      "loop",
      "rem",
      "while",
      "digits",
      "renames",
      "with",
      "do",
      "mod",
      "requeue",
      "xor"
    ],
    "literal": ["True", "False"]
  },
  contains: [
    ModeReference('~contains~0'),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [
        Mode(
          begin: "\"\"",
          relevance: 0,
        ),
      ],
    ),
    Mode(
      className: "string",
      begin: "'.'",
    ),
    Mode(
      className: "number",
      begin:
          "\\b(\\d(_|\\d)*#\\w+(\\.\\w+)?#([eE][-+]?\\d(_|\\d)*)?|\\d(_|\\d)*(\\.\\d(_|\\d)*)?([eE][-+]?\\d(_|\\d)*)?)",
      relevance: 0,
    ),
    Mode(
      className: "symbol",
      begin: "'[A-Za-z](_?[A-Za-z0-9.])*",
    ),
    Mode(
      className: "title",
      begin: "(\\bwith\\s+)?(\\bprivate\\s+)?\\bpackage\\s+(\\bbody\\s+)?",
      end: "(is|\$)",
      keywords: "package body",
      excludeBegin: true,
      excludeEnd: true,
      illegal: "[]\\{\\}%#'\"",
    ),
    Mode(
      begin: "(\\b(with|overriding)\\s+)?\\b(function|procedure)\\s+",
      end: "(\\bis|\\bwith|\\brenames|\\)\\s*;)",
      keywords: "overriding function procedure with is renames return",
      returnBegin: true,
      contains: [
        ModeReference('~contains~0'),
        Mode(
          className: "title",
          begin: "(\\bwith\\s+)?\\b(function|procedure)\\s+",
          end: "(\\(|\\s+|\$)",
          excludeBegin: true,
          excludeEnd: true,
          illegal: "[]\\{\\}%#'\"",
        ),
        ModeReference('~contains~6~contains~2'),
        Mode(
          className: "type",
          begin: "\\breturn\\s+",
          end: "(\\s+|;|\$)",
          keywords: "return",
          excludeBegin: true,
          excludeEnd: true,
          endsParent: true,
          illegal: "[]\\{\\}%#'\"",
        ),
      ],
    ),
    Mode(
      className: "type",
      begin: "\\b(sub)?type\\s+",
      end: "\\s+",
      keywords: "type",
      excludeBegin: true,
      illegal: "[]\\{\\}%#'\"",
    ),
    ModeReference('~contains~6~contains~2'),
  ],
);

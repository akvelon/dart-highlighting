// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final golo = Language(
  id: "golo",
  refs: {},
  name: "Golo",
  keywords: {
    "keyword": [
      "println",
      "readln",
      "print",
      "import",
      "module",
      "function",
      "local",
      "return",
      "let",
      "var",
      "while",
      "for",
      "foreach",
      "times",
      "in",
      "case",
      "when",
      "match",
      "with",
      "break",
      "continue",
      "augment",
      "augmentation",
      "each",
      "find",
      "filter",
      "reduce",
      "if",
      "then",
      "else",
      "otherwise",
      "try",
      "catch",
      "finally",
      "raise",
      "throw",
      "orIfNull",
      "DynamicObject|10",
      "DynamicVariable",
      "struct",
      "Observable",
      "map",
      "set",
      "vector",
      "list",
      "array"
    ],
    "literal": ["true", "false", "null"]
  },
  contains: [
    HASH_COMMENT_MODE,
    QUOTE_STRING_MODE,
    C_NUMBER_MODE,
    Mode(
      className: "meta",
      begin: "@[A-Za-z]+",
    ),
  ],
);

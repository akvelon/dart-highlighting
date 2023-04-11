// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final json = Mode(
  refs: {},
  name: "JSON",
  keywords: {
    "literal": ["true", "false", "null"]
  },
  contains: [
    Mode(
      className: "attr",
      begin: "\"(\\\\.|[^\\\\\"\\r\\n])*\"(?=\\s*:)",
      relevance: 1.01,
    ),
    Mode(
      match: "[{}[\\],:]",
      className: "punctuation",
      relevance: 0,
    ),
    QUOTE_STRING_MODE,
    Mode(
      scope: "literal",
      beginKeywords: "true false null",
    ),
    C_NUMBER_MODE,
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
  ],
  illegal: "\\S",
);

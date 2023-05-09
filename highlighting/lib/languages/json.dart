// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final json = Language(
  id: "json",
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

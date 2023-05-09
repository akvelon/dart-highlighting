// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final awk = Language(
  id: "awk",
  refs: {},
  name: "Awk",
  keywords: {
    "keyword":
        "BEGIN END if else while do for in break continue delete next nextfile function func exit|10"
  },
  contains: [
    Mode(
      className: "variable",
      variants: [
        Mode(
          begin: "\\\$[\\w\\d#@][\\w\\d_]*",
        ),
        Mode(
          begin: "\\\$\\{(.*?)\\}",
        ),
      ],
    ),
    Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      variants: [
        Mode(
          begin: "(u|b)?r?'''",
          end: "'''",
          relevance: 10,
        ),
        Mode(
          begin: "(u|b)?r?\"\"\"",
          end: "\"\"\"",
          relevance: 10,
        ),
        Mode(
          begin: "(u|r|ur)'",
          end: "'",
          relevance: 10,
        ),
        Mode(
          begin: "(u|r|ur)\"",
          end: "\"",
          relevance: 10,
        ),
        Mode(
          begin: "(b|br)'",
          end: "'",
        ),
        Mode(
          begin: "(b|br)\"",
          end: "\"",
        ),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE,
      ],
    ),
    REGEXP_MODE,
    HASH_COMMENT_MODE,
    NUMBER_MODE,
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final dylan = Language(
  id: "dylan",
  refs: {},
  case_insensitive: true,
  className: "dylan",
  keywords: {
    "\$pattern": "[a-z-+*/^=#!%\$_><@?\\x7e][a-z0-9-+*/^=#!%\$_><@?~]*",
    "literal": "#t #f #next #rest #key #all-keys #include",
    "keyword":
        "define end handler let local macro otherwise begin block case for if method select unless until while class|2 library|2 method|2 module|2 constant variable domain"
  },
  contains: [
    Mode(
      className: "class",
      begin: "<[a-z-+*/^=#!%\$_><@?\\x7e][a-z0-9-+*/^=#!%\$_><@?~]*>",
      relevance: 0,
    ),
    Mode(
      className: "symbol",
      begin: "#[a-z-+*/^=#!%\$_><@?\\x7e][a-z0-9-+*/^=#!%\$_><@?~]*",
    ),
    Mode(
      className: "symbol",
      begin: "[a-z-+*/^=#!%\$_><@?\\x7e][a-z0-9-+*/^=#!%\$_><@?~]*:",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "'\\\\?.",
      end: "'",
      illegal: ".",
    ),
    C_NUMBER_MODE,
    QUOTE_STRING_MODE,
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
  ],
);

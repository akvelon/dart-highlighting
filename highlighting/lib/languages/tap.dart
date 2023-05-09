// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final tap = Language(
  id: "tap",
  refs: {},
  name: "Test Anything Protocol",
  case_insensitive: true,
  contains: [
    HASH_COMMENT_MODE,
    Mode(
      className: "meta",
      variants: [
        Mode(
          begin: "^TAP version (\\d+)\$",
        ),
        Mode(
          begin: "^1\\.\\.(\\d+)\$",
        ),
      ],
    ),
    Mode(
      begin: "---\$",
      end: "\\.\\.\\.\$",
      subLanguage: ["yaml"],
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: " (\\d+) ",
    ),
    Mode(
      className: "symbol",
      variants: [
        Mode(
          begin: "^ok",
        ),
        Mode(
          begin: "^not ok",
        ),
      ],
    ),
  ],
);

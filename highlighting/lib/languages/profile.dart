// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final profile = Language(
  id: "profile",
  refs: {},
  name: "Python profiler",
  contains: [
    C_NUMBER_MODE,
    Mode(
      begin: "[a-zA-Z_][\\da-zA-Z_]+\\.[\\da-zA-Z_]{1,3}",
      end: ":",
      excludeEnd: true,
    ),
    Mode(
      begin: "(ncalls|tottime|cumtime)",
      end: "\$",
      keywords: "ncalls tottime|10 cumtime|10 filename",
      relevance: 10,
    ),
    Mode(
      begin: "function calls",
      end: "\$",
      contains: [
        C_NUMBER_MODE,
      ],
      relevance: 10,
    ),
    APOS_STRING_MODE,
    QUOTE_STRING_MODE,
    Mode(
      className: "string",
      begin: "\\(",
      end: "\\)\$",
      excludeBegin: true,
      excludeEnd: true,
      relevance: 0,
    ),
  ],
);

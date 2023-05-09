// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final dsconfig = Language(
  id: "dsconfig",
  refs: {},
  keywords: "dsconfig",
  contains: [
    Mode(
      className: "keyword",
      begin: "^dsconfig",
      end: "\\s",
      excludeEnd: true,
      relevance: 10,
    ),
    Mode(
      className: "built_in",
      begin: "(list|create|get|set|delete)-(\\w+)",
      end: "\\s",
      excludeEnd: true,
      illegal: "!@#\$%^&*()",
      relevance: 10,
    ),
    Mode(
      className: "built_in",
      begin: "--(\\w+)",
      end: "\\s",
      excludeEnd: true,
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
    ),
    Mode(
      className: "string",
      begin: "'",
      end: "'",
    ),
    Mode(
      className: "string",
      begin: "[\\w\\-?]+:\\w+",
      end: "\\W",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\\w+(\\-\\w+)*",
      end: "(?=\\W)",
      relevance: 0,
    ),
    HASH_COMMENT_MODE,
  ],
);

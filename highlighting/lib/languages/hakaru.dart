// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final hakaru = Language(
  id: "hakaru",
  refs: {},
  contains: [
    HASH_COMMENT_MODE,
    Mode(
      begin: "[a-zA-Z_]\\w*",
      keywords: {
        "\$pattern": "[a-zA-Z_]\\w*",
        "keyword":
            "import data match if else array def fn plate chain returnexpect observe disintegrate integrate summate from of tonat int prob real array pair maybe eithernormal bern uniform gamma beta categorical poissondirac weight factor counting lebesgue",
        "literal": "true false"
      },
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: "\\d+(?:[eE][+\\-]?\\d*)?L\\b",
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: "\\d+\\.(?!\\d)(?:i\\b)?",
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: "\\d+(?:\\.\\d*)?(?:[eE][+\\-]?\\d*)?i?\\b",
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: "\\.\\d+(?:[eE][+\\-]?\\d*)?i?\\b",
      relevance: 0,
    ),
  ],
);

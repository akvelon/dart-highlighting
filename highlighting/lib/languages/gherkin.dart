// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final gherkin = Language(
  id: "gherkin",
  refs: {},
  name: "Gherkin",
  aliases: ["feature"],
  keywords:
      "Feature Background Ability Business Need Scenario Scenarios Scenario Outline Scenario Template Examples Given And Then But When",
  contains: [
    Mode(
      className: "symbol",
      begin: "\\*",
      relevance: 0,
    ),
    Mode(
      className: "meta",
      begin: "@[^@\\s]+",
    ),
    Mode(
      begin: "\\|",
      end: "\\|\\w*\$",
      contains: [
        Mode(
          className: "string",
          begin: "[^|]+",
        ),
      ],
    ),
    Mode(
      className: "variable",
      begin: "<",
      end: ">",
    ),
    HASH_COMMENT_MODE,
    Mode(
      className: "string",
      begin: "\"\"\"",
      end: "\"\"\"",
    ),
    QUOTE_STRING_MODE,
  ],
);

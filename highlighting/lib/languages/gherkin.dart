// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final gherkin = Mode(
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

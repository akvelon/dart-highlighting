// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final dust = Language(
  id: "dust",
  refs: {},
  name: "Dust",
  aliases: ["dst"],
  case_insensitive: true,
  subLanguage: ["xml"],
  contains: [
    Mode(
      className: "template-tag",
      begin: "\\{[#\\/]",
      end: "\\}",
      illegal: ";",
      contains: [
        Mode(
          className: "name",
          begin: "[a-zA-Z\\.-]+",
          starts: Mode(
            endsWithParent: true,
            relevance: 0,
            contains: [
              QUOTE_STRING_MODE,
            ],
          ),
        ),
      ],
    ),
    Mode(
      className: "template-variable",
      begin: "\\{",
      end: "\\}",
      illegal: ";",
      keywords: "if eq ne lt lte gt gte select default math sep",
    ),
  ],
);

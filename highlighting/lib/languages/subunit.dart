// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final subunit = Language(
  id: "subunit",
  refs: {},
  name: "SubUnit",
  case_insensitive: true,
  contains: [
    Mode(
      className: "string",
      begin: "\\[\n(multipart)?",
      end: "\\]\n",
    ),
    Mode(
      className: "string",
      begin: "\\d{4}-\\d{2}-\\d{2}(\\s+)\\d{2}:\\d{2}:\\d{2}.\\d+Z",
    ),
    Mode(
      className: "string",
      begin: "(\\+|-)\\d+",
    ),
    Mode(
      className: "keyword",
      relevance: 10,
      variants: [
        Mode(
          begin:
              "^(test|testing|success|successful|failure|error|skip|xfail|uxsuccess)(:?)\\s+(test)?",
        ),
        Mode(
          begin: "^progress(:?)(\\s+)?(pop|push)?",
        ),
        Mode(
          begin: "^tags:",
        ),
        Mode(
          begin: "^time:",
        ),
      ],
    ),
  ],
);

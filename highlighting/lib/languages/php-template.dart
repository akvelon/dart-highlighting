// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final phpTemplate = Language(
  id: "php-template",
  refs: {},
  name: "PHP template",
  subLanguage: ["xml"],
  contains: [
    Mode(
      begin: "<\\?(php|=)?",
      end: "\\?>",
      subLanguage: ["php"],
      contains: [
        Mode(
          begin: "/\\*",
          end: "\\*/",
          skip: true,
        ),
        Mode(
          begin: "b\"",
          end: "\"",
          skip: true,
        ),
        Mode(
          begin: "b'",
          end: "'",
          skip: true,
        ),
        Mode(
          scope: "string",
          begin: "'",
          end: "'",
          illegal: null,
          contains: null,
          className: overwritingNullString,
          skip: true,
        ),
        Mode(
          scope: "string",
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: null,
          className: overwritingNullString,
          skip: true,
        ),
      ],
    ),
  ],
);

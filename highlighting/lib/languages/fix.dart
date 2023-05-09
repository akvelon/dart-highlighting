// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final fix = Language(
  id: "fix",
  refs: {},
  name: "FIX",
  contains: [
    Mode(
      begin: "[^\\u2401\\u0001]+",
      end: "[\\u2401\\u0001]",
      excludeEnd: true,
      returnBegin: true,
      returnEnd: false,
      contains: [
        Mode(
          begin: "([^\\u2401\\u0001=]+)",
          end: "=([^\\u2401\\u0001=]+)",
          returnEnd: true,
          returnBegin: false,
          className: "attr",
        ),
        Mode(
          begin: "=",
          end: "([\\u2401\\u0001])",
          excludeEnd: true,
          excludeBegin: true,
          className: "string",
        ),
      ],
    ),
  ],
  case_insensitive: true,
);

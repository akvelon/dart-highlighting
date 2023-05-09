// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final vbscriptHtml = Language(
  id: "vbscript-html",
  refs: {},
  name: "VBScript in HTML",
  subLanguage: ["xml"],
  contains: [
    Mode(
      begin: "<%",
      end: "%>",
      subLanguage: ["vbscript"],
    ),
  ],
);

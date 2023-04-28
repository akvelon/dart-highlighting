// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

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

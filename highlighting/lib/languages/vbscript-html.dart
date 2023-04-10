// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final vbscriptHtml = Mode(
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

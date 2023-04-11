// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';
import '../src/language_definition_parts/language_definition_parts.dart';

final vbscriptHtml = Mode(
    refs: {},
    name: "VBScript in HTML",
    subLanguage: ["xml"],
    contains: [
      Mode(begin: "<%", end: "%>", subLanguage: ["vbscript"])
    ]);

// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final phpTemplateJs = Mode(
    refs: {},
    name: "PHP template",
    subLanguage: ["xml"],
    contains: [
      Mode(begin: "<\\?(php|=)?", end: "\\?>", subLanguage: [
        "php"
      ], contains: [
        Mode(begin: "/\\*", end: "\\*/", skip: true),
        Mode(begin: "b\"", end: "\"", skip: true),
        Mode(begin: "b'", end: "'", skip: true),
        Mode(
            scope: "string",
            begin: "'",
            end: "'",
            illegal: null,
            contains: null,
            className: null,
            skip: true),
        Mode(
            scope: "string",
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: null,
            className: null,
            skip: true)
      ])
    ]);

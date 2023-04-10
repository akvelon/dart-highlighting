// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';
import 'common/nulls.dart';

final phpTemplate = Mode(
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
            className: preserveNullString,
            skip: true),
        Mode(
            scope: "string",
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: null,
            className: preserveNullString,
            skip: true)
      ])
    ]);

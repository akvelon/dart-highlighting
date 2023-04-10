// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';
import 'common/nulls.dart';

final bnf = Mode(
    refs: {},
    name: "Backus–Naur Form",
    contains: [
      Mode(className: "attribute", begin: "<", end: ">"),
      Mode(begin: "::=", end: "\$", contains: [
        Mode(begin: "<", end: ">"),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ])
    ]);

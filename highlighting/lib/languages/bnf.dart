// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final bnf = Language(
  id: "bnf",
  refs: {},
  name: "Backus–Naur Form",
  contains: [
    Mode(
      className: "attribute",
      begin: "<",
      end: ">",
    ),
    Mode(
      begin: "::=",
      end: "\$",
      contains: [
        Mode(
          begin: "<",
          end: ">",
        ),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        APOS_STRING_MODE,
        QUOTE_STRING_MODE,
      ],
    ),
  ],
);

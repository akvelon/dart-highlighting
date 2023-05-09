// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final clean = Language(
  id: "clean",
  refs: {},
  name: "Clean",
  aliases: ["icl", "dcl"],
  keywords: {
    "keyword": [
      "if",
      "let",
      "in",
      "with",
      "where",
      "case",
      "of",
      "class",
      "instance",
      "otherwise",
      "implementation",
      "definition",
      "system",
      "module",
      "from",
      "import",
      "qualified",
      "as",
      "special",
      "code",
      "inline",
      "foreign",
      "export",
      "ccall",
      "stdcall",
      "generic",
      "derive",
      "infix",
      "infixl",
      "infixr"
    ],
    "built_in": "Int Real Char Bool",
    "literal": "True False"
  },
  contains: [
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    APOS_STRING_MODE,
    QUOTE_STRING_MODE,
    C_NUMBER_MODE,
    Mode(
      begin: "->|<-[|:]?|#!?|>>=|\\{\\||\\|\\}|:==|=:|<>",
    ),
  ],
);

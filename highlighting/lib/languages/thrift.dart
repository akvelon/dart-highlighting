// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final thrift = Language(
  id: "thrift",
  refs: {},
  name: "Thrift",
  keywords: {
    "keyword": [
      "namespace",
      "const",
      "typedef",
      "struct",
      "enum",
      "service",
      "exception",
      "void",
      "oneway",
      "set",
      "list",
      "map",
      "required",
      "optional"
    ],
    "type": ["bool", "byte", "i16", "i32", "i64", "double", "string", "binary"],
    "literal": "true false"
  },
  contains: [
    QUOTE_STRING_MODE,
    NUMBER_MODE,
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      className: "class",
      beginKeywords: "struct enum service exception",
      end: "\\{",
      illegal: "\\n",
      contains: [
        Mode(
          scope: "title",
          begin: "[a-zA-Z]\\w*",
          relevance: 0,
          starts: Mode(
            endsWithParent: true,
            excludeEnd: true,
          ),
        ),
      ],
    ),
    Mode(
      begin: "\\b(set|list|map)\\s*<",
      keywords: {
        "type": [
          "bool",
          "byte",
          "i16",
          "i32",
          "i64",
          "double",
          "string",
          "binary",
          "set",
          "list",
          "map"
        ]
      },
      end: ">",
      contains: [
        ModeSelfReference(),
      ],
    ),
  ],
);

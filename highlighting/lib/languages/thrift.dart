// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final thrift = Mode(
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
        Mode(self: true),
      ],
    ),
  ],
);

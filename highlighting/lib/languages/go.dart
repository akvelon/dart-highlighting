// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final go = Language(
  id: "go",
  refs: {},
  name: "Go",
  aliases: ["golang"],
  keywords: {
    "keyword": [
      "break",
      "case",
      "chan",
      "const",
      "continue",
      "default",
      "defer",
      "else",
      "fallthrough",
      "for",
      "func",
      "go",
      "goto",
      "if",
      "import",
      "interface",
      "map",
      "package",
      "range",
      "return",
      "select",
      "struct",
      "switch",
      "type",
      "var"
    ],
    "type": [
      "bool",
      "byte",
      "complex64",
      "complex128",
      "error",
      "float32",
      "float64",
      "int8",
      "int16",
      "int32",
      "int64",
      "string",
      "uint8",
      "uint16",
      "uint32",
      "uint64",
      "int",
      "uint",
      "uintptr",
      "rune"
    ],
    "literal": ["true", "false", "iota", "nil"],
    "built_in": [
      "append",
      "cap",
      "close",
      "complex",
      "copy",
      "imag",
      "len",
      "make",
      "new",
      "panic",
      "print",
      "println",
      "real",
      "recover",
      "delete"
    ]
  },
  illegal: "</",
  contains: [
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      className: "string",
      variants: [
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        Mode(
          begin: "`",
          end: "`",
        ),
      ],
    ),
    Mode(
      className: "number",
      variants: [
        Mode(
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)[i]",
          relevance: 1,
        ),
        C_NUMBER_MODE,
      ],
    ),
    Mode(
      begin: ":=",
    ),
    Mode(
      className: "function",
      beginKeywords: "func",
      end: "\\s*(\\{|\$)",
      excludeEnd: true,
      contains: [
        TITLE_MODE,
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          endsParent: true,
          keywords: {
            "keyword": [
              "break",
              "case",
              "chan",
              "const",
              "continue",
              "default",
              "defer",
              "else",
              "fallthrough",
              "for",
              "func",
              "go",
              "goto",
              "if",
              "import",
              "interface",
              "map",
              "package",
              "range",
              "return",
              "select",
              "struct",
              "switch",
              "type",
              "var"
            ],
            "type": [
              "bool",
              "byte",
              "complex64",
              "complex128",
              "error",
              "float32",
              "float64",
              "int8",
              "int16",
              "int32",
              "int64",
              "string",
              "uint8",
              "uint16",
              "uint32",
              "uint64",
              "int",
              "uint",
              "uintptr",
              "rune"
            ],
            "literal": ["true", "false", "iota", "nil"],
            "built_in": [
              "append",
              "cap",
              "close",
              "complex",
              "copy",
              "imag",
              "len",
              "make",
              "new",
              "panic",
              "print",
              "println",
              "real",
              "recover",
              "delete"
            ]
          },
          illegal: "[\"']",
        ),
      ],
    ),
  ],
);

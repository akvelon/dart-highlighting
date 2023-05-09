// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final protobuf = Language(
  id: "protobuf",
  refs: {},
  name: "Protocol Buffers",
  aliases: ["proto"],
  keywords: {
    "keyword": [
      "package",
      "import",
      "option",
      "optional",
      "required",
      "repeated",
      "group",
      "oneof"
    ],
    "type": [
      "double",
      "float",
      "int32",
      "int64",
      "uint32",
      "uint64",
      "sint32",
      "sint64",
      "fixed32",
      "fixed64",
      "sfixed32",
      "sfixed64",
      "bool",
      "string",
      "bytes"
    ],
    "literal": ["true", "false"]
  },
  contains: [
    QUOTE_STRING_MODE,
    NUMBER_MODE,
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      match: ["(message|enum|service)\\s+", "[a-zA-Z]\\w*"],
      scope: {"1": "keyword", "2": "title.class"},
    ),
    Mode(
      className: "function",
      beginKeywords: "rpc",
      end: "[{;]",
      excludeEnd: true,
      keywords: "rpc returns",
    ),
    Mode(
      begin: "^\\s*[A-Z_]+(?=\\s*=[^\\n]+;\$)",
    ),
  ],
);

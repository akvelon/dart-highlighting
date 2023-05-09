// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final step21 = Language(
  id: "step21",
  refs: {},
  name: "STEP Part 21",
  aliases: ["p21", "step", "stp"],
  case_insensitive: true,
  keywords: {
    "\$pattern": "[A-Z_][A-Z0-9_.]*",
    "keyword": ["HEADER", "ENDSEC", "DATA"]
  },
  contains: [
    Mode(
      className: "meta",
      begin: "ISO-10303-21;",
      relevance: 10,
    ),
    Mode(
      className: "meta",
      begin: "END-ISO-10303-21;",
      relevance: 10,
    ),
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      scope: "comment",
      begin: "/\\*\\*!",
      end: "\\*/",
      contains: [
        Mode(
          scope: "doctag",
          begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
          excludeBegin: true,
          relevance: 0,
        ),
        Mode(
          begin:
              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
        ),
      ],
    ),
    C_NUMBER_MODE,
    Mode(
      scope: "string",
      begin: "'",
      end: "'",
      illegal: null,
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    Mode(
      scope: "string",
      begin: "\"",
      end: "\"",
      illegal: null,
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    Mode(
      className: "string",
      begin: "'",
      end: "'",
    ),
    Mode(
      className: "symbol",
      variants: [
        Mode(
          begin: "#",
          end: "\\d+",
          illegal: "\\W",
        ),
      ],
    ),
  ],
);

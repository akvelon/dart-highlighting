// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final cypher = Language(
  id: "cypher",
  refs: {},
  case_insensitive: true,
  keywords: {
    "keyword":
        "as asc ascending assert by call case commit constraint create csv cypher delete desc descending detach distinct drop else end ends explain fieldterminator foreach from headers in index is join limit load match merge on optional order periodic profile remove return scan set skip start starts then union unique unwind using when where with yield",
    "literal": "true false null"
  },
  contains: [
    QUOTE_STRING_MODE,
    APOS_STRING_MODE,
    C_NUMBER_MODE,
    Mode(
      className: "string",
      begin: "`",
      end: "`",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    Mode(
      className: "type",
      begin: "((-|>)?\\s?\\(|-\\[)\\w*:",
      excludeBegin: true,
      end: "\\W",
      excludeEnd: true,
    ),
    Mode(
      className: "functionCall",
      begin: "(\\s+|,)\\w+\\(",
      end: "\\)",
      keywords: {
        "built_in":
            "all any exists none single coalesce endNode head id last length properties size startNode timestamp toBoolean toFloat toInteger type avg collect count max min percentileCont percentileDisc stDev stDevP sum extract filter keys labels nodes range reduce relationships reverse tail abs ceil floor rand round sign e exp log log10 sqrt acos asin atan atan2 cos cot degrees haversin pi radians sin tan left ltrim replace reverse right rtrim split substring toLower toString toUpper trim distance"
      },
    ),
    C_BLOCK_COMMENT_MODE,
    C_LINE_COMMENT_MODE,
    Mode(
      begin: "//",
    ),
  ],
);

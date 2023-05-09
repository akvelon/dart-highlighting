// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final roboconf = Language(
  id: "roboconf",
  refs: {
    '~contains~0~contains~0': Mode(
      className: "attribute",
      begin: "[a-zA-Z-_]+",
      end: "\\s*:",
      excludeEnd: true,
      starts: Mode(
        end: ";",
        relevance: 0,
        contains: [
          Mode(
            className: "variable",
            begin: "\\.[a-zA-Z-_]+",
          ),
          Mode(
            className: "keyword",
            begin: "\\(optional\\)",
          ),
        ],
      ),
    ),
  },
  name: "Roboconf",
  aliases: ["graph", "instances"],
  case_insensitive: true,
  keywords: "import",
  contains: [
    Mode(
      begin: "^facet [a-zA-Z-_][^\\n{]+\\{",
      end: "\\}",
      keywords: "facet",
      contains: [
        ModeReference('~contains~0~contains~0'),
        HASH_COMMENT_MODE,
      ],
    ),
    Mode(
      begin: "^\\s*instance of [a-zA-Z-_][^\\n{]+\\{",
      end: "\\}",
      keywords: "name count channels instance-data instance-state instance of",
      illegal: "\\S",
      contains: [
        ModeSelfReference(),
        ModeReference('~contains~0~contains~0'),
        HASH_COMMENT_MODE,
      ],
    ),
    Mode(
      begin: "^[a-zA-Z-_][^\\n{]+\\{",
      end: "\\}",
      contains: [
        ModeReference('~contains~0~contains~0'),
        HASH_COMMENT_MODE,
      ],
    ),
    HASH_COMMENT_MODE,
  ],
);

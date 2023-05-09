// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final nestedtext = Language(
  id: "nestedtext",
  refs: {},
  name: "Nested Text",
  aliases: ["nt"],
  contains: [
    Mode(
      scope: "comment",
      begin: "^\\s*(?=#)",
      end: "\$",
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
      excludeBegin: true,
    ),
    Mode(
      variants: [
        Mode(
          match: ["^\\s*", "-", "[ ]", ".*\$"],
        ),
        Mode(
          match: ["^\\s*", "-\$"],
        ),
      ],
      className: {"2": "bullet", "4": "string"},
    ),
    Mode(
      match: ["^\\s*", ">", "[ ]", ".*\$"],
      className: {"2": "punctuation", "4": "string"},
    ),
    Mode(
      match: ["^\\s*(?=\\S)", "[^:]+", ":\\s*", "\$"],
      className: {"2": "attribute", "3": "punctuation"},
    ),
    Mode(
      match: ["^\\s*(?=\\S)", "[^:]*[^: ]", "[ ]*:", "[ ]", ".*\$"],
      className: {"2": "attribute", "3": "punctuation", "5": "string"},
    ),
  ],
);

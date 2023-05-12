// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final mdeXcore = Language(
  id: "mde-xcore",
  refs: {},
  keywords: {
    "keyword":
        "package import abstract class extends enum interface type wraps op annotation as contains container opposite refers val derived get set unsettable for try catch if else throw return create convert new @Ecore @Import @GenModel ",
    "literal": "true false null ",
    "built_in":
        "BigDecimal BigInteger Boolean Byte Character Class Date Double Float Integer Long Object Short String boolean int "
  },
  contains: [
    Mode(
      className: "string",
      begin: "'",
      end: "'",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(
          begin: "\"\"",
        ),
      ],
    ),
    NUMBER_MODE,
    Mode(
      scope: "comment",
      begin: "--",
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
    ),
    Mode(
      className: "class",
      beginKeywords: "class interface",
      end: "[{;=]",
      excludeEnd: true,
      keywords: "class extends interface",
      illegal: "[:\"\\[\\]]",
      contains: [
        Mode(
          beginKeywords: "extends",
        ),
        UNDERSCORE_TITLE_MODE,
      ],
    ),
  ],
);

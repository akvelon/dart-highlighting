// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final smalltalk = Language(
  id: "smalltalk",
  refs: {
    '~contains~6': Mode(
      className: "string",
      begin: "\\\$.{1}",
    ),
    '~contains~5': Mode(
      className: "symbol",
      begin: "#[a-zA-Z_]\\w*",
    ),
  },
  name: "Smalltalk",
  aliases: ["st"],
  keywords: ["self", "super", "nil", "true", "false", "thisContext"],
  contains: [
    Mode(
      scope: "comment",
      begin: "\"",
      end: "\"",
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
    APOS_STRING_MODE,
    Mode(
      className: "type",
      begin: "\\b[A-Z][A-Za-z0-9_]*",
      relevance: 0,
    ),
    Mode(
      begin: "[a-z][a-zA-Z0-9_]*:",
      relevance: 0,
    ),
    C_NUMBER_MODE,
    ModeReference('~contains~5'),
    ModeReference('~contains~6'),
    Mode(
      begin: "\\|[ ]*[a-z][a-zA-Z0-9_]*([ ]+[a-z][a-zA-Z0-9_]*)*[ ]*\\|",
      returnBegin: true,
      end: "\\|",
      illegal: "\\S",
      contains: [
        Mode(
          begin: "(\\|[ ]*)?[a-z][a-zA-Z0-9_]*",
        ),
      ],
    ),
    Mode(
      begin: "#\\(",
      end: "\\)",
      contains: [
        APOS_STRING_MODE,
        ModeReference('~contains~6'),
        C_NUMBER_MODE,
        ModeReference('~contains~5'),
      ],
    ),
  ],
);

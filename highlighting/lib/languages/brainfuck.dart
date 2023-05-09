// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final brainfuck = Language(
  id: "brainfuck",
  refs: {
    '~contains~3~contains~0': Mode(
      className: "literal",
      begin: "[+-]+",
      relevance: 0,
    ),
  },
  name: "Brainfuck",
  aliases: ["bf"],
  contains: [
    Mode(
      scope: "comment",
      begin: "[^\\[\\]\\.,\\+\\-<> \\r\\n]",
      end: "[\\[\\]\\.,\\+\\-<> \\r\\n]",
      contains: [
        Mode(
          match: "[ ]+[^\\[\\]\\.,\\+\\-<> \\r\\n]",
          relevance: 0,
        ),
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
      returnEnd: true,
      relevance: 0,
    ),
    Mode(
      className: "title",
      begin: "[\\[\\]]",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "[\\.,]",
      relevance: 0,
    ),
    Mode(
      begin: "(?=\\+\\+|--)",
      contains: [
        ModeReference('~contains~3~contains~0'),
      ],
    ),
    ModeReference('~contains~3~contains~0'),
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final prolog = Language(
  id: "prolog",
  refs: {
    '~contains~2~contains~4~contains~9': Mode(
      className: "string",
      begin: "`",
      end: "`",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~2~contains~4~contains~5': Mode(
      className: "comment",
      begin: "%",
      end: "\$",
      contains: [
        PHRASAL_WORDS_MODE,
      ],
    ),
    '~contains~2~contains~4~contains~11': Mode(
      className: "string",
      begin: "0'\\\\s",
    ),
    '~contains~2~contains~4~contains~10': Mode(
      className: "string",
      begin: "0'(\\\\'|.)",
    ),
    '~contains~2~contains~4': Mode(
      begin: "\\[",
      end: "\\]",
      contains: [
        ModeReference('~contains~0'),
        ModeReference('~contains~1'),
        ModeReference('~contains~2'),
        ModeReference('~contains~2~contains~3'),
        ModeReference('~contains~2~contains~4'),
        ModeReference('~contains~2~contains~4~contains~5'),
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        ModeReference('~contains~2~contains~4~contains~9'),
        ModeReference('~contains~2~contains~4~contains~10'),
        ModeReference('~contains~2~contains~4~contains~11'),
        C_NUMBER_MODE,
      ],
    ),
    '~contains~2~contains~3': Mode(
      begin: ":-",
    ),
    '~contains~2': Mode(
      begin: "\\(",
      end: "\\)",
      relevance: 0,
      contains: [
        ModeReference('~contains~0'),
        ModeReference('~contains~1'),
        ModeReference('~contains~2'),
        ModeReference('~contains~2~contains~3'),
        ModeReference('~contains~2~contains~4'),
        ModeReference('~contains~2~contains~4~contains~5'),
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        ModeReference('~contains~2~contains~4~contains~9'),
        ModeReference('~contains~2~contains~4~contains~10'),
        ModeReference('~contains~2~contains~4~contains~11'),
        C_NUMBER_MODE,
      ],
    ),
    '~contains~1': Mode(
      className: "symbol",
      variants: [
        Mode(
          begin: "[A-Z][a-zA-Z0-9_]*",
        ),
        Mode(
          begin: "_[A-Za-z0-9_]*",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0': Mode(
      begin: "[a-z][A-Za-z0-9_]*",
      relevance: 0,
    ),
  },
  name: "Prolog",
  contains: [
    ModeReference('~contains~0'),
    ModeReference('~contains~1'),
    ModeReference('~contains~2'),
    ModeReference('~contains~2~contains~3'),
    ModeReference('~contains~2~contains~4'),
    ModeReference('~contains~2~contains~4~contains~5'),
    C_BLOCK_COMMENT_MODE,
    QUOTE_STRING_MODE,
    APOS_STRING_MODE,
    ModeReference('~contains~2~contains~4~contains~9'),
    ModeReference('~contains~2~contains~4~contains~10'),
    ModeReference('~contains~2~contains~4~contains~11'),
    C_NUMBER_MODE,
    Mode(
      begin: "\\.\$",
    ),
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final lisp = Language(
  id: "lisp",
  refs: {
    '~contains~7': Mode(
      begin: "\\(\\s*",
      end: "\\)",
      contains: [
        Mode(
          className: "name",
          variants: [
            Mode(
              begin: "[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
              relevance: 0,
            ),
            Mode(
              begin: "\\|[^]*?\\|",
            ),
          ],
        ),
        Mode(
          endsWithParent: true,
          relevance: 0,
          contains: [
            ModeReference('~contains~5'),
            ModeReference('~contains~6'),
            ModeReference('~contains~7'),
            ModeReference('~contains~2'),
            ModeReference('~contains~0'),
            ModeReference('~contains~3'),
            ModeReference('~contains~4'),
            ModeReference('~contains~5~contains~2'),
            ModeReference('~contains~5~contains~3'),
            Mode(
              begin: "\\|[^]*?\\|",
            ),
            ModeReference('~contains~5~contains~4~contains~4'),
          ],
        ),
      ],
    ),
    '~contains~6': Mode(
      variants: [
        Mode(
          begin: "'[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
        ),
        Mode(
          begin:
              "#'[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*(::[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*)*",
        ),
      ],
    ),
    '~contains~5~contains~4~contains~4': Mode(
      begin: "[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
      relevance: 0,
    ),
    '~contains~5~contains~3': Mode(
      className: "symbol",
      begin: "[:&][a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
    ),
    '~contains~5~contains~2': Mode(
      begin: "\\*",
      end: "\\*",
    ),
    '~contains~5': Mode(
      contains: [
        ModeReference('~contains~0'),
        ModeReference('~contains~3'),
        ModeReference('~contains~5~contains~2'),
        ModeReference('~contains~5~contains~3'),
        Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            ModeSelfReference(),
            ModeReference('~contains~2'),
            ModeReference('~contains~3'),
            ModeReference('~contains~0'),
            ModeReference('~contains~5~contains~4~contains~4'),
          ],
        ),
        ModeReference('~contains~5~contains~4~contains~4'),
      ],
      variants: [
        Mode(
          begin: "['`]\\(",
          end: "\\)",
        ),
        Mode(
          begin: "\\(quote ",
          end: "\\)",
          keywords: {"name": "quote"},
        ),
        Mode(
          begin: "'\\|[^]*?\\|",
        ),
      ],
    ),
    '~contains~4': Mode(
      scope: "comment",
      begin: ";",
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
      relevance: 0,
    ),
    '~contains~3': Mode(
      scope: "string",
      begin: "\"",
      end: "\"",
      illegal: null,
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~2': Mode(
      className: "literal",
      begin: "\\b(t{1}|nil)\\b",
    ),
    '~contains~0': Mode(
      className: "number",
      variants: [
        Mode(
          begin:
              "(-|\\+)?\\d+(\\.\\d+|\\/\\d+)?((d|e|f|l|s|D|E|F|L|S)(\\+|-)?\\d+)?",
          relevance: 0,
        ),
        Mode(
          begin: "#(b|B)[0-1]+(/[0-1]+)?",
        ),
        Mode(
          begin: "#(o|O)[0-7]+(/[0-7]+)?",
        ),
        Mode(
          begin: "#(x|X)[0-9a-fA-F]+(/[0-9a-fA-F]+)?",
        ),
        Mode(
          begin:
              "#(c|C)\\((-|\\+)?\\d+(\\.\\d+|\\/\\d+)?((d|e|f|l|s|D|E|F|L|S)(\\+|-)?\\d+)? +(-|\\+)?\\d+(\\.\\d+|\\/\\d+)?((d|e|f|l|s|D|E|F|L|S)(\\+|-)?\\d+)?",
          end: "\\)",
        ),
      ],
    ),
  },
  name: "Lisp",
  illegal: "\\S",
  contains: [
    ModeReference('~contains~0'),
    Mode(
      scope: "meta",
      begin: "^#![ ]*\\/",
      end: "\$",
      relevance: 0,
      onBegin: shebangOnBegin,
    ),
    ModeReference('~contains~2'),
    ModeReference('~contains~3'),
    ModeReference('~contains~4'),
    ModeReference('~contains~5'),
    ModeReference('~contains~6'),
    ModeReference('~contains~7'),
    ModeReference('~contains~5~contains~4~contains~4'),
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final elm = Language(
  id: "elm",
  refs: {
    '~contains~2~contains~0': Mode(
      className: "type",
      begin: "\\b[A-Z][\\w']*",
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1': Mode(
      variants: [
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
          scope: "comment",
          begin: "\\{-",
          end: "-\\}",
          contains: [
            ModeSelfReference(),
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
      ],
    ),
    '~contains~0~contains~0~contains~0': Mode(
      className: "type",
      begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?",
    ),
    '~contains~0~contains~0': Mode(
      begin: "\\(",
      end: "\\)",
      illegal: "\"",
      contains: [
        ModeReference('~contains~0~contains~0~contains~0'),
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
    ),
  },
  name: "Elm",
  keywords: [
    "let",
    "in",
    "if",
    "then",
    "else",
    "case",
    "of",
    "where",
    "module",
    "import",
    "exposing",
    "type",
    "alias",
    "as",
    "infix",
    "infixl",
    "infixr",
    "port",
    "effect",
    "command",
    "subscription"
  ],
  contains: [
    Mode(
      beginKeywords: "port effect module",
      end: "exposing",
      keywords: "port effect module where command subscription exposing",
      contains: [
        ModeReference('~contains~0~contains~0'),
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
      illegal: "\\W\\.|;",
    ),
    Mode(
      begin: "import",
      end: "\$",
      keywords: "import as exposing",
      contains: [
        ModeReference('~contains~0~contains~0'),
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
      illegal: "\\W\\.|;",
    ),
    Mode(
      begin: "type",
      end: "\$",
      keywords: "type alias",
      contains: [
        ModeReference('~contains~2~contains~0'),
        ModeReference('~contains~0~contains~0'),
        Mode(
          begin: "\\{",
          end: "\\}",
          contains: [
            ModeReference('~contains~0~contains~0~contains~0'),
            ModeReference('~contains~0~contains~0~contains~1'),
          ],
        ),
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
    ),
    Mode(
      beginKeywords: "infix infixl infixr",
      end: "\$",
      contains: [
        C_NUMBER_MODE,
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
    ),
    Mode(
      begin: "port",
      end: "\$",
      keywords: "port",
      contains: [
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
    ),
    Mode(
      className: "string",
      begin: "'\\\\?.",
      end: "'",
      illegal: ".",
    ),
    QUOTE_STRING_MODE,
    C_NUMBER_MODE,
    ModeReference('~contains~2~contains~0'),
    Mode(
      scope: "title",
      begin: "^[_a-z][\\w']*",
      relevance: 0,
    ),
    ModeReference('~contains~0~contains~0~contains~1'),
    Mode(
      begin: "->|<-",
    ),
  ],
  illegal: ";",
);

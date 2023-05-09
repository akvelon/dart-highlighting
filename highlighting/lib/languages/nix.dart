// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final nix = Language(
  id: "nix",
  refs: {
    '~contains~3~contains~1~contains~4': Mode(
      begin: "[a-zA-Z0-9-_]+(\\s*=)",
      returnBegin: true,
      relevance: 0,
      contains: [
        Mode(
          className: "attr",
          begin: "\\S+",
          relevance: 0.2,
        ),
      ],
    ),
    '~contains~3': Mode(
      className: "string",
      contains: [
        Mode(
          className: "char.escape",
          begin: "''\\\$",
        ),
        Mode(
          className: "subst",
          begin: "\\\$\\{",
          end: "\\}",
          keywords: {
            "keyword": [
              "rec",
              "with",
              "let",
              "in",
              "inherit",
              "assert",
              "if",
              "else",
              "then"
            ],
            "literal": ["true", "false", "or", "and", "null"],
            "built_in": [
              "import",
              "abort",
              "baseNameOf",
              "dirOf",
              "isNull",
              "builtins",
              "map",
              "removeAttrs",
              "throw",
              "toString",
              "derivation"
            ]
          },
          contains: [
            NUMBER_MODE,
            HASH_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            ModeReference('~contains~3'),
            ModeReference('~contains~3~contains~1~contains~4'),
          ],
        ),
      ],
      variants: [
        Mode(
          begin: "''",
          end: "''",
        ),
        Mode(
          begin: "\"",
          end: "\"",
        ),
      ],
    ),
  },
  name: "Nix",
  aliases: ["nixos"],
  keywords: {
    "keyword": [
      "rec",
      "with",
      "let",
      "in",
      "inherit",
      "assert",
      "if",
      "else",
      "then"
    ],
    "literal": ["true", "false", "or", "and", "null"],
    "built_in": [
      "import",
      "abort",
      "baseNameOf",
      "dirOf",
      "isNull",
      "builtins",
      "map",
      "removeAttrs",
      "throw",
      "toString",
      "derivation"
    ]
  },
  contains: [
    NUMBER_MODE,
    HASH_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    ModeReference('~contains~3'),
    ModeReference('~contains~3~contains~1~contains~4'),
  ],
);

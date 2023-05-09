// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final mathematica = Language(
  id: "mathematica",
  refs: {},
  name: "Mathematica",
  aliases: ["mma", "wl"],
  classNameAliases: {
    "brace": "punctuation",
    "pattern": "type",
    "slot": "type",
    "symbol": "variable",
    "named-character": "variable",
    "builtin-symbol": "built_in",
    "message-name": "string"
  },
  contains: [
    Mode(
      scope: "comment",
      begin: "\\(\\*",
      end: "\\*\\)",
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
    Mode(
      className: "pattern",
      relevance: 0,
      begin: "([a-zA-Z\$][a-zA-Z0-9\$]*)?_+([a-zA-Z\$][a-zA-Z0-9\$]*)?",
    ),
    Mode(
      className: "slot",
      relevance: 0,
      begin: "#[a-zA-Z\$][a-zA-Z0-9\$]*|#+[0-9]?",
    ),
    Mode(
      className: "message-name",
      relevance: 0,
      begin: "::[a-zA-Z\$][a-zA-Z0-9\$]*",
    ),
    Mode(
      variants: [
        Mode(
          className: "builtin-symbol",
          begin: "[a-zA-Z\$][a-zA-Z0-9\$]*",
          onBegin: language_mathematica_contains_0_variants_0_onBegin,
        ),
        Mode(
          className: "symbol",
          relevance: 0,
          begin: "[a-zA-Z\$][a-zA-Z0-9\$]*",
        ),
      ],
    ),
    Mode(
      className: "named-character",
      begin: "\\\\\\[[\$a-zA-Z][\$a-zA-Z0-9]+\\]",
    ),
    QUOTE_STRING_MODE,
    Mode(
      className: "number",
      relevance: 0,
      begin:
          "(?:([2-9]|[1-2]\\d|[3][0-5])\\^\\^(\\w*\\.\\w+|\\w+\\.\\w*|\\w+)|(\\d*\\.\\d+|\\d+\\.\\d*|\\d+))(?:(?:``[+-]?(\\d*\\.\\d+|\\d+\\.\\d*|\\d+)|`([+-]?(\\d*\\.\\d+|\\d+\\.\\d*|\\d+))?))?(?:\\*\\^[+-]?\\d+)?",
    ),
    Mode(
      className: "operator",
      relevance: 0,
      begin: "[+\\-*/,;.:@\\x7e=><&|_`'^?!%]+",
    ),
    Mode(
      className: "brace",
      relevance: 0,
      begin: "[[\\](){}]",
    ),
  ],
);

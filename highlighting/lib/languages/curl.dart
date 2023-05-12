// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final curl = Language(
  id: "curl",
  refs: {},
  name: "curl",
  aliases: ["curl"],
  keywords: "curl",
  case_insensitive: true,
  contains: [
    Mode(
      className: "literal",
      begin: "(--request|-X)\\s",
      contains: [
        Mode(
          className: "symbol",
          begin: "(get|post|delete|options|head|put|patch|trace|connect)",
          end: "\\s",
          returnEnd: true,
        ),
      ],
      returnEnd: true,
      relevance: 10,
    ),
    Mode(
      className: "literal",
      begin: "--",
      end: "[\\s\"]",
      returnEnd: true,
      relevance: 0,
    ),
    Mode(
      className: "literal",
      begin: "-\\w",
      end: "[\\s\"]",
      returnEnd: true,
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(
          className: "variable",
          begin: "\\\$\\(",
          end: "\\)",
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
      ],
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\\\\\"",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "'",
      end: "'",
      relevance: 0,
    ),
    APOS_STRING_MODE,
    QUOTE_STRING_MODE,
    Mode(
      className: "number",
      variants: [
        Mode(
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
        ),
      ],
      relevance: 0,
    ),
    Mode(
      match: "(\\/[a-z._-]+)+",
    ),
  ],
);

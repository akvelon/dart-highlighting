// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final scala = Language(
  id: "scala",
  refs: {
    '~contains~4~contains~0': Mode(
      className: "title",
      begin:
          "[^0-9\\n\\t \"'(),.`{}\\[\\]:;][^\\n\\t \"'(),.`{}\\[\\]:;]+|[^0-9\\n\\t \"'(),.`{}\\[\\]:;=]",
      relevance: 0,
    ),
    '~contains~3': Mode(
      className: "type",
      begin: "\\b[A-Z][A-Za-z0-9_]*",
      relevance: 0,
    ),
    '~contains~2~variants~2~contains~1': Mode(
      className: "subst",
      variants: [
        Mode(
          begin: "\\\$[A-Za-z0-9_]+",
        ),
        Mode(
          begin: "\\\$\\{",
          end: "\\}",
        ),
      ],
    ),
  },
  name: "Scala",
  keywords: {
    "literal": "true false null",
    "keyword":
        "type yield lazy override def with val var sealed abstract private trait object if then forSome for while do throw finally protected extends import final return else break new catch super class case package default try this match continue throws implicit export enum given transparent"
  },
  contains: [
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      className: "string",
      variants: [
        Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
        ),
        Mode(
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
        Mode(
          begin: "[a-z]+\"",
          end: "\"",
          illegal: "\\n",
          contains: [
            BACKSLASH_ESCAPE,
            ModeReference('~contains~2~variants~2~contains~1'),
          ],
        ),
        Mode(
          className: "string",
          begin: "[a-z]+\"\"\"",
          end: "\"\"\"",
          contains: [
            ModeReference('~contains~2~variants~2~contains~1'),
          ],
          relevance: 10,
        ),
      ],
    ),
    ModeReference('~contains~3'),
    Mode(
      className: "function",
      beginKeywords: "def",
      end: "(?=[:={\\[(\\n;])",
      contains: [
        ModeReference('~contains~4~contains~0'),
      ],
    ),
    Mode(
      className: "class",
      beginKeywords: "class object trait type",
      end: "[:={\\[\\n;]",
      excludeEnd: true,
      contains: [
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        Mode(
          beginKeywords: "extends with",
          relevance: 10,
        ),
        Mode(
          begin: "\\[",
          end: "\\]",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0,
          contains: [
            ModeReference('~contains~3'),
          ],
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0,
          contains: [
            ModeReference('~contains~3'),
          ],
        ),
        ModeReference('~contains~4~contains~0'),
      ],
    ),
    C_NUMBER_MODE,
    Mode(
      begin: ["^\\s*", "extension", "\\s+(?=[[(])"],
      beginScope: {"2": "keyword"},
    ),
    Mode(
      begin: ["^\\s*", "end", "\\s+", "(extension\\b)?"],
      beginScope: {"2": "keyword", "4": "keyword"},
    ),
    Mode(
      match: "\\.inline\\b",
    ),
    Mode(
      begin: "\\binline(?=\\s)",
      keywords: "inline",
    ),
    Mode(
      begin: ["\\(\\s*", "using", "\\s+(?!\\))"],
      beginScope: {"2": "keyword"},
    ),
    Mode(
      className: "meta",
      begin: "@[A-Za-z]+",
    ),
  ],
);

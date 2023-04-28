// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final flix = Language(
  id: "flix",
  refs: {},
  name: "Flix",
  keywords: {
    "keyword": [
      "case",
      "class",
      "def",
      "else",
      "enum",
      "if",
      "impl",
      "import",
      "in",
      "lat",
      "rel",
      "index",
      "let",
      "match",
      "namespace",
      "switch",
      "type",
      "yield",
      "with"
    ],
    "literal": ["true", "false"]
  },
  contains: [
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      className: "string",
      begin: "'(.|\\\\[xXuU][a-zA-Z0-9]+)'",
    ),
    Mode(
      className: "string",
      variants: [
        Mode(
          begin: "\"",
          end: "\"",
        ),
      ],
    ),
    Mode(
      className: "function",
      beginKeywords: "def",
      end: "[:={\\[(\\n;]",
      excludeEnd: true,
      contains: [
        Mode(
          className: "title",
          relevance: 0,
          begin:
              "[^0-9\\n\\t \"'(),.`{}\\[\\]:;][^\\n\\t \"'(),.`{}\\[\\]:;]+|[^0-9\\n\\t \"'(),.`{}\\[\\]:;=]",
        ),
      ],
    ),
    C_NUMBER_MODE,
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final actionscript = Language(
  id: "actionscript",
  refs: {},
  name: "ActionScript",
  aliases: ["as"],
  keywords: {
    "keyword": [
      "as",
      "break",
      "case",
      "catch",
      "class",
      "const",
      "continue",
      "default",
      "delete",
      "do",
      "dynamic",
      "each",
      "else",
      "extends",
      "final",
      "finally",
      "for",
      "function",
      "get",
      "if",
      "implements",
      "import",
      "in",
      "include",
      "instanceof",
      "interface",
      "internal",
      "is",
      "namespace",
      "native",
      "new",
      "override",
      "package",
      "private",
      "protected",
      "public",
      "return",
      "set",
      "static",
      "super",
      "switch",
      "this",
      "throw",
      "try",
      "typeof",
      "use",
      "var",
      "void",
      "while",
      "with"
    ],
    "literal": ["true", "false", "null", "undefined"]
  },
  contains: [
    APOS_STRING_MODE,
    QUOTE_STRING_MODE,
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    C_NUMBER_MODE,
    Mode(
      match: [
        "\\bpackage",
        "\\s+",
        "[a-zA-Z_\$][a-zA-Z0-9_\$]*(\\.[a-zA-Z_\$][a-zA-Z0-9_\$]*)*"
      ],
      className: {"1": "keyword", "3": "title.class"},
    ),
    Mode(
      match: [
        "\\b(?:class|interface|extends|implements)",
        "\\s+",
        "[a-zA-Z_\$][a-zA-Z0-9_\$]*"
      ],
      className: {"1": "keyword", "3": "title.class"},
    ),
    Mode(
      className: "meta",
      beginKeywords: "import include",
      end: ";",
      keywords: {"keyword": "import include"},
    ),
    Mode(
      beginKeywords: "function",
      end: "[{;]",
      excludeEnd: true,
      illegal: "\\S",
      contains: [
        Mode(
          scope: "title",
          begin: "[a-zA-Z]\\w*",
          relevance: 0,
          className: "title.function",
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          contains: [
            APOS_STRING_MODE,
            QUOTE_STRING_MODE,
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            Mode(
              className: "rest_arg",
              begin: "[.]{3}",
              end: "[a-zA-Z_\$][a-zA-Z0-9_\$]*",
              relevance: 10,
            ),
          ],
        ),
        Mode(
          begin: ":\\s*([*]|[a-zA-Z_\$][a-zA-Z0-9_\$]*)",
        ),
      ],
    ),
    METHOD_GUARD,
  ],
  illegal: "#",
);

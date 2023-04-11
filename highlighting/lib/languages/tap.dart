// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final tap = Mode(
    refs: {},
    name: "Test Anything Protocol",
    case_insensitive: true,
    contains: [
      HASH_COMMENT_MODE,
      Mode(className: "meta", variants: [
        Mode(begin: "^TAP version (\\d+)\$"),
        Mode(begin: "^1\\.\\.(\\d+)\$")
      ]),
      Mode(
          begin: "---\$",
          end: "\\.\\.\\.\$",
          subLanguage: ["yaml"],
          relevance: 0),
      Mode(className: "number", begin: " (\\d+) "),
      Mode(
          className: "symbol",
          variants: [Mode(begin: "^ok"), Mode(begin: "^not ok")])
    ]);

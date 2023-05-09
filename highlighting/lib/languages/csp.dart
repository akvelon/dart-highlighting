// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final csp = Language(
  id: "csp",
  refs: {},
  name: "CSP",
  case_insensitive: false,
  keywords: {
    "\$pattern": "[a-zA-Z][a-zA-Z0-9_-]*",
    "keyword": [
      "base-uri",
      "child-src",
      "connect-src",
      "default-src",
      "font-src",
      "form-action",
      "frame-ancestors",
      "frame-src",
      "img-src",
      "manifest-src",
      "media-src",
      "object-src",
      "plugin-types",
      "report-uri",
      "sandbox",
      "script-src",
      "style-src",
      "trusted-types",
      "unsafe-hashes",
      "worker-src"
    ]
  },
  contains: [
    Mode(
      className: "string",
      begin: "'",
      end: "'",
    ),
    Mode(
      className: "attribute",
      begin: "^Content",
      end: ":",
      excludeEnd: true,
    ),
  ],
);

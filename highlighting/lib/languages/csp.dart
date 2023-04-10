// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';
import 'common/nulls.dart';

final csp = Mode(
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
      Mode(className: "string", begin: "'", end: "'"),
      Mode(
          className: "attribute", begin: "^Content", end: ":", excludeEnd: true)
    ]);

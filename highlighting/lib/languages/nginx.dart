// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final nginx = Mode(
  refs: {
    '~contains~1~contains~5': Mode(
      className: "number",
      begin: "\\b\\d+[kKmMgGdshdwy]?\\b",
      relevance: 0,
    ),
    '~contains~1~contains~4': Mode(
      className: "number",
      begin: "\\b\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?\\b",
    ),
    '~contains~1~contains~3': Mode(
      className: "regexp",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~1~contains~1~contains~1'),
      ],
      variants: [
        Mode(
          begin: "\\s\\^",
          end: "\\s|\\{|;",
          returnEnd: true,
        ),
        Mode(
          begin: "\\x7e\\*?\\s+",
          end: "\\s|\\{|;",
          returnEnd: true,
        ),
        Mode(
          begin: "\\*(\\.[a-z\\-]+)+",
        ),
        Mode(
          begin: "([a-z\\-]+\\.)+\\*",
        ),
      ],
    ),
    '~contains~1~contains~2': Mode(
      begin: "([a-z]+):/",
      end: "\\s",
      endsWithParent: true,
      excludeEnd: true,
      contains: [
        Mode(ref: '~contains~1~contains~1~contains~1'),
      ],
    ),
    '~contains~1~contains~1~contains~1': Mode(
      className: "variable",
      variants: [
        Mode(
          begin: "\\\$\\d+",
        ),
        Mode(
          begin: "\\\$\\{\\w+\\}",
        ),
        Mode(
          begin: "[\$@][a-zA-Z_]\\w*",
        ),
      ],
    ),
    '~contains~1~contains~1': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~1~contains~1~contains~1'),
      ],
      variants: [
        Mode(
          begin: "\"",
          end: "\"",
        ),
        Mode(
          begin: "'",
          end: "'",
        ),
      ],
    ),
  },
  name: "Nginx config",
  aliases: ["nginxconf"],
  contains: [
    HASH_COMMENT_MODE,
    Mode(
      beginKeywords: "upstream location",
      end: ";|\\{",
      contains: [
        HASH_COMMENT_MODE,
        Mode(ref: '~contains~1~contains~1'),
        Mode(ref: '~contains~1~contains~2'),
        Mode(ref: '~contains~1~contains~3'),
        Mode(ref: '~contains~1~contains~4'),
        Mode(ref: '~contains~1~contains~5'),
        Mode(ref: '~contains~1~contains~1~contains~1'),
      ],
      keywords: {"section": "upstream location"},
    ),
    Mode(
      className: "section",
      begin: "[a-zA-Z_]\\w*(?=\\s+\\{)",
      relevance: 0,
    ),
    Mode(
      begin: "(?=[a-zA-Z_]\\w*\\s)",
      end: ";|\\{",
      contains: [
        Mode(
          className: "attribute",
          begin: "[a-zA-Z_]\\w*",
          starts: Mode(
            endsWithParent: true,
            keywords: {
              "\$pattern": "[a-z_]{2,}|\\/dev\\/poll",
              "literal": [
                "on",
                "off",
                "yes",
                "no",
                "true",
                "false",
                "none",
                "blocked",
                "debug",
                "info",
                "notice",
                "warn",
                "error",
                "crit",
                "select",
                "break",
                "last",
                "permanent",
                "redirect",
                "kqueue",
                "rtsig",
                "epoll",
                "poll",
                "/dev/poll"
              ]
            },
            relevance: 0,
            illegal: "=>",
            contains: [
              HASH_COMMENT_MODE,
              Mode(ref: '~contains~1~contains~1'),
              Mode(ref: '~contains~1~contains~2'),
              Mode(ref: '~contains~1~contains~3'),
              Mode(ref: '~contains~1~contains~4'),
              Mode(ref: '~contains~1~contains~5'),
              Mode(ref: '~contains~1~contains~1~contains~1'),
            ],
          ),
        ),
      ],
      relevance: 0,
    ),
  ],
  illegal: "[^\\s\\}\\{]",
);

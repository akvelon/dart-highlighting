// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final ini = Mode(
  refs: {
    '~contains~2~starts~contains~1~contains~4': Mode(
      className: "number",
      relevance: 0,
      variants: [
        Mode(
          begin: "([+-]+)?[\\d]+_[\\d_]+",
        ),
        Mode(
          begin: "\\b\\d+(\\.\\d+)?",
        ),
      ],
    ),
    '~contains~2~starts~contains~1~contains~3': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      variants: [
        Mode(
          begin: "'''",
          end: "'''",
          relevance: 10,
        ),
        Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
          relevance: 10,
        ),
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
    '~contains~2~starts~contains~1~contains~2': Mode(
      className: "variable",
      variants: [
        Mode(
          begin: "\\\$[\\w\\d\"][\\w\\d_]*",
        ),
        Mode(
          begin: "\\\$\\{(.*?)\\}",
        ),
      ],
    ),
    '~contains~2~starts~contains~1~contains~1': Mode(
      className: "literal",
      begin: "\\bon|off|true|false|yes|no\\b",
    ),
    '~contains~0': Mode(
      scope: "comment",
      contains: [
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
      variants: [
        Mode(
          begin: ";",
          end: "\$",
        ),
        Mode(
          begin: "#",
          end: "\$",
        ),
      ],
    ),
  },
  name: "TOML, also INI",
  aliases: ["toml"],
  case_insensitive: true,
  illegal: "\\S",
  contains: [
    Mode(ref: '~contains~0'),
    Mode(
      className: "section",
      begin: "\\[+",
      end: "\\]+",
    ),
    Mode(
      begin:
          "(?:[A-Za-z0-9_-]+|\"(\\\\\"|[^\"])*\"|'[^']*')(\\s*\\.\\s*(?:[A-Za-z0-9_-]+|\"(\\\\\"|[^\"])*\"|'[^']*'))*(?=\\s*=\\s*[^#\\s])",
      className: "attr",
      starts: Mode(
        end: "\$",
        contains: [
          Mode(ref: '~contains~0'),
          Mode(
            begin: "\\[",
            end: "\\]",
            contains: [
              Mode(ref: '~contains~0'),
              Mode(ref: '~contains~2~starts~contains~1~contains~1'),
              Mode(ref: '~contains~2~starts~contains~1~contains~2'),
              Mode(ref: '~contains~2~starts~contains~1~contains~3'),
              Mode(ref: '~contains~2~starts~contains~1~contains~4'),
              Mode(self: true),
            ],
            relevance: 0,
          ),
          Mode(ref: '~contains~2~starts~contains~1~contains~1'),
          Mode(ref: '~contains~2~starts~contains~1~contains~2'),
          Mode(ref: '~contains~2~starts~contains~1~contains~3'),
          Mode(ref: '~contains~2~starts~contains~1~contains~4'),
        ],
      ),
    ),
  ],
);

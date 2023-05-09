// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final handlebars = Language(
  id: "handlebars",
  refs: {
    '~contains~5~contains~0': Mode(
      begin:
          "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
      keywords: {
        "\$pattern": "[\\w.\\/]+",
        "built_in": [
          "action",
          "bindattr",
          "collection",
          "component",
          "concat",
          "debugger",
          "each",
          "each-in",
          "get",
          "hash",
          "if",
          "in",
          "input",
          "link-to",
          "loc",
          "log",
          "lookup",
          "mut",
          "outlet",
          "partial",
          "query-params",
          "render",
          "template",
          "textarea",
          "unbound",
          "unless",
          "view",
          "with",
          "yield"
        ]
      },
      className: "name",
    ),
    '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4': Mode(
      begin: "\\(",
      end: "\\)",
      contains: [
        Mode(
          begin:
              "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
          className: "name",
          keywords: {
            "\$pattern": "[\\w.\\/]+",
            "built_in": [
              "action",
              "bindattr",
              "collection",
              "component",
              "concat",
              "debugger",
              "each",
              "each-in",
              "get",
              "hash",
              "if",
              "in",
              "input",
              "link-to",
              "loc",
              "log",
              "lookup",
              "mut",
              "outlet",
              "partial",
              "query-params",
              "render",
              "template",
              "textarea",
              "unbound",
              "unless",
              "view",
              "with",
              "yield"
            ]
          },
          starts: Mode(
            contains: [
              NUMBER_MODE,
              QUOTE_STRING_MODE,
              APOS_STRING_MODE,
              ModeReference('~contains~4~contains~0~starts~contains~3'),
              ModeReference('~contains~4~contains~0~starts~contains~4'),
              ModeReference(
                  '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
              ModeReference(
                  '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4'),
            ],
            returnEnd: true,
            end: "\\)",
          ),
        ),
      ],
    ),
    '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3': Mode(
      begin:
          "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
      keywords: {
        "\$pattern": "[\\w.\\/]+",
        "literal": ["true", "false", "undefined", "null"]
      },
    ),
    '~contains~4~contains~0~starts~contains~4': Mode(
      className: "attr",
      begin:
          "(\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\\x7e]+)(?==)",
      relevance: 0,
      starts: Mode(
        begin: "=",
        end: "=",
        starts: Mode(
          contains: [
            NUMBER_MODE,
            QUOTE_STRING_MODE,
            APOS_STRING_MODE,
            ModeReference(
                '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
            ModeReference(
                '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4'),
          ],
        ),
      ),
    ),
    '~contains~4~contains~0~starts~contains~3': Mode(
      begin: "as\\s+\\|",
      keywords: {"keyword": "as"},
      end: "\\|",
      contains: [
        Mode(
          begin: "\\w+",
        ),
      ],
    ),
    '~contains~4~contains~0': Mode(
      begin:
          "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
      keywords: {
        "\$pattern": "[\\w.\\/]+",
        "built_in": [
          "action",
          "bindattr",
          "collection",
          "component",
          "concat",
          "debugger",
          "each",
          "each-in",
          "get",
          "hash",
          "if",
          "in",
          "input",
          "link-to",
          "loc",
          "log",
          "lookup",
          "mut",
          "outlet",
          "partial",
          "query-params",
          "render",
          "template",
          "textarea",
          "unbound",
          "unless",
          "view",
          "with",
          "yield"
        ]
      },
      className: "name",
      starts: Mode(
        contains: [
          NUMBER_MODE,
          QUOTE_STRING_MODE,
          APOS_STRING_MODE,
          ModeReference('~contains~4~contains~0~starts~contains~3'),
          ModeReference('~contains~4~contains~0~starts~contains~4'),
          ModeReference(
              '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
          ModeReference(
              '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4'),
        ],
        returnEnd: true,
        end: "\\}\\}",
      ),
    ),
    '~contains~10~contains~0': Mode(
      begin:
          "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
      className: "name",
      keywords: {
        "\$pattern": "[\\w.\\/]+",
        "built_in": [
          "action",
          "bindattr",
          "collection",
          "component",
          "concat",
          "debugger",
          "each",
          "each-in",
          "get",
          "hash",
          "if",
          "in",
          "input",
          "link-to",
          "loc",
          "log",
          "lookup",
          "mut",
          "outlet",
          "partial",
          "query-params",
          "render",
          "template",
          "textarea",
          "unbound",
          "unless",
          "view",
          "with",
          "yield"
        ]
      },
      starts: Mode(
        contains: [
          NUMBER_MODE,
          QUOTE_STRING_MODE,
          APOS_STRING_MODE,
          ModeReference('~contains~4~contains~0~starts~contains~3'),
          ModeReference('~contains~4~contains~0~starts~contains~4'),
          ModeReference(
              '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
          ModeReference(
              '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4'),
        ],
        returnEnd: true,
        end: "\\}\\}",
      ),
    ),
  },
  name: "Handlebars",
  aliases: ["hbs", "html.hbs", "html.handlebars", "htmlbars"],
  case_insensitive: true,
  subLanguage: ["xml"],
  contains: [
    Mode(
      begin: "\\\\\\{\\{",
      skip: true,
    ),
    Mode(
      begin: "\\\\\\\\(?=\\{\\{)",
      skip: true,
    ),
    Mode(
      scope: "comment",
      begin: "\\{\\{!--",
      end: "--\\}\\}",
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
    ),
    Mode(
      scope: "comment",
      begin: "\\{\\{!",
      end: "\\}\\}",
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
    ),
    Mode(
      className: "template-tag",
      begin: "\\{\\{\\{\\{(?!\\/)",
      end: "\\}\\}\\}\\}",
      contains: [
        ModeReference('~contains~4~contains~0'),
      ],
      starts: Mode(
        end: "\\{\\{\\{\\{\\/",
        returnEnd: true,
        subLanguage: ["xml"],
      ),
    ),
    Mode(
      className: "template-tag",
      begin: "\\{\\{\\{\\{\\/",
      end: "\\}\\}\\}\\}",
      contains: [
        ModeReference('~contains~5~contains~0'),
      ],
    ),
    Mode(
      className: "template-tag",
      begin: "\\{\\{#",
      end: "\\}\\}",
      contains: [
        ModeReference('~contains~4~contains~0'),
      ],
    ),
    Mode(
      className: "template-tag",
      begin: "\\{\\{(?=else\\}\\})",
      end: "\\}\\}",
      keywords: "else",
    ),
    Mode(
      className: "template-tag",
      begin: "\\{\\{(?=else if)",
      end: "\\}\\}",
      keywords: "else if",
    ),
    Mode(
      className: "template-tag",
      begin: "\\{\\{\\/",
      end: "\\}\\}",
      contains: [
        ModeReference('~contains~5~contains~0'),
      ],
    ),
    Mode(
      className: "template-variable",
      begin: "\\{\\{\\{",
      end: "\\}\\}\\}",
      contains: [
        ModeReference('~contains~10~contains~0'),
      ],
    ),
    Mode(
      className: "template-variable",
      begin: "\\{\\{",
      end: "\\}\\}",
      contains: [
        ModeReference('~contains~10~contains~0'),
      ],
    ),
  ],
);

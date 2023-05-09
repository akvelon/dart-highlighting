// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final moonscript = Language(
  id: "moonscript",
  refs: {
    '~contains~6~contains~1': Mode(
      className: "params",
      begin: "\\([^\\(]",
      returnBegin: true,
      contains: [
        Mode(
          begin: "\\(",
          end: "\\)",
          keywords: {
            "keyword":
                "if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using",
            "literal": "true false nil",
            "built_in":
                "_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table"
          },
          contains: [
            ModeSelfReference(),
            ModeReference('~contains~0'),
            ModeReference('~contains~1'),
            ModeReference('~contains~1~variants~1~contains~1~contains~2'),
            ModeReference('~contains~1~variants~1~contains~1~contains~3'),
            ModeReference('~contains~1~variants~1~contains~1~contains~4'),
          ],
        ),
      ],
    ),
    '~contains~6~contains~0': Mode(
      scope: "title",
      begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
      relevance: 0,
    ),
    '~contains~1~variants~1~contains~1~contains~4': Mode(
      begin: "[a-zA-Z]\\w*\\\\[a-zA-Z]\\w*",
    ),
    '~contains~1~variants~1~contains~1~contains~3': Mode(
      begin: "@[a-zA-Z]\\w*",
    ),
    '~contains~1~variants~1~contains~1~contains~2': Mode(
      className: "built_in",
      begin: "@__[a-zA-Z]\\w*",
    ),
    '~contains~1': Mode(
      className: "string",
      variants: [
        Mode(
          begin: "'",
          end: "'",
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
        Mode(
          begin: "\"",
          end: "\"",
          contains: [
            BACKSLASH_ESCAPE,
            Mode(
              className: "subst",
              begin: "#\\{",
              end: "\\}",
              keywords: {
                "keyword":
                    "if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using",
                "literal": "true false nil",
                "built_in":
                    "_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table"
              },
              contains: [
                ModeReference('~contains~0'),
                ModeReference('~contains~1'),
                ModeReference('~contains~1~variants~1~contains~1~contains~2'),
                ModeReference('~contains~1~variants~1~contains~1~contains~3'),
                ModeReference('~contains~1~variants~1~contains~1~contains~4'),
              ],
            ),
          ],
        ),
      ],
    ),
    '~contains~0': Mode(
      scope: "number",
      begin:
          "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
      relevance: 0,
      starts: Mode(
        end: "(\\s*/)?",
        relevance: 0,
      ),
    ),
  },
  name: "MoonScript",
  aliases: ["moon"],
  keywords: {
    "keyword":
        "if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using",
    "literal": "true false nil",
    "built_in":
        "_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table"
  },
  illegal: "\\/\\*",
  contains: [
    ModeReference('~contains~0'),
    ModeReference('~contains~1'),
    ModeReference('~contains~1~variants~1~contains~1~contains~2'),
    ModeReference('~contains~1~variants~1~contains~1~contains~3'),
    ModeReference('~contains~1~variants~1~contains~1~contains~4'),
    Mode(
      scope: "comment",
      begin: "--",
      end: "\$",
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
      className: "function",
      begin: "^\\s*[A-Za-z\$_][0-9A-Za-z\$_]*\\s*=\\s*(\\(.*\\)\\s*)?\\B[-=]>",
      end: "[-=]>",
      returnBegin: true,
      contains: [
        ModeReference('~contains~6~contains~0'),
        ModeReference('~contains~6~contains~1'),
      ],
    ),
    Mode(
      begin: "[\\(,:=]\\s*",
      relevance: 0,
      contains: [
        Mode(
          className: "function",
          begin: "(\\(.*\\)\\s*)?\\B[-=]>",
          end: "[-=]>",
          returnBegin: true,
          contains: [
            ModeReference('~contains~6~contains~1'),
          ],
        ),
      ],
    ),
    Mode(
      className: "class",
      beginKeywords: "class",
      end: "\$",
      illegal: "[:=\"\\[\\]]",
      contains: [
        Mode(
          beginKeywords: "extends",
          endsWithParent: true,
          illegal: "[:=\"\\[\\]]",
          contains: [
            ModeReference('~contains~6~contains~0'),
          ],
        ),
        ModeReference('~contains~6~contains~0'),
      ],
    ),
    Mode(
      className: "name",
      begin: "[A-Za-z\$_][0-9A-Za-z\$_]*:",
      end: ":",
      returnBegin: true,
      returnEnd: true,
      relevance: 0,
    ),
  ],
);

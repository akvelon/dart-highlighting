// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final apache = Language(
  id: "apache",
  refs: {
    '~contains~1~contains~0': Mode(
      className: "number",
      begin: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?",
    ),
  },
  name: "Apache config",
  aliases: ["apacheconf"],
  case_insensitive: true,
  contains: [
    HASH_COMMENT_MODE,
    Mode(
      className: "section",
      begin: "<\\/?",
      end: ">",
      contains: [
        ModeReference('~contains~1~contains~0'),
        Mode(
          className: "number",
          begin: ":\\d{1,5}",
        ),
        Mode(
          scope: "string",
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: [
            BACKSLASH_ESCAPE,
          ],
          relevance: 0,
        ),
      ],
    ),
    Mode(
      className: "attribute",
      begin: "\\w+",
      relevance: 0,
      keywords: {
        "_": [
          "order",
          "deny",
          "allow",
          "setenv",
          "rewriterule",
          "rewriteengine",
          "rewritecond",
          "documentroot",
          "sethandler",
          "errordocument",
          "loadmodule",
          "options",
          "header",
          "listen",
          "serverroot",
          "servername"
        ]
      },
      starts: Mode(
        end: "\$",
        relevance: 0,
        keywords: {"literal": "on off all deny allow"},
        contains: [
          Mode(
            className: "meta",
            begin: "\\s\\[",
            end: "\\]\$",
          ),
          Mode(
            className: "variable",
            begin: "[\\\$%]\\{",
            end: "\\}",
            contains: [
              ModeSelfReference(),
              Mode(
                className: "number",
                begin: "[\$%]\\d+",
              ),
            ],
          ),
          ModeReference('~contains~1~contains~0'),
          Mode(
            className: "number",
            begin: "\\b\\d+",
          ),
          QUOTE_STRING_MODE,
        ],
      ),
    ),
  ],
  illegal: "\\S",
);

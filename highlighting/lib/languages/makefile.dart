// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final makefile = Language(
  id: "makefile",
  refs: {
    '~contains~1': Mode(
      className: "variable",
      variants: [
        Mode(
          begin: "\\\$\\([a-zA-Z_]\\w*\\)",
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
        Mode(
          begin: "\\\$[@%<?\\^\\+\\*]",
        ),
      ],
    ),
  },
  name: "Makefile",
  aliases: ["mk", "mak", "make"],
  keywords: {
    "\$pattern": "[\\w-]+",
    "keyword":
        "define endef undefine ifdef ifndef ifeq ifneq else endif include -include sinclude override export unexport private vpath"
  },
  contains: [
    HASH_COMMENT_MODE,
    ModeReference('~contains~1'),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [
        BACKSLASH_ESCAPE,
        ModeReference('~contains~1'),
      ],
    ),
    Mode(
      className: "variable",
      begin: "\\\$\\([\\w-]+\\s",
      end: "\\)",
      keywords: {
        "built_in":
            "subst patsubst strip findstring filter filter-out sort word wordlist firstword lastword dir notdir suffix basename addsuffix addprefix join wildcard realpath abspath error warning shell origin flavor foreach if or and call eval file value"
      },
      contains: [
        ModeReference('~contains~1'),
      ],
    ),
    Mode(
      begin: "^[a-zA-Z_]\\w*\\s*(?=[:+?]?=)",
    ),
    Mode(
      className: "meta",
      begin: "^\\.PHONY:",
      end: "\$",
      keywords: {"\$pattern": "[\\.\\w]+", "keyword": ".PHONY"},
    ),
    Mode(
      className: "section",
      begin: "^[^\\s]+:",
      end: "\$",
      contains: [
        ModeReference('~contains~1'),
      ],
    ),
  ],
);

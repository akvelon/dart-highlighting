// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final robotTxt = Language(
  id: "robot-txt",
  refs: {
    '~contains~0': Mode(
      scope: "comment",
      begin: "#",
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
  },
  aliases: ["robotstxt", "robots.txt"],
  case_insensitive: true,
  keywords: {
    "\$pattern": "[a-z-]+",
    "section": "user-agent",
    "built_in": "allow disallow",
    "keyword": "crawl-delay sitemap"
  },
  contains: [
    ModeReference('~contains~0'),
    NUMBER_MODE,
    Mode(
      className: "string",
      begin: "^\\s*(?:user-agent|(?:dis)?allow)\\s*:\\s*",
      end: "\$",
      excludeBegin: true,
      relevance: 10,
      contains: [
        ModeReference('~contains~0'),
      ],
    ),
    Mode(
      className: "string",
      begin: "^\\s*sitemap\\s*:\\s*",
      end: "\$",
      excludeBegin: true,
      contains: [
        ModeReference('~contains~0'),
      ],
    ),
  ],
  illegal: "<(?:!DOCTYPE\\s+)?html>",
);

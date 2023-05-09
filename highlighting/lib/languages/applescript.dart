// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final applescript = Language(
  id: "applescript",
  refs: {
    '~contains~7': Mode(
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
    '~contains~0': Mode(
      scope: "string",
      begin: "\"",
      end: "\"",
      illegal: null,
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
  },
  name: "AppleScript",
  aliases: ["osascript"],
  keywords: {
    "keyword":
        "about above after against and around as at back before beginning behind below beneath beside between but by considering contain contains continue copy div does eighth else end equal equals error every exit fifth first for fourth from front get given global if ignoring in into is it its last local me middle mod my ninth not of on onto or over prop property put ref reference repeat returning script second set seventh since sixth some tell tenth that the|0 then third through thru timeout times to transaction try until where while whose with without",
    "literal":
        "AppleScript false linefeed return pi quote result space tab true",
    "built_in":
        "alias application boolean class constant date file integer list number real record string text activate beep count delay launch log offset read round run say summarize write character characters contents day frontmost id item length month name|0 paragraph paragraphs rest reverse running time version weekday word words year"
  },
  contains: [
    ModeReference('~contains~0'),
    C_NUMBER_MODE,
    Mode(
      className: "built_in",
      begin:
          "\\b(?:clipboard info|the clipboard|info for|list (disks|folder)|mount volume|path to|(close|open for) access|(get|set) eof|current date|do shell script|get volume settings|random number|set volume|system attribute|system info|time to GMT|(load|run|store) script|scripting components|ASCII (character|number)|localized string|choose (application|color|file|file name|folder|from list|remote application|URL)|display (alert|dialog))\\b",
    ),
    Mode(
      className: "built_in",
      begin: "^\\s*return\\b",
    ),
    Mode(
      className: "literal",
      begin: "\\b(text item delimiters|current application|missing value)\\b",
    ),
    Mode(
      className: "keyword",
      begin:
          "\\b(?:apart from|aside from|instead of|out of|greater than|isn't|(doesn't|does not) (equal|come before|come after|contain)|(greater|less) than( or equal)?|(starts?|ends|begins?) with|contained by|comes (before|after)|a (ref|reference)|POSIX (file|path)|(date|time) string|quoted form)\\b",
    ),
    Mode(
      beginKeywords: "on",
      illegal: "[\${=;\\n]",
      contains: [
        UNDERSCORE_TITLE_MODE,
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          contains: [
            ModeSelfReference(),
            C_NUMBER_MODE,
            ModeReference('~contains~0'),
          ],
        ),
      ],
    ),
    ModeReference('~contains~7'),
    Mode(
      scope: "comment",
      begin: "\\(\\*",
      end: "\\*\\)",
      contains: [
        ModeSelfReference(),
        ModeReference('~contains~7'),
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
    HASH_COMMENT_MODE,
  ],
  illegal: "\\/\\/|->|=>|\\[\\[",
);

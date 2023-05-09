// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final http = Language(
  id: "http",
  refs: {
    '~contains~0~starts~contains~1': Mode(
      begin: "\\n\\n",
      starts: Mode(
        subLanguage: [],
        endsWithParent: true,
      ),
    ),
    '~contains~0~starts~contains~0~starts': Mode(
      contains: [
        Mode(
          className: "punctuation",
          begin: ": ",
          relevance: 0,
          starts: Mode(
            end: "\$",
            relevance: 0,
          ),
        ),
      ],
    ),
    '~contains~0~starts~contains~0': Mode(
      className: "attribute",
      begin: "^[A-Za-z][A-Za-z0-9-]*(?=\\:\\s)",
      starts: ModeReference('~contains~0~starts~contains~0~starts'),
    ),
  },
  name: "HTTP",
  aliases: ["https"],
  illegal: "\\S",
  contains: [
    Mode(
      begin: "^(?=HTTP/([32]|1\\.[01]) \\d{3})",
      end: "\$",
      contains: [
        Mode(
          className: "meta",
          begin: "HTTP/([32]|1\\.[01])",
        ),
        Mode(
          className: "number",
          begin: "\\b\\d{3}\\b",
        ),
      ],
      starts: Mode(
        end: "\\b\\B",
        illegal: "\\S",
        contains: [
          ModeReference('~contains~0~starts~contains~0'),
          ModeReference('~contains~0~starts~contains~1'),
        ],
      ),
    ),
    Mode(
      begin: "(?=^[A-Z]+ (.*?) HTTP/([32]|1\\.[01])\$)",
      end: "\$",
      contains: [
        Mode(
          className: "string",
          begin: " ",
          end: " ",
          excludeBegin: true,
          excludeEnd: true,
        ),
        Mode(
          className: "meta",
          begin: "HTTP/([32]|1\\.[01])",
        ),
        Mode(
          className: "keyword",
          begin: "[A-Z]+",
        ),
      ],
      starts: Mode(
        end: "\\b\\B",
        illegal: "\\S",
        contains: [
          ModeReference('~contains~0~starts~contains~0'),
          ModeReference('~contains~0~starts~contains~1'),
        ],
      ),
    ),
    Mode(
      className: "attribute",
      begin: "^[A-Za-z][A-Za-z0-9-]*(?=\\:\\s)",
      starts: ModeReference('~contains~0~starts~contains~0~starts'),
      relevance: 0,
    ),
  ],
);

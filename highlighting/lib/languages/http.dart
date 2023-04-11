// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final http = Mode(
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
      starts: Mode(ref: '~contains~0~starts~contains~0~starts'),
    ),
  },
  name: "HTTP",
  aliases: ["https"],
  illegal: "\\S",
  contains: [
    Mode(
      begin: "^(?=HTTP/(2|1\\.[01]) \\d{3})",
      end: "\$",
      contains: [
        Mode(
          className: "meta",
          begin: "HTTP/(2|1\\.[01])",
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
          Mode(ref: '~contains~0~starts~contains~0'),
          Mode(ref: '~contains~0~starts~contains~1'),
        ],
      ),
    ),
    Mode(
      begin: "(?=^[A-Z]+ (.*?) HTTP/(2|1\\.[01])\$)",
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
          begin: "HTTP/(2|1\\.[01])",
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
          Mode(ref: '~contains~0~starts~contains~0'),
          Mode(ref: '~contains~0~starts~contains~1'),
        ],
      ),
    ),
    Mode(
      className: "attribute",
      begin: "^[A-Za-z][A-Za-z0-9-]*(?=\\:\\s)",
      starts: Mode(ref: '~contains~0~starts~contains~0~starts'),
      relevance: 0,
    ),
  ],
);

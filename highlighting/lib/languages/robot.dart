// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final robot = Language(
  id: "robot",
  refs: {
    '~contains~1': Mode(
      className: "variable",
      begin: "\\\$\\{",
      end: "\\}",
    ),
  },
  case_insensitive: true,
  aliases: ["robot", "rf"],
  keywords:
      "Settings Keywords [Return] [Teardown] [Timeout] [Setup] [Tags] [Arguments] [Documentation]",
  contains: [
    Mode(
      className: "number",
      begin: "\\\$\\{([0-9])",
      end: "\\}",
    ),
    ModeReference('~contains~1'),
    Mode(
      className: "variable",
      begin: "\\&\\{",
      end: "\\}",
    ),
    Mode(
      className: "variable",
      begin: "\\@\\{",
      end: "\\}",
    ),
    Mode(
      className: "section",
      begin: "^(\\*{1,3})",
      end: "\$",
    ),
    Mode(
      className: "attribute",
      begin:
          "^(Library|Resource|Test Timeout|Test Template|Test Teardown|Test Setup|Default Tags|Force Tags|Variables|Suite Setup|Suite Teardown)(?:( )|( \\| ))",
      end: "\$| {2,}|\\t",
      contains: [
        ModeReference('~contains~1'),
      ],
      relevance: 10,
    ),
    Mode(
      className: "comment",
      begin: "^\\s*\\[?Documentation\\]?\\s+",
      end: "\$",
    ),
    Mode(
      className: "comment",
      begin: "^\\.\\.\\.",
      end: "\$",
    ),
    Mode(
      className: "name",
      begin: "(^([^*| |\\t|\\n)]))\\w",
      end: "(\$|\\s{2,})",
      contains: [
        ModeReference('~contains~1'),
      ],
    ),
    Mode(
      className: "comment",
      begin: "(^| {2,}|\\t|\\| {1,})#",
      end: "\$",
    ),
    Mode(
      className: "built_in",
      begin:
          "^\\s+\\[(Tags|Setup|Teardown|Template|Timeout|Arguments|Return)\\]",
      end: "\$| {2,}|\\t",
      contains: [
        ModeReference('~contains~1'),
      ],
      relevance: 10,
    ),
    Mode(
      className: "comment",
      variants: [
        Mode(
          begin: "^\\s{2,}given",
          end: "\\s",
        ),
        Mode(
          begin: "^\\s{2,}when",
          end: "\\s",
        ),
        Mode(
          begin: "^\\s{2,}then",
          end: "\\s",
        ),
        Mode(
          begin: "^\\s{2,}and",
          end: "\\s",
        ),
      ],
    ),
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final diff = Language(
  id: "diff",
  refs: {},
  name: "Diff",
  aliases: ["patch"],
  contains: [
    Mode(
      className: "meta",
      relevance: 10,
      match:
          "(?:^@@ +-\\d+,\\d+ +\\+\\d+,\\d+ +@@|^\\*\\*\\* +\\d+,\\d+ +\\*\\*\\*\\*\$|^--- +\\d+,\\d+ +----\$)",
    ),
    Mode(
      className: "comment",
      variants: [
        Mode(
          begin: "(?:Index: |^index|={3,}|^-{3}|^\\*{3} |^\\+{3}|^diff --git)",
          end: "\$",
        ),
        Mode(
          match: "^\\*{15}\$",
        ),
      ],
    ),
    Mode(
      className: "addition",
      begin: "^\\+",
      end: "\$",
    ),
    Mode(
      className: "deletion",
      begin: "^-",
      end: "\$",
    ),
    Mode(
      className: "addition",
      begin: "^!",
      end: "\$",
    ),
  ],
);

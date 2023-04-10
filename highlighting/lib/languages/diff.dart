// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final diff = Mode(
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

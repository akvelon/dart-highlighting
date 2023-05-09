// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final taggerscript = Language(
  id: "taggerscript",
  refs: {},
  name: "Tagger Script",
  contains: [
    Mode(
      className: "comment",
      begin: "\\\$noop\\(",
      end: "\\)",
      contains: [
        Mode(
          begin: "\\\\[()]",
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            Mode(
              begin: "\\\\[()]",
            ),
            ModeSelfReference(),
          ],
        ),
      ],
      relevance: 10,
    ),
    Mode(
      className: "keyword",
      begin: "\\\$[_a-zA-Z0-9]+(?=\\()",
    ),
    Mode(
      className: "variable",
      begin: "%[_a-zA-Z0-9:]+%",
    ),
    Mode(
      className: "symbol",
      begin: "\\\\[\\\\nt\$%,()]",
    ),
    Mode(
      className: "symbol",
      begin: "\\\\u[a-fA-F0-9]{4}",
    ),
  ],
);

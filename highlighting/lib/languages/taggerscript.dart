// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final taggerscript = Mode(
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
            Mode(self: true),
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

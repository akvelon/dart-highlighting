// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final leaf = Language(
  id: "leaf",
  refs: {},
  name: "Leaf",
  contains: [
    Mode(
      className: "function",
      begin: "#+[A-Za-z_0-9]*\\(",
      end: " \\{",
      returnBegin: true,
      excludeEnd: true,
      contains: [
        Mode(
          className: "keyword",
          begin: "#+",
        ),
        Mode(
          className: "title",
          begin: "[A-Za-z_][A-Za-z_0-9]*",
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          endsParent: true,
          contains: [
            Mode(
              className: "string",
              begin: "\"",
              end: "\"",
            ),
            Mode(
              className: "variable",
              begin: "[A-Za-z_][A-Za-z_0-9]*",
            ),
          ],
        ),
      ],
    ),
  ],
);

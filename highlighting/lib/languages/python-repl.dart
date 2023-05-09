// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final pythonRepl = Language(
  id: "python-repl",
  refs: {},
  aliases: ["pycon"],
  contains: [
    Mode(
      className: "meta.prompt",
      starts: Mode(
        end: " |\$",
        starts: Mode(
          end: "\$",
          subLanguage: ["python"],
        ),
      ),
      variants: [
        Mode(
          begin: "^>>>(?=[ ]|\$)",
        ),
        Mode(
          begin: "^\\.\\.\\.(?=[ ]|\$)",
        ),
      ],
    ),
  ],
);

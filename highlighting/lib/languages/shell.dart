// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final shell = Language(
  id: "shell",
  refs: {},
  name: "Shell Session",
  aliases: ["console", "shellsession"],
  contains: [
    Mode(
      className: "meta.prompt",
      begin: "^\\s{0,3}[/\\x7e\\w\\d[\\]()@-]*[>%\$#][ ]?",
      starts: Mode(
        end: "[^\\\\](?=\\s*\$)",
        subLanguage: ["bash"],
      ),
    ),
  ],
);

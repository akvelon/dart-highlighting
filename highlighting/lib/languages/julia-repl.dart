// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final juliaRepl = Language(
  id: "julia-repl",
  refs: {},
  name: "Julia REPL",
  contains: [
    Mode(
      className: "meta.prompt",
      begin: "^julia>",
      relevance: 10,
      starts: Mode(
        end: "^(?![ ]{6})",
        subLanguage: ["julia"],
      ),
    ),
  ],
  aliases: ["jldoctest"],
);

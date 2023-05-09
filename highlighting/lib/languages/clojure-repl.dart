// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final clojureRepl = Language(
  id: "clojure-repl",
  refs: {},
  name: "Clojure REPL",
  contains: [
    Mode(
      className: "meta.prompt",
      begin: "^([\\w.-]+|\\s*#_)?=>",
      starts: Mode(
        end: "\$",
        subLanguage: ["clojure"],
      ),
    ),
  ],
);

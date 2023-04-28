// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

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

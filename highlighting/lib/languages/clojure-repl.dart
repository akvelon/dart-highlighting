// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';
import '../src/language_definition_parts/language_definition_parts.dart';

final clojureRepl = Mode(
    refs: {},
    name: "Clojure REPL",
    contains: [
      Mode(
          className: "meta.prompt",
          begin: "^([\\w.-]+|\\s*#_)?=>",
          starts: Mode(end: "\$", subLanguage: ["clojure"]))
    ]);

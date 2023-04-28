// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final nodeRepl = Language(
  id: "node-repl",
  refs: {},
  name: "Node REPL",
  contains: [
    Mode(
      className: "meta.prompt",
      starts: Mode(
        end: " |\$",
        starts: Mode(
          end: "\$",
          subLanguage: ["javascript"],
        ),
      ),
      variants: [
        Mode(
          begin: "^>(?=[ ]|\$)",
        ),
        Mode(
          begin: "^\\.\\.\\.(?=[ ]|\$)",
        ),
      ],
    ),
  ],
);

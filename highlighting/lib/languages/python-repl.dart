// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

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

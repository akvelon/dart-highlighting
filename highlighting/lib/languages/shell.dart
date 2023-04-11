// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final shell = Mode(
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

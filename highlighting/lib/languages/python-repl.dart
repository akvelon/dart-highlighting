// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';
import '../src/language_definition_parts/language_definition_parts.dart';

final pythonRepl = Mode(refs: {}, aliases: [
  "pycon"
], contains: [
  Mode(
      className: "meta.prompt",
      starts:
          Mode(end: " |\$", starts: Mode(end: "\$", subLanguage: ["python"])),
      variants: [
        Mode(begin: "^>>>(?=[ ]|\$)"),
        Mode(begin: "^\\.\\.\\.(?=[ ]|\$)")
      ])
]);

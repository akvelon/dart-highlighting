// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final minecraftLang = Language(
  id: "minecraft-lang",
  refs: {},
  name: "lang",
  case_insensitive: false,
  contains: [
    Mode(
      className: "attr",
      begin: "^[A-Za-z0-9]",
      end: "[A-Za-z0-9](?==)|(?=#)",
      contains: [
        Mode(
          begin: "[A-Za-z0-9\\-_]+:[A-Za-z0-9\\-_]+",
          end: "(?=\\.)",
        ),
      ],
    ),
    Mode(
      className: "string",
      begin: "(?<==).",
      end: "(?!.)|(?=#)",
      contains: [
        Mode(
          className: "built_in",
          begin: "§(?=[0-9a-gk-or])",
          end: "[0-9a-gk-or]",
        ),
        Mode(
          className: "variable",
          begin: ":_",
          end: ":|(?!.)",
        ),
        Mode(
          className: "regexp",
          begin: "%([1-9]+\\\$)?(\\d)*(\\.(\\d)+)?(?=[dcbsfexh0-9])",
          end: "[dcbsfexh0-9]",
        ),
        Mode(
          className: "title",
          begin: "<(?=[A-Za-z0-9 :]+>)",
          end: ">|(?!.)",
        ),
      ],
    ),
    Mode(
      scope: "comment",
      begin: "#",
      end: "\$",
      contains: [
        Mode(
          scope: "doctag",
          begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
          excludeBegin: true,
          relevance: 0,
        ),
        Mode(
          begin:
              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
        ),
      ],
    ),
  ],
);

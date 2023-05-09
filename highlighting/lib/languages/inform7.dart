// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final inform7 = Language(
  id: "inform7",
  refs: {},
  name: "Inform 7",
  aliases: ["i7"],
  case_insensitive: true,
  keywords: {
    "keyword":
        "thing room person man woman animal container supporter backdrop door scenery open closed locked inside gender is are say understand kind of rule"
  },
  contains: [
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      relevance: 0,
      contains: [
        Mode(
          className: "subst",
          begin: "\\[",
          end: "\\]",
        ),
      ],
    ),
    Mode(
      className: "section",
      begin: "^(Volume|Book|Part|Chapter|Section|Table)\\b",
      end: "\$",
    ),
    Mode(
      begin:
          "^(Check|Carry out|Report|Instead of|To|Rule|When|Before|After)\\b",
      end: ":",
      contains: [
        Mode(
          begin: "\\(This",
          end: "\\)",
        ),
      ],
    ),
    Mode(
      className: "comment",
      begin: "\\[",
      end: "\\]",
      contains: [
        ModeSelfReference(),
      ],
    ),
  ],
);

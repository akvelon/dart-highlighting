// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final mojolicious = Language(
  id: "mojolicious",
  refs: {},
  name: "Mojolicious",
  subLanguage: ["xml"],
  contains: [
    Mode(
      className: "meta",
      begin: "^__(END|DATA)__\$",
    ),
    Mode(
      begin: "^\\s*%{1,2}={0,2}",
      end: "\$",
      subLanguage: ["perl"],
    ),
    Mode(
      begin: "<%{1,2}={0,2}",
      end: "={0,1}%>",
      subLanguage: ["perl"],
      excludeBegin: true,
      excludeEnd: true,
    ),
  ],
);

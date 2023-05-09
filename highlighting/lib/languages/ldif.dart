// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final ldif = Language(
  id: "ldif",
  refs: {},
  name: "LDIF",
  contains: [
    Mode(
      className: "attribute",
      match: "^dn(?=:)",
      relevance: 10,
    ),
    Mode(
      className: "attribute",
      match: "^\\w+(?=:)",
    ),
    Mode(
      className: "literal",
      match: "^-",
    ),
    HASH_COMMENT_MODE,
  ],
);

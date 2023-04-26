// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final ldif = Mode(
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

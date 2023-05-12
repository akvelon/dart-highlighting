// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final mdeAtl = Language(
  id: "mde-atl",
  refs: {},
  case_insensitive: false,
  beginKeywords: "module rule ",
  keywords: {
    "keyword":
        "module rule to from thisModule abstract query IN OUT extends helper def uses create refining context select collect reject forAll exists collectNested closure iterate flatten one first includes excludes excludesAll includesAll including excluding union intersection size avg isEmpty notEmpty count sum average abs div mod max min floor round substring concat toInteger toReal toUpper toLower result    let in self eachor xor and not implies oclIsUndefined oclIsInvalid hasReturned if then else endif package, endpackage asBag  asSequence asOrderedSet asSet oclIsTypeOf oclIsKindOf oclInState oclIsNew oclIsUndefined oclIsInvalid oclAsType allInstances @pre ",
    "literal": "true false null unknown ",
    "built_in":
        "Boolean Integer UnlimitedNatural Real String OrderedSet Tuple OrderedSet Bag Set Sequence OclInvalid OclVoid OclUndefined OclAny TupleType OclState Collection OclMessage "
  },
  contains: [
    Mode(
      className: "string",
      begin: "'",
      end: "'",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    NUMBER_MODE,
    Mode(
      scope: "comment",
      begin: "--",
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
    Mode(
      className: "rule",
      beginKeywords: "rule",
      end: "[{;=]",
      excludeEnd: true,
      keywords: "rule abstract",
      illegal: "[:\"\\[\\]]",
      contains: [
        Mode(
          beginKeywords: "extends",
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          keywords:
              "Boolean Integer UnlimitedNatural Real String OrderedSet Tuple OrderedSet Bag Set Sequence OclInvalid OclVoid OclUndefined OclAny TupleType OclState Collection OclMessage ",
          relevance: 0,
          contains: [
            APOS_STRING_MODE,
            QUOTE_STRING_MODE,
            C_NUMBER_MODE,
            C_BLOCK_COMMENT_MODE,
          ],
        ),
        UNDERSCORE_TITLE_MODE,
      ],
    ),
    Mode(
      className: "class",
      beginKeywords: "module",
      end: "[\$;]",
      keywords: "module",
      illegal: "[{}\$]",
      contains: [
        Mode(
          beginKeywords: "module",
        ),
        UNDERSCORE_TITLE_MODE,
      ],
    ),
  ],
);

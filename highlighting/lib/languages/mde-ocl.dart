// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final mdeOcl = Language(
  id: "mde-ocl",
  refs: {},
  case_insensitive: false,
  keywords: {
    "keyword":
        "context pre post inv init body def derive select collect reject forAll exists collectNested closure iterate flatten one includes excludes excludesAll includesAll including excluding union intersection size avg isEmpty notEmpty count sum average abs div mod max min floor round substring concat toInteger toReal toUpper toLower result    let in self eachor xor and not implies oclIsUndefined oclIsInvalid hasReturned if then else endif package, endpackage asBag  asSequence asOrderedSet asSet oclIsTypeOf oclIsKindOf oclInState oclIsNew oclIsUndefined oclIsInvalid oclAsType allInstances @pre ",
    "literal": "true false null unknown ",
    "built_in":
        "Boolean Integer UnlimitedNatural Real String OrderedSet Tuple OrderedSet Bag Set Sequence OclInvalid OclVoid TupleType OclState Collection OclMessage "
  },
  contains: [
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(
          begin: "''",
        ),
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
  ],
);

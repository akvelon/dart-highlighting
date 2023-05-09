// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final zephir = Language(
  id: "zephir",
  refs: {
    '~contains~4~contains~1~contains~3': Mode(
      variants: [
        BINARY_NUMBER_MODE,
        C_NUMBER_MODE,
      ],
    ),
    '~contains~4~contains~1~contains~2': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      variants: [
        Mode(
          scope: "string",
          begin: "'",
          end: "'",
          illegal: null,
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
        Mode(
          scope: "string",
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
      ],
    ),
  },
  name: "Zephir",
  aliases: ["zep"],
  keywords:
      "namespace class interface use extends function return abstract final public protected private static deprecated throw try catch Exception echo empty isset instanceof unset let var new const self require if else elseif switch case default do while loop for continue break likely unlikely __LINE__ __FILE__ __DIR__ __FUNCTION__ __CLASS__ __TRAIT__ __METHOD__ __NAMESPACE__ array boolean float double integer object resource string char long unsigned bool int uint ulong uchar true false null undefined",
  contains: [
    C_LINE_COMMENT_MODE,
    Mode(
      scope: "comment",
      begin: "\\/\\*",
      end: "\\*\\/",
      contains: [
        Mode(
          className: "doctag",
          begin: "@[A-Za-z]+",
        ),
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
      className: "string",
      begin: "<<<['\"]?\\w+['\"]?\$",
      end: "^\\w+;",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    Mode(
      begin: "(::|->)+[a-zA-Z_\\x7f-\\xff][a-zA-Z0-9_\\x7f-\\xff]*",
    ),
    Mode(
      className: "function",
      beginKeywords: "function fn",
      end: "[;{]",
      excludeEnd: true,
      illegal: "\\\$|\\[|%",
      contains: [
        UNDERSCORE_TITLE_MODE,
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          keywords:
              "namespace class interface use extends function return abstract final public protected private static deprecated throw try catch Exception echo empty isset instanceof unset let var new const self require if else elseif switch case default do while loop for continue break likely unlikely __LINE__ __FILE__ __DIR__ __FUNCTION__ __CLASS__ __TRAIT__ __METHOD__ __NAMESPACE__ array boolean float double integer object resource string char long unsigned bool int uint ulong uchar true false null undefined",
          contains: [
            ModeSelfReference(),
            C_BLOCK_COMMENT_MODE,
            ModeReference('~contains~4~contains~1~contains~2'),
            ModeReference('~contains~4~contains~1~contains~3'),
          ],
        ),
      ],
    ),
    Mode(
      className: "class",
      beginKeywords: "class interface",
      end: "\\{",
      excludeEnd: true,
      illegal: "[:(\$\"]",
      contains: [
        Mode(
          beginKeywords: "extends implements",
        ),
        UNDERSCORE_TITLE_MODE,
      ],
    ),
    Mode(
      beginKeywords: "namespace",
      end: ";",
      illegal: "[.']",
      contains: [
        UNDERSCORE_TITLE_MODE,
      ],
    ),
    Mode(
      beginKeywords: "use",
      end: ";",
      contains: [
        UNDERSCORE_TITLE_MODE,
      ],
    ),
    Mode(
      begin: "=>",
    ),
    ModeReference('~contains~4~contains~1~contains~2'),
    ModeReference('~contains~4~contains~1~contains~3'),
  ],
);

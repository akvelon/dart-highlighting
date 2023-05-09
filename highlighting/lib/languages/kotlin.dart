// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final kotlin = Language(
  id: "kotlin",
  refs: {
    '~contains~7~contains~2~contains~0~contains~0': Mode(
      variants: [
        Mode(
          className: "type",
          begin: "[a-zA-Z_]\\w*",
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            ModeReference('~contains~7~contains~2~contains~0~contains~0'),
          ],
        ),
      ],
    ),
    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2':
        Mode(
      begin: "\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~0'),
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~1'),
      ],
    ),
    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1':
        Mode(
      begin: "'",
      end: "'",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1': Mode(
      className: "string",
      variants: [
        ModeReference('~contains~6~contains~0~contains~0~variants~0'),
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1'),
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2'),
      ],
    ),
    '~contains~6~contains~0~contains~0~variants~0~contains~1': Mode(
      className: "subst",
      begin: "\\\$\\{",
      end: "\\}",
      contains: [
        C_NUMBER_MODE,
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
      ],
    ),
    '~contains~6~contains~0~contains~0~variants~0~contains~0': Mode(
      className: "variable",
      begin: "\\\$[a-zA-Z_]\\w*",
    ),
    '~contains~6~contains~0~contains~0~variants~0': Mode(
      begin: "\"\"\"",
      end: "\"\"\"(?=[^\"])",
      contains: [
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~0'),
        ModeReference(
            '~contains~6~contains~0~contains~0~variants~0~contains~1'),
      ],
    ),
    '~contains~6': Mode(
      className: "meta",
      begin: "@[a-zA-Z_]\\w*",
      contains: [
        Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            Mode(
              className: "string",
              variants: [
                ModeReference('~contains~6~contains~0~contains~0~variants~0'),
                ModeReference(
                    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1'),
                ModeReference(
                    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2'),
              ],
            ),
            ModeSelfReference(),
          ],
        ),
      ],
    ),
    '~contains~5': Mode(
      className: "meta",
      begin:
          "@(?:file|property|field|get|set|receiver|param|setparam|delegate)\\s*:(?:\\s*[a-zA-Z_]\\w*)?",
    ),
    '~contains~2': Mode(
      scope: "comment",
      begin: "/\\*",
      end: "\\*/",
      contains: [
        C_BLOCK_COMMENT_MODE,
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
  },
  name: "Kotlin",
  aliases: ["kt", "kts"],
  keywords: {
    "keyword":
        "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual",
    "built_in":
        "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
    "literal": "true false null"
  },
  contains: [
    Mode(
      scope: "comment",
      begin: "/\\*\\*",
      end: "\\*/",
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
      relevance: 0,
    ),
    C_LINE_COMMENT_MODE,
    ModeReference('~contains~2'),
    Mode(
      className: "keyword",
      begin: "\\b(break|continue|return|this)\\b",
      starts: Mode(
        contains: [
          Mode(
            className: "symbol",
            begin: "@\\w+",
          ),
        ],
      ),
    ),
    Mode(
      className: "symbol",
      begin: "[a-zA-Z_]\\w*@",
    ),
    ModeReference('~contains~5'),
    ModeReference('~contains~6'),
    Mode(
      className: "function",
      beginKeywords: "fun",
      end: "[(]|\$",
      returnBegin: true,
      excludeEnd: true,
      keywords: {
        "keyword":
            "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual",
        "built_in":
            "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
        "literal": "true false null"
      },
      relevance: 5,
      contains: [
        Mode(
          begin: "[a-zA-Z_]\\w*\\s*\\(",
          returnBegin: true,
          relevance: 0,
          contains: [
            UNDERSCORE_TITLE_MODE,
          ],
        ),
        Mode(
          className: "type",
          begin: "<",
          end: ">",
          keywords: "reified",
          relevance: 0,
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          endsParent: true,
          keywords: {
            "keyword":
                "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual",
            "built_in":
                "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
            "literal": "true false null"
          },
          relevance: 0,
          contains: [
            Mode(
              begin: ":",
              end: "[=,\\/]",
              endsWithParent: true,
              contains: [
                ModeReference('~contains~7~contains~2~contains~0~contains~0'),
                C_LINE_COMMENT_MODE,
                ModeReference('~contains~2'),
              ],
              relevance: 0,
            ),
            C_LINE_COMMENT_MODE,
            ModeReference('~contains~2'),
            ModeReference('~contains~5'),
            ModeReference('~contains~6'),
            ModeReference(
                '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
            C_NUMBER_MODE,
          ],
        ),
        ModeReference('~contains~2'),
      ],
    ),
    Mode(
      begin: ["class|interface|trait", "\\s+", "[a-zA-Z_]\\w*"],
      beginScope: {"3": "title.class"},
      keywords: "class interface trait",
      end: "[:\\{(]|\$",
      excludeEnd: true,
      illegal: "extends implements",
      contains: [
        Mode(
          beginKeywords: "public protected internal private constructor",
        ),
        UNDERSCORE_TITLE_MODE,
        Mode(
          className: "type",
          begin: "<",
          end: ">",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0,
        ),
        Mode(
          className: "type",
          begin: "[,:]\\s*",
          end: "[<\\(,){\\s]|\$",
          excludeBegin: true,
          returnEnd: true,
        ),
        ModeReference('~contains~5'),
        ModeReference('~contains~6'),
      ],
    ),
    ModeReference(
        '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
    Mode(
      className: "meta",
      begin: "^#!/usr/bin/env",
      end: "\$",
      illegal: "\n",
    ),
    Mode(
      className: "number",
      variants: [
        Mode(
          begin:
              "(\\b([0-9](_*[0-9])*)((\\.([0-9](_*[0-9])*))|\\.)?|(\\.([0-9](_*[0-9])*)))[eE][+-]?([0-9](_*[0-9])*)[fFdD]?\\b",
        ),
        Mode(
          begin:
              "\\b([0-9](_*[0-9])*)((\\.([0-9](_*[0-9])*))[fFdD]?\\b|\\.([fFdD]\\b)?)",
        ),
        Mode(
          begin: "(\\.([0-9](_*[0-9])*))[fFdD]?\\b",
        ),
        Mode(
          begin: "\\b([0-9](_*[0-9])*)[fFdD]\\b",
        ),
        Mode(
          begin:
              "\\b0[xX](([0-9a-fA-F](_*[0-9a-fA-F])*)\\.?|([0-9a-fA-F](_*[0-9a-fA-F])*)?\\.([0-9a-fA-F](_*[0-9a-fA-F])*))[pP][+-]?([0-9](_*[0-9])*)[fFdD]?\\b",
        ),
        Mode(
          begin: "\\b(0|[1-9](_*[0-9])*)[lL]?\\b",
        ),
        Mode(
          begin: "\\b0[xX]([0-9a-fA-F](_*[0-9a-fA-F])*)[lL]?\\b",
        ),
        Mode(
          begin: "\\b0(_*[0-7])*[lL]?\\b",
        ),
        Mode(
          begin: "\\b0[bB][01](_*[01])*[lL]?\\b",
        ),
      ],
      relevance: 0,
    ),
  ],
);

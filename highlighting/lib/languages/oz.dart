// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final oz = Language(
  id: "oz",
  refs: {
    '~contains~1~contains~2': Mode(
      className: "symbol",
      variants: [
        Mode(
          begin: "\\\$|\\+|-|==|<=|>=|#|\\|",
          relevance: 0,
        ),
        Mode(
          begin: "\\\\=",
          relevance: 3,
        ),
        Mode(
          begin: "=<",
          relevance: 5,
        ),
      ],
    ),
  },
  aliases: ["oz"],
  keywords: {
    "keyword":
        "andthen at attr case catch choice class cond declare define dis do div else elsecase elseif elseof end export fail feat finally from for functor if import in local lock meth mod not of or orelse prepare prop raise require self skip suchthat then thread try",
    "literal": "true false unit"
  },
  contains: [
    Mode(
      variants: [
        Mode(
          scope: "comment",
          begin: "%",
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
          scope: "comment",
          begin: "/\\*",
          end: "\\*/",
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
          relevance: 0,
        ),
      ],
    ),
    Mode(
      begin: "(fun|proc)( *lazy)?( *)?\\{",
      returnBegin: true,
      end: "}",
      className: "function",
      relevance: 0,
      keywords: {"keyword": "fun proc", "meta": "lazy"},
      contains: [
        Mode(
          begin: "{ *",
          end: " *",
          contains: [
            Mode(
              className: "title",
              variants: [
                Mode(
                  begin: "[A-Z][A-Za-z]*",
                ),
                Mode(
                  begin: "\\\$",
                ),
              ],
            ),
          ],
          relevance: 10,
        ),
        Mode(
          begin: "!|\\?",
          className: "comment",
          relevance: 10,
        ),
        ModeReference('~contains~1~contains~2'),
      ],
    ),
    ModeReference('~contains~1~contains~2'),
    QUOTE_STRING_MODE,
    Mode(
      className: "keyword",
      begin: "\\[\\]",
    ),
    Mode(
      className: "literal",
      begin: "'",
      end: "'",
      relevance: 0,
    ),
    Mode(
      className: "symbol",
      begin: "`",
      end: "`",
    ),
    Mode(
      begin: "\\bnil\\b",
    ),
  ],
);

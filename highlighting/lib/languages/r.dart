// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final r = Language(
  id: "r",
  refs: {},
  name: "R",
  keywords: {
    "\$pattern": "(?:(?:[a-zA-Z]|\\.[._a-zA-Z])[._a-zA-Z0-9]*)|\\.(?!\\d)",
    "keyword": "function if in break next repeat else for while",
    "literal":
        "NULL NA TRUE FALSE Inf NaN NA_integer_|10 NA_real_|10 NA_character_|10 NA_complex_|10",
    "built_in":
        "LETTERS letters month.abb month.name pi T F abs acos acosh all any anyNA Arg as.call as.character as.complex as.double as.environment as.integer as.logical as.null.default as.numeric as.raw asin asinh atan atanh attr attributes baseenv browser c call ceiling class Conj cos cosh cospi cummax cummin cumprod cumsum digamma dim dimnames emptyenv exp expression floor forceAndCall gamma gc.time globalenv Im interactive invisible is.array is.atomic is.call is.character is.complex is.double is.environment is.expression is.finite is.function is.infinite is.integer is.language is.list is.logical is.matrix is.na is.name is.nan is.null is.numeric is.object is.pairlist is.raw is.recursive is.single is.symbol lazyLoadDBfetch length lgamma list log max min missing Mod names nargs nzchar oldClass on.exit pos.to.env proc.time prod quote range Re rep retracemem return round seq_along seq_len seq.int sign signif sin sinh sinpi sqrt standardGeneric substitute sum switch tan tanh tanpi tracemem trigamma trunc unclass untracemem UseMethod xtfrm"
  },
  contains: [
    Mode(
      scope: "comment",
      begin: "#'",
      end: "\$",
      contains: [
        Mode(
          scope: "doctag",
          match: "@examples",
          starts: Mode(
            end: "(?=(?:\\n^#'\\s*(?=@[a-zA-Z]+)|\\n^(?!#')))",
            endsParent: true,
          ),
        ),
        Mode(
          scope: "doctag",
          begin: "@param",
          end: "\$",
          contains: [
            Mode(
              scope: "variable",
              variants: [
                Mode(
                  match:
                      "(?:(?:[a-zA-Z]|\\.[._a-zA-Z])[._a-zA-Z0-9]*)|\\.(?!\\d)",
                ),
                Mode(
                  match: "`(?:\\\\.|[^`\\\\])+`",
                ),
              ],
              endsParent: true,
            ),
          ],
        ),
        Mode(
          scope: "doctag",
          match: "@[a-zA-Z]+",
        ),
        Mode(
          scope: "keyword",
          match: "\\\\[a-zA-Z]+",
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
    HASH_COMMENT_MODE,
    Mode(
      scope: "string",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      variants: [
        Mode(
          begin: "[rR]\"(-*)\\(",
          end: "\\)(-*)\"",
          onBegin: endSameAsBeginOnBegin,
          onEnd: endSameAsBeginOnEnd,
        ),
        Mode(
          begin: "[rR]\"(-*)\\{",
          end: "\\}(-*)\"",
          onBegin: endSameAsBeginOnBegin,
          onEnd: endSameAsBeginOnEnd,
        ),
        Mode(
          begin: "[rR]\"(-*)\\[",
          end: "\\](-*)\"",
          onBegin: endSameAsBeginOnBegin,
          onEnd: endSameAsBeginOnEnd,
        ),
        Mode(
          begin: "[rR]'(-*)\\(",
          end: "\\)(-*)'",
          onBegin: endSameAsBeginOnBegin,
          onEnd: endSameAsBeginOnEnd,
        ),
        Mode(
          begin: "[rR]'(-*)\\{",
          end: "\\}(-*)'",
          onBegin: endSameAsBeginOnBegin,
          onEnd: endSameAsBeginOnEnd,
        ),
        Mode(
          begin: "[rR]'(-*)\\[",
          end: "\\](-*)'",
          onBegin: endSameAsBeginOnBegin,
          onEnd: endSameAsBeginOnEnd,
        ),
        Mode(
          begin: "\"",
          end: "\"",
          relevance: 0,
        ),
        Mode(
          begin: "'",
          end: "'",
          relevance: 0,
        ),
      ],
    ),
    Mode(
      relevance: 0,
      variants: [
        Mode(
          scope: {"1": "operator", "2": "number"},
          match: [
            "[=!<>:]=|\\|\\||&&|:::?|<-|<<-|->>|->|\\|>|[-+*\\/?!\$&|:<=>@^\\x7e]|\\*\\*",
            "(?:0[xX][0-9a-fA-F]+\\.[0-9a-fA-F]*[pP][+-]?\\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\\d+)?[Li]?|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?[Li]?)"
          ],
        ),
        Mode(
          scope: {"1": "operator", "2": "number"},
          match: [
            "%[^%]*%",
            "(?:0[xX][0-9a-fA-F]+\\.[0-9a-fA-F]*[pP][+-]?\\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\\d+)?[Li]?|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?[Li]?)"
          ],
        ),
        Mode(
          scope: {"1": "punctuation", "2": "number"},
          match: [
            "(?:[()]|[{}]|\\[\\[|[[\\]]|\\\\|,)",
            "(?:0[xX][0-9a-fA-F]+\\.[0-9a-fA-F]*[pP][+-]?\\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\\d+)?[Li]?|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?[Li]?)"
          ],
        ),
        Mode(
          scope: {"2": "number"},
          match: [
            "[^a-zA-Z0-9._]|^",
            "(?:0[xX][0-9a-fA-F]+\\.[0-9a-fA-F]*[pP][+-]?\\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\\d+)?[Li]?|(?:\\d+(?:\\.\\d*)?|\\.\\d+)(?:[eE][+-]?\\d+)?[Li]?)"
          ],
        ),
      ],
    ),
    Mode(
      scope: {"3": "operator"},
      match: [
        "(?:(?:[a-zA-Z]|\\.[._a-zA-Z])[._a-zA-Z0-9]*)|\\.(?!\\d)",
        "\\s+",
        "<-",
        "\\s+"
      ],
    ),
    Mode(
      scope: "operator",
      relevance: 0,
      variants: [
        Mode(
          match:
              "[=!<>:]=|\\|\\||&&|:::?|<-|<<-|->>|->|\\|>|[-+*\\/?!\$&|:<=>@^\\x7e]|\\*\\*",
        ),
        Mode(
          match: "%[^%]*%",
        ),
      ],
    ),
    Mode(
      scope: "punctuation",
      relevance: 0,
      match: "(?:[()]|[{}]|\\[\\[|[[\\]]|\\\\|,)",
    ),
    Mode(
      begin: "`",
      end: "`",
      contains: [
        Mode(
          begin: "\\\\.",
        ),
      ],
    ),
  ],
);

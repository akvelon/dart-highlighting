// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final gams = Language(
  id: "gams",
  refs: {
    '~contains~9~contains~2': Mode(
      className: "symbol",
      variants: [
        Mode(
          begin: "=[lgenxc]=",
        ),
        Mode(
          begin: "\\\$",
        ),
      ],
    ),
    '~contains~7~contains~6': Mode(
      begin: "[a-z][a-z0-9_]*(\\([a-z0-9_, ]*\\))?[ \\t]+",
      excludeBegin: true,
      end: "\$",
      endsWithParent: true,
      contains: [
        ModeReference('~contains~7~contains~5~contains~0'),
        ModeReference('~contains~7~contains~5'),
        Mode(
          className: "comment",
          begin:
              "[a-z0-9&#*=?@\\\\><:,()\$[\\]_.{}!+%^-]+(?:[ ]+[a-z0-9&#*=?@\\\\><:,()\$[\\]_.{}!+%^-]+)*",
          relevance: 0,
        ),
      ],
    ),
    '~contains~7~contains~5~contains~0': Mode(
      className: "comment",
      variants: [
        Mode(
          begin: "'",
          end: "'",
        ),
        Mode(
          begin: "\"",
          end: "\"",
        ),
      ],
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~7~contains~5': Mode(
      begin: "/",
      end: "/",
      keywords: {
        "keyword":
            "abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes",
        "literal": "eps inf na",
        "built_in":
            "abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart"
      },
      contains: [
        ModeReference('~contains~7~contains~5~contains~0'),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        C_NUMBER_MODE,
      ],
    ),
  },
  name: "GAMS",
  aliases: ["gms"],
  case_insensitive: true,
  keywords: {
    "keyword":
        "abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes",
    "literal": "eps inf na",
    "built_in":
        "abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart"
  },
  contains: [
    Mode(
      scope: "comment",
      begin: "^\\\$ontext",
      end: "^\\\$offtext",
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
      className: "meta",
      begin: "^\\\$[a-z0-9]+",
      end: "\$",
      returnBegin: true,
      contains: [
        Mode(
          className: "keyword",
          begin: "^\\\$[a-z0-9]+",
        ),
      ],
    ),
    Mode(
      scope: "comment",
      begin: "^\\*",
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
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    QUOTE_STRING_MODE,
    APOS_STRING_MODE,
    Mode(
      beginKeywords:
          "set sets parameter parameters variable variables scalar scalars equation equations",
      end: ";",
      contains: [
        Mode(
          scope: "comment",
          begin: "^\\*",
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
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        ModeReference('~contains~7~contains~5'),
        ModeReference('~contains~7~contains~6'),
      ],
    ),
    Mode(
      beginKeywords: "table",
      end: ";",
      returnBegin: true,
      contains: [
        Mode(
          beginKeywords: "table",
          end: "\$",
          contains: [
            ModeReference('~contains~7~contains~6'),
          ],
        ),
        Mode(
          scope: "comment",
          begin: "^\\*",
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
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        C_NUMBER_MODE,
      ],
    ),
    Mode(
      className: "function",
      begin: "^[a-z][a-z0-9_,\\-+' ()\$]+\\.{2}",
      returnBegin: true,
      contains: [
        Mode(
          className: "title",
          begin: "^[a-z0-9_]+",
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          excludeBegin: true,
          excludeEnd: true,
        ),
        ModeReference('~contains~9~contains~2'),
      ],
    ),
    C_NUMBER_MODE,
    ModeReference('~contains~9~contains~2'),
  ],
);

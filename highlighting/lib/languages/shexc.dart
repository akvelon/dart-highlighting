// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final shexc = Language(
  id: "shexc",
  refs: {
    '~contains~5~contains~6': Mode(
      begin: "{",
      end: "}",
      relevance: 0,
      contains: [
        Mode(
          className: "name",
          begin:
              "\$(([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:|<([^<>\"{}|^`\\\\]|\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8}))*>)",
          contains: [
            ModeReference('~contains~2~contains~1~contains~0'),
            ModeReference('~contains~2~contains~1~contains~1'),
          ],
          relevance: 10,
        ),
        Mode(
          className: "name",
          begin:
              "&(([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:|<([^<>\"{}|^`\\\\]|\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8}))*>)",
          contains: [
            ModeReference('~contains~2~contains~1~contains~0'),
            ModeReference('~contains~2~contains~1~contains~1'),
          ],
          relevance: 10,
        ),
        Mode(
          begin:
              "(([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:|<([^<>\"{}|^`\\\\]|\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8}))*>)",
          end: "\\B\\b",
          returnBegin: true,
          endsWithParent: true,
          keywords:
              "and or not closed abstract extends restricts iri bnode literal nonliteran length minlength maxlength mininclusive minexclusive maxinclusive maxexclusive",
          contains: [
            ModeReference('~contains~5~contains~4~contains~0'),
            ModeReference('~contains~5~contains~4~contains~1'),
            HASH_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            ModeReference('~contains~5~contains~2'),
            ModeReference('~contains~5~contains~3'),
            ModeReference('~contains~5~contains~4'),
            ModeReference('~contains~5~contains~5'),
            ModeReference('~contains~5~contains~6'),
          ],
          relevance: 0,
        ),
      ],
    ),
    '~contains~5~contains~5': Mode(
      className: "regexp",
      begin: "\\/([^\\\\/]|\\\\.)*\\/",
      contains: [
        REGEXP_MODE,
      ],
    ),
    '~contains~5~contains~4~contains~1': Mode(
      begin:
          "([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:",
      returnBegin: true,
      contains: [
        Mode(
          className: "type",
          begin: "([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:",
        ),
        Mode(
          className: "variable",
          begin:
              "([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*",
          endsWithParent: true,
          contains: [
            Mode(
              className: "meta-keyword",
              begin: "\\\\[_\\x7e.!\$&'()*+,;=/?#@%-]",
            ),
          ],
        ),
      ],
    ),
    '~contains~5~contains~4~contains~0': Mode(
      className: "symbol",
      begin: "<",
      end: ">",
      contains: [
        ModeReference('~contains~2~contains~1~contains~0'),
        ModeReference('~contains~2~contains~1~contains~1'),
      ],
    ),
    '~contains~5~contains~4': Mode(
      beginKeywords: "extra closed",
      end: "{",
      returnEnd: true,
      contains: [
        ModeReference('~contains~5~contains~4~contains~0'),
        ModeReference('~contains~5~contains~4~contains~1'),
      ],
      relevance: 10,
    ),
    '~contains~5~contains~3': Mode(
      className: "name",
      begin:
          "@(([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:|<([^<>\"{}|^`\\\\]|\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8}))*>)",
      contains: [
        ModeReference('~contains~2~contains~1~contains~0'),
        ModeReference('~contains~2~contains~1~contains~1'),
      ],
      relevance: 10,
    ),
    '~contains~5~contains~2': Mode(
      className: "title",
      begin:
          "(([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:|<([^<>\"{}|^`\\\\]|\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8}))*>)",
      contains: [
        ModeReference('~contains~2~contains~1~contains~0'),
        ModeReference('~contains~2~contains~1~contains~1'),
      ],
      relevance: 0,
    ),
    '~contains~2~contains~1~contains~1': Mode(
      className: "meta-keyword",
      begin: "\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8})",
    ),
    '~contains~2~contains~1~contains~0': Mode(
      className: "meta-keyword",
      begin: "%[0-9a-fA-F][0-9a-fA-F]",
    ),
  },
  case_insensitive: true,
  contains: [
    HASH_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    Mode(
      beginKeywords: "prefix",
      end: "\\B\\b",
      returnBegin: true,
      contains: [
        Mode(
          className: "type",
          begin: "([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:",
        ),
        Mode(
          endsParent: true,
          className: "symbol",
          begin: "<",
          end: ">",
          contains: [
            ModeReference('~contains~2~contains~1~contains~0'),
            ModeReference('~contains~2~contains~1~contains~1'),
          ],
        ),
      ],
    ),
    Mode(
      beginKeywords: "base",
      end: "\\B\\b",
      returnBegin: true,
      contains: [
        Mode(
          endsParent: true,
          className: "symbol",
          begin: "<",
          end: ">",
          contains: [
            ModeReference('~contains~2~contains~1~contains~0'),
            ModeReference('~contains~2~contains~1~contains~1'),
          ],
        ),
      ],
    ),
    Mode(
      beginKeywords: "import",
      end: "\\B\\b",
      returnBegin: true,
      contains: [
        Mode(
          endsParent: true,
          className: "symbol",
          begin: "<",
          end: ">",
          contains: [
            ModeReference('~contains~2~contains~1~contains~0'),
            ModeReference('~contains~2~contains~1~contains~1'),
          ],
        ),
      ],
    ),
    Mode(
      begin:
          "(([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:([a-zA-Z]|_|:|[0-9]|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_\\x7e.!\$&'()*+,;=/?#@%-])(([a-zA-Z]|_|-|[0-9]|\\.|:|%[0-9a-fA-F][0-9a-fA-F]|\\\\[_~.!\$&'()*+,;=/?#@%-]))*|([a-zA-Z](([a-zA-Z]|_|-|[0-9]|\\.)*[a-zA-Z]|_|-|[0-9])?)?:|<([^<>\"{}|^`\\\\]|\\\\(?:u[0-9a-fA-F]{4}|U[0-9a-fA-F]{8}))*>)",
      end: "\\B\\b",
      returnBegin: true,
      keywords:
          "and or not closed abstract extends restricts iri bnode literal nonliteran length minlength maxlength mininclusive minexclusive maxinclusive maxexclusive",
      contains: [
        HASH_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        ModeReference('~contains~5~contains~2'),
        ModeReference('~contains~5~contains~3'),
        ModeReference('~contains~5~contains~4'),
        ModeReference('~contains~5~contains~5'),
        ModeReference('~contains~5~contains~6'),
      ],
      relevance: 0,
    ),
  ],
  relevance: 10,
);

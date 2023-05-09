// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final crystal = Language(
  id: "crystal",
  refs: {
    '~contains~0~contains~0~variants~6~contains~0': Mode(
      begin: "<",
      end: ">",
      contains: [
        ModeReference('~contains~0~contains~0~variants~6~contains~0'),
      ],
    ),
    '~contains~0~contains~0~variants~5~contains~0': Mode(
      begin: "\\{",
      end: "\\}",
      contains: [
        ModeReference('~contains~0~contains~0~variants~5~contains~0'),
      ],
    ),
    '~contains~0~contains~0~variants~4~contains~0': Mode(
      begin: "\\[",
      end: "\\]",
      contains: [
        ModeReference('~contains~0~contains~0~variants~4~contains~0'),
      ],
    ),
    '~contains~0~contains~0~variants~3~contains~0': Mode(
      begin: "\\(",
      end: "\\)",
      contains: [
        ModeReference('~contains~0~contains~0~variants~3~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~9': Mode(
      className: "class",
      beginKeywords: "lib enum union",
      end: "\$|;",
      illegal: "=",
      contains: [
        HASH_COMMENT_MODE,
        Mode(
          scope: "title",
          begin: "[A-Za-z_]\\w*(::\\w+)*(\\?|!)?",
          relevance: 0,
        ),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~8': Mode(
      className: "class",
      beginKeywords: "class module struct",
      end: "\$|;",
      illegal: "=",
      contains: [
        HASH_COMMENT_MODE,
        Mode(
          scope: "title",
          begin: "[A-Za-z_]\\w*(::\\w+)*(\\?|!)?",
          relevance: 0,
        ),
        Mode(
          begin: "<",
        ),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~6': Mode(
      className: "variable",
      begin: "(\\\$\\W)|((\\\$|@@?)(\\w+))(?=[^@\$?])(?![A-Za-z])(?![@\$?'])",
    ),
    '~contains~0~contains~0~contains~1~contains~5': Mode(
      className: "meta",
      begin: "@\\[",
      end: "\\]",
      contains: [
        Mode(
          scope: "string",
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: [
            BACKSLASH_ESCAPE,
          ],
          className: "string",
        ),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~4': Mode(
      begin:
          "(?!%\\})(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e|\\n|\\b(case|if|select|unless|until|when|while)\\b)\\s*",
      keywords: "case if select unless until when while",
      contains: [
        Mode(
          className: "regexp",
          contains: [
            BACKSLASH_ESCAPE,
            ModeReference('~contains~0~contains~0~contains~1'),
          ],
          variants: [
            Mode(
              begin: "//[a-z]*",
              relevance: 0,
            ),
            Mode(
              begin: "/(?!\\/)",
              end: "/[a-z]*",
            ),
          ],
        ),
      ],
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1~contains~3~variants~3~contains~0': Mode(
      begin: "<",
      end: ">",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~3~variants~3~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~3~variants~2~contains~0': Mode(
      begin: "\\{",
      end: "\\}",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~3~variants~2~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~3~variants~1~contains~0': Mode(
      begin: "\\[",
      end: "\\]",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~3~variants~1~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~3~variants~0~contains~0': Mode(
      begin: "\\(",
      end: "\\)",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~3~variants~0~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~3': Mode(
      className: "regexp",
      contains: [
        BACKSLASH_ESCAPE,
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
      variants: [
        Mode(
          begin: "%r\\(",
          end: "\\)",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~3~variants~0~contains~0'),
          ],
        ),
        Mode(
          begin: "%r\\[",
          end: "\\]",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~3~variants~1~contains~0'),
          ],
        ),
        Mode(
          begin: "%r\\{",
          end: "\\}",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~3~variants~2~contains~0'),
          ],
        ),
        Mode(
          begin: "%r<",
          end: ">",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~3~variants~3~contains~0'),
          ],
        ),
        Mode(
          begin: "%r\\|",
          end: "\\|",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1~contains~2~variants~3~contains~0': Mode(
      begin: "<",
      end: ">",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~2~variants~3~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~2~variants~2~contains~0': Mode(
      begin: "\\{",
      end: "\\}",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~2~variants~2~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~2~variants~1~contains~0': Mode(
      begin: "\\[",
      end: "\\]",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~2~variants~1~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~2~variants~0~contains~0': Mode(
      begin: "\\(",
      end: "\\)",
      contains: [
        ModeReference(
            '~contains~0~contains~0~contains~1~contains~2~variants~0~contains~0'),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~2': Mode(
      className: "string",
      variants: [
        Mode(
          begin: "%q\\(",
          end: "\\)",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~2~variants~0~contains~0'),
          ],
        ),
        Mode(
          begin: "%q\\[",
          end: "\\]",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~2~variants~1~contains~0'),
          ],
        ),
        Mode(
          begin: "%q\\{",
          end: "\\}",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~2~variants~2~contains~0'),
          ],
        ),
        Mode(
          begin: "%q<",
          end: ">",
          contains: [
            ModeReference(
                '~contains~0~contains~0~contains~1~contains~2~variants~3~contains~0'),
          ],
        ),
        Mode(
          begin: "%q\\|",
          end: "\\|",
        ),
        Mode(
          begin: "<<-'\\w+'\$",
          end: "^\\s*\\w+\$",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1~contains~15': Mode(
      className: "number",
      variants: [
        Mode(
          begin: "\\b0b([01_]+)(_?[ui](8|16|32|64|128))?",
        ),
        Mode(
          begin: "\\b0o([0-7_]+)(_?[ui](8|16|32|64|128))?",
        ),
        Mode(
          begin: "\\b0x([A-Fa-f0-9_]+)(_?[ui](8|16|32|64|128))?",
        ),
        Mode(
          begin:
              "\\b([1-9][0-9_]*[0-9]|[0-9])(\\.[0-9][0-9_]*)?([eE]_?[-+]?[0-9_]*)?(_?f(32|64))?(?!_)",
        ),
        Mode(
          begin: "\\b([1-9][0-9_]*|0)(_?[ui](8|16|32|64|128))?",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1~contains~14': Mode(
      className: "symbol",
      begin: ":",
      contains: [
        ModeReference('~contains~0~contains~0'),
        Mode(
          begin:
              "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\\*\\*|\\[\\][=?]?",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1~contains~13': Mode(
      className: "symbol",
      begin: "[a-zA-Z_]\\w*(!|\\?)?:",
      relevance: 0,
    ),
    '~contains~0~contains~0~contains~1~contains~12': Mode(
      className: "function",
      beginKeywords: "fun macro",
      end: "\\B\\b",
      contains: [
        Mode(
          scope: "title",
          begin:
              "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\\*\\*|\\[\\][=?]?",
          relevance: 0,
          endsParent: true,
        ),
      ],
      relevance: 2,
    ),
    '~contains~0~contains~0~contains~1~contains~11': Mode(
      className: "function",
      beginKeywords: "def",
      end: "\\B\\b",
      contains: [
        Mode(
          scope: "title",
          begin:
              "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\\*\\*|\\[\\][=?]?",
          relevance: 0,
          endsParent: true,
        ),
      ],
    ),
    '~contains~0~contains~0~contains~1~contains~10': Mode(
      beginKeywords: "annotation",
      end: "\$|;",
      illegal: "=",
      contains: [
        HASH_COMMENT_MODE,
        Mode(
          scope: "title",
          begin: "[A-Za-z_]\\w*(::\\w+)*(\\?|!)?",
          relevance: 0,
        ),
      ],
      relevance: 2,
    ),
    '~contains~0~contains~0~contains~1': Mode(
      className: "subst",
      begin: "#\\{",
      end: "\\}",
      keywords: {
        "\$pattern": "[a-zA-Z_]\\w*[!?=]?",
        "keyword":
            "abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__",
        "literal": "false nil true"
      },
      contains: [
        ModeReference('~contains~0'),
        ModeReference('~contains~0~contains~0'),
        ModeReference('~contains~0~contains~0~contains~1~contains~2'),
        ModeReference('~contains~0~contains~0~contains~1~contains~3'),
        ModeReference('~contains~0~contains~0~contains~1~contains~4'),
        ModeReference('~contains~0~contains~0~contains~1~contains~5'),
        ModeReference('~contains~0~contains~0~contains~1~contains~6'),
        HASH_COMMENT_MODE,
        ModeReference('~contains~0~contains~0~contains~1~contains~8'),
        ModeReference('~contains~0~contains~0~contains~1~contains~9'),
        ModeReference('~contains~0~contains~0~contains~1~contains~10'),
        ModeReference('~contains~0~contains~0~contains~1~contains~11'),
        ModeReference('~contains~0~contains~0~contains~1~contains~12'),
        ModeReference('~contains~0~contains~0~contains~1~contains~13'),
        ModeReference('~contains~0~contains~0~contains~1~contains~14'),
        ModeReference('~contains~0~contains~0~contains~1~contains~15'),
      ],
    ),
    '~contains~0~contains~0': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
        ModeReference('~contains~0~contains~0~contains~1'),
      ],
      variants: [
        Mode(
          begin: "'",
          end: "'",
        ),
        Mode(
          begin: "\"",
          end: "\"",
        ),
        Mode(
          begin: "`",
          end: "`",
        ),
        Mode(
          begin: "%[Qwi]?\\(",
          end: "\\)",
          contains: [
            ModeReference('~contains~0~contains~0~variants~3~contains~0'),
          ],
        ),
        Mode(
          begin: "%[Qwi]?\\[",
          end: "\\]",
          contains: [
            ModeReference('~contains~0~contains~0~variants~4~contains~0'),
          ],
        ),
        Mode(
          begin: "%[Qwi]?\\{",
          end: "\\}",
          contains: [
            ModeReference('~contains~0~contains~0~variants~5~contains~0'),
          ],
        ),
        Mode(
          begin: "%[Qwi]?<",
          end: ">",
          contains: [
            ModeReference('~contains~0~contains~0~variants~6~contains~0'),
          ],
        ),
        Mode(
          begin: "%[Qwi]?\\|",
          end: "\\|",
        ),
        Mode(
          begin: "<<-\\w+\$",
          end: "^\\s*\\w+\$",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0': Mode(
      className: "template-variable",
      variants: [
        Mode(
          begin: "\\{\\{",
          end: "\\}\\}",
        ),
        Mode(
          begin: "\\{%",
          end: "%\\}",
        ),
      ],
      keywords: {
        "\$pattern": "[a-zA-Z_]\\w*[!?=]?",
        "keyword":
            "abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__",
        "literal": "false nil true"
      },
      contains: [
        ModeReference('~contains~0~contains~0'),
        ModeReference('~contains~0~contains~0~contains~1~contains~2'),
        ModeReference('~contains~0~contains~0~contains~1~contains~3'),
        ModeReference('~contains~0~contains~0~contains~1~contains~4'),
        ModeReference('~contains~0~contains~0~contains~1~contains~5'),
        ModeReference('~contains~0~contains~0~contains~1~contains~6'),
        HASH_COMMENT_MODE,
        ModeReference('~contains~0~contains~0~contains~1~contains~8'),
        ModeReference('~contains~0~contains~0~contains~1~contains~9'),
        ModeReference('~contains~0~contains~0~contains~1~contains~10'),
        ModeReference('~contains~0~contains~0~contains~1~contains~11'),
        ModeReference('~contains~0~contains~0~contains~1~contains~12'),
        ModeReference('~contains~0~contains~0~contains~1~contains~13'),
        ModeReference('~contains~0~contains~0~contains~1~contains~14'),
        ModeReference('~contains~0~contains~0~contains~1~contains~15'),
      ],
    ),
  },
  name: "Crystal",
  aliases: ["cr"],
  keywords: {
    "\$pattern": "[a-zA-Z_]\\w*[!?=]?",
    "keyword":
        "abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__",
    "literal": "false nil true"
  },
  contains: [
    ModeReference('~contains~0'),
    ModeReference('~contains~0~contains~0'),
    ModeReference('~contains~0~contains~0~contains~1~contains~2'),
    ModeReference('~contains~0~contains~0~contains~1~contains~3'),
    ModeReference('~contains~0~contains~0~contains~1~contains~4'),
    ModeReference('~contains~0~contains~0~contains~1~contains~5'),
    ModeReference('~contains~0~contains~0~contains~1~contains~6'),
    HASH_COMMENT_MODE,
    ModeReference('~contains~0~contains~0~contains~1~contains~8'),
    ModeReference('~contains~0~contains~0~contains~1~contains~9'),
    ModeReference('~contains~0~contains~0~contains~1~contains~10'),
    ModeReference('~contains~0~contains~0~contains~1~contains~11'),
    ModeReference('~contains~0~contains~0~contains~1~contains~12'),
    ModeReference('~contains~0~contains~0~contains~1~contains~13'),
    ModeReference('~contains~0~contains~0~contains~1~contains~14'),
    ModeReference('~contains~0~contains~0~contains~1~contains~15'),
  ],
);

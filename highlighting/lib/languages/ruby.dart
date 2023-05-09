// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final ruby = Language(
  id: "ruby",
  refs: {
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9':
        Mode(
      className: "symbol",
      begin: ":(?!\\s)",
      contains: [
        ModeReference('~contains~1~starts~contains~0'),
        Mode(
          begin:
              "([a-zA-Z_]\\w*[!?=]?|[-+\\x7e]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)",
        ),
      ],
      relevance: 0,
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8':
        Mode(
      className: "symbol",
      begin: "[a-zA-Z_]\\w*(!|\\?)?:",
      relevance: 0,
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7':
        Mode(
      begin: "[a-zA-Z]\\w*::",
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4':
        Mode(
      scope: "comment",
      begin: "^__END__",
      end: "\\b\\B",
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
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3':
        Mode(
      scope: "comment",
      begin: "^=begin",
      end: "^=end",
      contains: [
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
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
      relevance: 10,
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0':
        Mode(
      className: "doctag",
      begin: "@[A-Za-z]+",
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2':
        Mode(
      scope: "comment",
      begin: "#",
      end: "\$",
      contains: [
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
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
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1':
        Mode(
      begin: "#<",
      end: ">",
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13':
        Mode(
      begin:
          "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e|unless)\\s*",
      keywords: "unless",
      contains: [
        Mode(
          className: "regexp",
          contains: [
            BACKSLASH_ESCAPE,
            ModeReference('~contains~1~starts~contains~0~contains~1'),
          ],
          illegal: "\\n",
          variants: [
            Mode(
              begin: "/",
              end: "/[a-z]*",
            ),
            Mode(
              begin: "%r\\{",
              end: "\\}[a-z]*",
            ),
            Mode(
              begin: "%r\\(",
              end: "\\)[a-z]*",
            ),
            Mode(
              begin: "%r!",
              end: "![a-z]*",
            ),
            Mode(
              begin: "%r\\[",
              end: "\\][a-z]*",
            ),
          ],
        ),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
      ],
      relevance: 0,
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12':
        Mode(
      className: "params",
      begin: "\\|",
      end: "\\|",
      excludeBegin: true,
      excludeEnd: true,
      relevance: 0,
      keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      },
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11':
        Mode(
      className: "variable",
      begin: "(\\\$\\W)|((\\\$|@@?)(\\w+))(?=[^@\$?])(?![A-Za-z])(?![@\$?'])",
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10':
        Mode(
      className: "number",
      relevance: 0,
      variants: [
        Mode(
          begin:
              "\\b([1-9](_?[0-9])*|0)(\\.([0-9](_?[0-9])*))?([eE][+-]?([0-9](_?[0-9])*)|r)?i?\\b",
        ),
        Mode(
          begin: "\\b0[dD][0-9](_?[0-9])*r?i?\\b",
        ),
        Mode(
          begin: "\\b0[bB][0-1](_?[0-1])*r?i?\\b",
        ),
        Mode(
          begin: "\\b0[oO][0-7](_?[0-7])*r?i?\\b",
        ),
        Mode(
          begin: "\\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*r?i?\\b",
        ),
        Mode(
          begin: "\\b0(_?[0-7])+r?i?\\b",
        ),
      ],
    ),
    '~contains~1~starts~contains~0~contains~1~contains~6': Mode(
      match: [
        "def",
        "\\s+",
        "([a-zA-Z_]\\w*[!?=]?|[-+\\x7e]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)"
      ],
      scope: {"1": "keyword", "3": "title.function"},
      contains: [
        Mode(
          variants: [
            Mode(
              match: "\\(\\)",
            ),
            Mode(
              className: "params",
              begin: "\\(",
              end: "(?=\\))",
              excludeBegin: true,
              endsParent: true,
              keywords: {
                "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
                "variable.language": ["self", "super"],
                "keyword": [
                  "alias",
                  "and",
                  "begin",
                  "BEGIN",
                  "break",
                  "case",
                  "class",
                  "defined",
                  "do",
                  "else",
                  "elsif",
                  "end",
                  "END",
                  "ensure",
                  "for",
                  "if",
                  "in",
                  "module",
                  "next",
                  "not",
                  "or",
                  "redo",
                  "require",
                  "rescue",
                  "retry",
                  "return",
                  "then",
                  "undef",
                  "unless",
                  "until",
                  "when",
                  "while",
                  "yield",
                  "include",
                  "extend",
                  "prepend",
                  "public",
                  "private",
                  "protected",
                  "raise",
                  "throw"
                ],
                "built_in": [
                  "proc",
                  "lambda",
                  "attr_accessor",
                  "attr_reader",
                  "attr_writer",
                  "define_method",
                  "private_constant",
                  "module_function"
                ],
                "literal": ["true", "false", "nil"]
              },
            ),
          ],
          contains: [
            ModeReference('~contains~1~starts~contains~0'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~1'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~2'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~3'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~4'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~5'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
            ModeReference(
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
          ],
        ),
      ],
    ),
    '~contains~1~starts~contains~0~contains~1~contains~5': Mode(
      relevance: 0,
      match: "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)",
      scope: "title.class",
    ),
    '~contains~1~starts~contains~0~contains~1~contains~4': Mode(
      relevance: 0,
      match: "\\b[A-Z][A-Z_0-9]+\\b",
      className: "variable.constant",
    ),
    '~contains~1~starts~contains~0~contains~1~contains~3': Mode(
      relevance: 0,
      match: [
        "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
        "\\.new[. (]"
      ],
      scope: {"1": "title.class"},
    ),
    '~contains~1~starts~contains~0~contains~1~contains~2': Mode(
      match: [
        "(include|extend)\\s+",
        "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
      ],
      scope: {"2": "title.class"},
      keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      },
    ),
    '~contains~1~starts~contains~0~contains~1~contains~1': Mode(
      variants: [
        Mode(
          match: [
            "class\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
            "\\s+<\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
          ],
        ),
        Mode(
          match: [
            "\\b(class|module)\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
          ],
        ),
      ],
      scope: {"2": "title.class", "4": "title.class.inherited"},
      keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      },
    ),
    '~contains~1~starts~contains~0~contains~1': Mode(
      className: "subst",
      begin: "#\\{",
      end: "\\}",
      keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      },
      contains: [
        ModeReference('~contains~1~starts~contains~0'),
        ModeReference('~contains~1~starts~contains~0~contains~1~contains~1'),
        ModeReference('~contains~1~starts~contains~0~contains~1~contains~2'),
        ModeReference('~contains~1~starts~contains~0~contains~1~contains~3'),
        ModeReference('~contains~1~starts~contains~0~contains~1~contains~4'),
        ModeReference('~contains~1~starts~contains~0~contains~1~contains~5'),
        ModeReference('~contains~1~starts~contains~0~contains~1~contains~6'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
        ModeReference(
            '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
      ],
    ),
    '~contains~1~starts~contains~0': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
        ModeReference('~contains~1~starts~contains~0~contains~1'),
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
          begin: "%[qQwWx]?\\(",
          end: "\\)",
        ),
        Mode(
          begin: "%[qQwWx]?\\[",
          end: "\\]",
        ),
        Mode(
          begin: "%[qQwWx]?\\{",
          end: "\\}",
        ),
        Mode(
          begin: "%[qQwWx]?<",
          end: ">",
        ),
        Mode(
          begin: "%[qQwWx]?\\/",
          end: "\\/",
        ),
        Mode(
          begin: "%[qQwWx]?%",
          end: "%",
        ),
        Mode(
          begin: "%[qQwWx]?-",
          end: "-",
        ),
        Mode(
          begin: "%[qQwWx]?\\|",
          end: "\\|",
        ),
        Mode(
          begin: "\\B\\?(\\\\\\d{1,3})",
        ),
        Mode(
          begin: "\\B\\?(\\\\x[A-Fa-f0-9]{1,2})",
        ),
        Mode(
          begin: "\\B\\?(\\\\u\\{?[A-Fa-f0-9]{1,6}\\}?)",
        ),
        Mode(
          begin:
              "\\B\\?(\\\\M-\\\\C-|\\\\M-\\\\c|\\\\c\\\\M-|\\\\M-|\\\\C-\\\\M-)[\\x20-\\x7e]",
        ),
        Mode(
          begin: "\\B\\?\\\\(c|C-)[\\x20-\\x7e]",
        ),
        Mode(
          begin: "\\B\\?\\\\?\\S",
        ),
        Mode(
          begin:
              "<<[-\\x7e]?'?(?=(\\w+)(?=\\W)[^\\n]*\\n(?:[^\\n]*\\n)*?\\s*\\1\\b)",
          contains: [
            Mode(
              begin: "(\\w+)",
              end: "(\\w+)",
              contains: [
                BACKSLASH_ESCAPE,
                ModeReference('~contains~1~starts~contains~0~contains~1'),
              ],
              onBegin: endSameAsBeginOnBegin,
              onEnd: endSameAsBeginOnEnd,
            ),
          ],
        ),
      ],
    ),
  },
  name: "Ruby",
  aliases: ["rb", "gemspec", "podspec", "thor", "irb"],
  keywords: {
    "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
    "variable.language": ["self", "super"],
    "keyword": [
      "alias",
      "and",
      "begin",
      "BEGIN",
      "break",
      "case",
      "class",
      "defined",
      "do",
      "else",
      "elsif",
      "end",
      "END",
      "ensure",
      "for",
      "if",
      "in",
      "module",
      "next",
      "not",
      "or",
      "redo",
      "require",
      "rescue",
      "retry",
      "return",
      "then",
      "undef",
      "unless",
      "until",
      "when",
      "while",
      "yield",
      "include",
      "extend",
      "prepend",
      "public",
      "private",
      "protected",
      "raise",
      "throw"
    ],
    "built_in": [
      "proc",
      "lambda",
      "attr_accessor",
      "attr_reader",
      "attr_writer",
      "define_method",
      "private_constant",
      "module_function"
    ],
    "literal": ["true", "false", "nil"]
  },
  illegal: "\\/\\*",
  contains: [
    Mode(
      scope: "meta",
      begin: "^#![ ]*\\/.*\\bruby\\b.*",
      end: "\$",
      relevance: 0,
      onBegin: shebangOnBegin,
    ),
    Mode(
      begin: "^\\s*=>",
      starts: Mode(
        end: "\$",
        contains: [
          ModeReference('~contains~1~starts~contains~0'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~1'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~2'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~3'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~4'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~5'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~6'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
        ],
      ),
    ),
    Mode(
      className: "meta.prompt",
      begin:
          "^([>?]>|[\\w#]+\\(\\w+\\):\\d+:\\d+[>*]|(\\w+-)?\\d+\\.\\d+\\.\\d+(p\\d+)?[^\\d][^>]+>)(?=[ ])",
      starts: Mode(
        end: "\$",
        keywords: {
          "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
          "variable.language": ["self", "super"],
          "keyword": [
            "alias",
            "and",
            "begin",
            "BEGIN",
            "break",
            "case",
            "class",
            "defined",
            "do",
            "else",
            "elsif",
            "end",
            "END",
            "ensure",
            "for",
            "if",
            "in",
            "module",
            "next",
            "not",
            "or",
            "redo",
            "require",
            "rescue",
            "retry",
            "return",
            "then",
            "undef",
            "unless",
            "until",
            "when",
            "while",
            "yield",
            "include",
            "extend",
            "prepend",
            "public",
            "private",
            "protected",
            "raise",
            "throw"
          ],
          "built_in": [
            "proc",
            "lambda",
            "attr_accessor",
            "attr_reader",
            "attr_writer",
            "define_method",
            "private_constant",
            "module_function"
          ],
          "literal": ["true", "false", "nil"]
        },
        contains: [
          ModeReference('~contains~1~starts~contains~0'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~1'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~2'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~3'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~4'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~5'),
          ModeReference('~contains~1~starts~contains~0~contains~1~contains~6'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
          ModeReference(
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
        ],
      ),
    ),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
    ModeReference('~contains~1~starts~contains~0'),
    ModeReference('~contains~1~starts~contains~0~contains~1~contains~1'),
    ModeReference('~contains~1~starts~contains~0~contains~1~contains~2'),
    ModeReference('~contains~1~starts~contains~0~contains~1~contains~3'),
    ModeReference('~contains~1~starts~contains~0~contains~1~contains~4'),
    ModeReference('~contains~1~starts~contains~0~contains~1~contains~5'),
    ModeReference('~contains~1~starts~contains~0~contains~1~contains~6'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
    ModeReference(
        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
  ],
);

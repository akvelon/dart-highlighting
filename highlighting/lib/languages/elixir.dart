// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final elixir = Mode(
  refs: {
    '~contains~0~contains~1~contains~9': Mode(
      className: "symbol",
      begin: "[a-zA-Z_][a-zA-Z0-9_.]*(!|\\?)?:(?!:)",
      relevance: 0,
    ),
    '~contains~0~contains~1~contains~8': Mode(
      className: "symbol",
      begin: ":(?![\\s:])",
      contains: [
        Mode(ref: '~contains~0'),
        Mode(
          begin:
              "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?",
        ),
      ],
      relevance: 0,
    ),
    '~contains~0~contains~1~contains~7': Mode(
      begin: "::",
    ),
    '~contains~0~contains~1~contains~6': Mode(
      className: "function",
      beginKeywords: "def defp defmacro defmacrop",
      end: "\\B\\b",
      contains: [
        Mode(ref: '~contains~0~contains~1~contains~5~contains~0'),
      ],
    ),
    '~contains~0~contains~1~contains~5~contains~0': Mode(
      scope: "title",
      begin: "[a-zA-Z_][a-zA-Z0-9_.]*(!|\\?)?",
      relevance: 0,
      endsParent: true,
    ),
    '~contains~0~contains~1~contains~5': Mode(
      className: "class",
      beginKeywords: "defimpl defmodule defprotocol defrecord",
      end: "\\bdo\\b|\$|;",
      contains: [
        Mode(ref: '~contains~0~contains~1~contains~5~contains~0'),
      ],
    ),
    '~contains~0~contains~1~contains~3': Mode(
      className: "string",
      begin: "\\x7e[a-z](?=[/|([{<\"'])",
      contains: [
        Mode(
          begin: "\"",
          end: "\"",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\"",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "'",
          end: "'",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\'",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "\\/",
          end: "\\/",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\/",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "\\|",
          end: "\\|",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\|",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\)",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "\\[",
          end: "\\]",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\]",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "\\{",
          end: "\\}",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\}",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "<",
          end: ">",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\>",
              relevance: 0,
            ),
            Mode(
                ref:
                    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
      ],
    ),
    '~contains~0~contains~1~contains~2': Mode(
      className: "string",
      begin: "\\x7e[A-Z](?=[/|([{<\"'])",
      contains: [
        Mode(
          begin: "\"",
          end: "\"",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\"",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "'",
          end: "'",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\'",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "\\/",
          end: "\\/",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\/",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "\\|",
          end: "\\|",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\|",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\)",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "\\[",
          end: "\\]",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\]",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "\\{",
          end: "\\}",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\\\}",
              relevance: 0,
            ),
          ],
        ),
        Mode(
          begin: "<",
          end: ">",
          contains: [
            Mode(
              scope: "char.escape",
              begin: "\\\\>",
              relevance: 0,
            ),
          ],
        ),
      ],
    ),
    '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1': Mode(
      match: "\\\\[\\s\\S]",
      scope: "char.escape",
      relevance: 0,
    ),
    '~contains~0~contains~1~contains~12': Mode(
      className: "variable",
      begin: "(\\\$\\W)|((\\\$|@@?)(\\w+))",
    ),
    '~contains~0~contains~1~contains~11': Mode(
      className: "number",
      begin:
          "(\\b0o[0-7_]+)|(\\b0b[01_]+)|(\\b0x[0-9a-fA-F_]+)|(-?\\b[0-9][0-9_]*(\\.[0-9_]+([eE][-+]?[0-9]+)?)?)",
      relevance: 0,
    ),
    '~contains~0~contains~1~contains~10': Mode(
      className: "title.class",
      begin: "(\\b[A-Z][a-zA-Z0-9_]+)",
      relevance: 0,
    ),
    '~contains~0~contains~1~contains~1': Mode(
      className: "regex",
      variants: [
        Mode(
          begin: "\\x7er(?=[/|([{<\"'])",
          contains: [
            Mode(
              begin: "\"",
              end: "\"[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\"",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "'",
              end: "'[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\'",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "\\/",
              end: "\\/[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\/",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "\\|",
              end: "\\|[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\|",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "\\(",
              end: "\\)[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\)",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "\\[",
              end: "\\][uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\]",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "\\{",
              end: "\\}[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\}",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
            Mode(
              begin: "<",
              end: ">[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\>",
                  relevance: 0,
                ),
                Mode(
                    ref:
                        '~contains~0~contains~1~contains~1~variants~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~1'),
              ],
            ),
          ],
        ),
        Mode(
          begin: "\\x7eR(?=[/|([{<\"'])",
          contains: [
            Mode(
              begin: "\"",
              end: "\"[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\"",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "'",
              end: "'[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\'",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "\\/",
              end: "\\/[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\/",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "\\|",
              end: "\\|[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\|",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "\\(",
              end: "\\)[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\)",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "\\[",
              end: "\\][uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\]",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "\\{",
              end: "\\}[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\\\}",
                  relevance: 0,
                ),
              ],
            ),
            Mode(
              begin: "<",
              end: ">[uismxfU]{0,7}",
              contains: [
                Mode(
                  scope: "char.escape",
                  begin: "\\\\>",
                  relevance: 0,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    '~contains~0~contains~1': Mode(
      className: "subst",
      begin: "#\\{",
      end: "\\}",
      keywords: {
        "\$pattern": "[a-zA-Z_][a-zA-Z0-9_.]*(!|\\?)?",
        "keyword": [
          "after",
          "alias",
          "and",
          "case",
          "catch",
          "cond",
          "defstruct",
          "defguard",
          "do",
          "else",
          "end",
          "fn",
          "for",
          "if",
          "import",
          "in",
          "not",
          "or",
          "quote",
          "raise",
          "receive",
          "require",
          "reraise",
          "rescue",
          "try",
          "unless",
          "unquote",
          "unquote_splicing",
          "use",
          "when",
          "with|0"
        ],
        "literal": ["false", "nil", "true"]
      },
      contains: [
        Mode(ref: '~contains~0'),
        Mode(ref: '~contains~0~contains~1~contains~1'),
        Mode(ref: '~contains~0~contains~1~contains~2'),
        Mode(ref: '~contains~0~contains~1~contains~3'),
        HASH_COMMENT_MODE,
        Mode(ref: '~contains~0~contains~1~contains~5'),
        Mode(ref: '~contains~0~contains~1~contains~6'),
        Mode(ref: '~contains~0~contains~1~contains~7'),
        Mode(ref: '~contains~0~contains~1~contains~8'),
        Mode(ref: '~contains~0~contains~1~contains~9'),
        Mode(ref: '~contains~0~contains~1~contains~10'),
        Mode(ref: '~contains~0~contains~1~contains~11'),
        Mode(ref: '~contains~0~contains~1~contains~12'),
      ],
    ),
    '~contains~0': Mode(
      className: "string",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~0~contains~1'),
      ],
      variants: [
        Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
        ),
        Mode(
          begin: "'''",
          end: "'''",
        ),
        Mode(
          begin: "\\x7eS\"\"\"",
          end: "\"\"\"",
          contains: [],
        ),
        Mode(
          begin: "\\x7eS\"",
          end: "\"",
          contains: [],
        ),
        Mode(
          begin: "\\x7eS'''",
          end: "'''",
          contains: [],
        ),
        Mode(
          begin: "\\x7eS'",
          end: "'",
          contains: [],
        ),
        Mode(
          begin: "'",
          end: "'",
        ),
        Mode(
          begin: "\"",
          end: "\"",
        ),
      ],
    ),
  },
  name: "Elixir",
  aliases: ["ex", "exs"],
  keywords: {
    "\$pattern": "[a-zA-Z_][a-zA-Z0-9_.]*(!|\\?)?",
    "keyword": [
      "after",
      "alias",
      "and",
      "case",
      "catch",
      "cond",
      "defstruct",
      "defguard",
      "do",
      "else",
      "end",
      "fn",
      "for",
      "if",
      "import",
      "in",
      "not",
      "or",
      "quote",
      "raise",
      "receive",
      "require",
      "reraise",
      "rescue",
      "try",
      "unless",
      "unquote",
      "unquote_splicing",
      "use",
      "when",
      "with|0"
    ],
    "literal": ["false", "nil", "true"]
  },
  contains: [
    Mode(ref: '~contains~0'),
    Mode(ref: '~contains~0~contains~1~contains~1'),
    Mode(ref: '~contains~0~contains~1~contains~2'),
    Mode(ref: '~contains~0~contains~1~contains~3'),
    HASH_COMMENT_MODE,
    Mode(ref: '~contains~0~contains~1~contains~5'),
    Mode(ref: '~contains~0~contains~1~contains~6'),
    Mode(ref: '~contains~0~contains~1~contains~7'),
    Mode(ref: '~contains~0~contains~1~contains~8'),
    Mode(ref: '~contains~0~contains~1~contains~9'),
    Mode(ref: '~contains~0~contains~1~contains~10'),
    Mode(ref: '~contains~0~contains~1~contains~11'),
    Mode(ref: '~contains~0~contains~1~contains~12'),
  ],
);

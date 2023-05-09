// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final latex = Language(
  id: "latex",
  refs: {
    '~contains~6~starts~starts~contains~0': Mode(
      begin: "\\[",
      end: "\\]",
      endsParent: true,
      relevance: 0,
      contains: [
        ModeReference('~contains~2~starts~starts~contains~0~contains~0'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~2'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~3'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~4'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~5'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~6'),
      ],
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~6': Mode(
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
      relevance: 0,
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~5': Mode(
      className: "meta",
      begin: "% ?!(T[eE]X|tex|BIB|bib)",
      end: "\$",
      relevance: 10,
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~4': Mode(
      className: "built_in",
      relevance: 0,
      begin: "[\$&^_]",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~3': Mode(
      variants: [
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5'),
      ],
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~2': Mode(
      className: "params",
      relevance: 0,
      begin: "#+\\d?",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5':
        Mode(
      begin: "\\^{2}[\\u0000-\\u007f]",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4':
        Mode(
      begin: "\\^{2}[0-9a-f]{2}",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3':
        Mode(
      begin: "\\^{3}[0-9a-f]{3}",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2':
        Mode(
      begin: "\\^{4}[0-9a-f]{4}",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1':
        Mode(
      begin: "\\^{5}[0-9a-f]{5}",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0':
        Mode(
      begin: "\\^{6}[0-9a-f]{6}",
    ),
    '~contains~2~starts~starts~contains~0~contains~0~contains~1': Mode(
      className: "keyword",
      begin: "\\\\",
      relevance: 0,
      contains: [
        Mode(
          endsParent: true,
          begin:
              "(?:(?:NeedsTeXFormat|RequirePackage|GetIdInfo)(?![a-zA-Z@:_])|Provides(?:Expl)?(?:Package|Class|File)(?![a-zA-Z@:_])|(?:DeclareOption|ProcessOptions)(?![a-zA-Z@:_])|(?:documentclass|usepackage|input|include)(?![a-zA-Z@:_])|makeat(?:letter|other)(?![a-zA-Z@:_])|ExplSyntax(?:On|Off)(?![a-zA-Z@:_])|(?:new|renew|provide)?command(?![a-zA-Z@:_])|(?:re)newenvironment(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)(?:Expandable)?DocumentCommand(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)DocumentEnvironment(?![a-zA-Z@:_])|(?:(?:e|g|x)?def|let)(?![a-zA-Z@:_])|(?:begin|end)(?![a-zA-Z@:_])|(?:part|chapter|(?:sub){0,2}section|(?:sub)?paragraph)(?![a-zA-Z@:_])|caption(?![a-zA-Z@:_])|(?:label|(?:eq|page|name)?ref|(?:paren|foot|super)?cite)(?![a-zA-Z@:_])|(?:alpha|beta|[Gg]amma|[Dd]elta|(?:var)?epsilon|zeta|eta|[Tt]heta|vartheta)(?![a-zA-Z@:_])|(?:iota|(?:var)?kappa|[Ll]ambda|mu|nu|[Xx]i|[Pp]i|varpi|(?:var)rho)(?![a-zA-Z@:_])|(?:[Ss]igma|varsigma|tau|[Uu]psilon|[Pp]hi|varphi|chi|[Pp]si|[Oo]mega)(?![a-zA-Z@:_])|(?:frac|sum|prod|lim|infty|times|sqrt|leq|geq|left|right|middle|[bB]igg?)(?![a-zA-Z@:_])|(?:[lr]angle|q?quad|[lcvdi]?dots|d?dot|hat|tilde|bar)(?![a-zA-Z@:_]))",
        ),
        Mode(
          endsParent: true,
          begin:
              "(?:__)?[a-zA-Z]{2,}_[a-zA-Z](?:_?[a-zA-Z])+:[a-zA-Z]*(?![a-zA-Z:_])|[lgc]__?[a-zA-Z](?:_?[a-zA-Z])*_[a-zA-Z]{2,}(?![a-zA-Z:_])|[qs]__?[a-zA-Z](?:_?[a-zA-Z])+(?![a-zA-Z:_])|use(?:_i)?:[a-zA-Z]*(?![a-zA-Z:_])|(?:else|fi|or):(?![a-zA-Z:_])|(?:if|cs|exp):w(?![a-zA-Z:_])|(?:hbox|vbox):n(?![a-zA-Z:_])|::[a-zA-Z]_unbraced(?![a-zA-Z:_])|::[a-zA-Z:](?![a-zA-Z:_])",
        ),
        Mode(
          endsParent: true,
          variants: [
            ModeReference(
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0'),
            ModeReference(
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1'),
            ModeReference(
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2'),
            ModeReference(
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3'),
            ModeReference(
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4'),
            ModeReference(
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5'),
          ],
        ),
        Mode(
          endsParent: true,
          relevance: 0,
          variants: [
            Mode(
              begin: "[a-zA-Z@]+",
            ),
            Mode(
              begin: "[^a-zA-Z@]?",
            ),
          ],
        ),
      ],
    ),
    '~contains~2~starts~starts~contains~0~contains~0': Mode(
      begin: "\\{",
      end: "\\}",
      relevance: 0,
      contains: [
        ModeSelfReference(),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~2'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~3'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~4'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~5'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~6'),
      ],
    ),
    '~contains~2~starts~starts~contains~0': Mode(
      begin: "\\{",
      end: "\\}",
      relevance: 0,
      contains: [
        ModeReference('~contains~2~starts~starts~contains~0~contains~0'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~1'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~2'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~3'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~4'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~5'),
        ModeReference(
            '~contains~2~starts~starts~contains~0~contains~0~contains~6'),
      ],
      endsParent: true,
    ),
    '~contains~0~contains~0': Mode(
      begin: "\\s+",
      relevance: 0,
    ),
  },
  name: "LaTeX",
  aliases: ["tex"],
  contains: [
    Mode(
      begin: "\\\\verb(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\verb"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          Mode(
            className: "string",
            begin: "(.|\\r?\\n)",
            end: "(.|\\r?\\n)",
            excludeBegin: true,
            excludeEnd: true,
            endsParent: true,
            onBegin: endSameAsBeginOnBegin,
            onEnd: endSameAsBeginOnEnd,
          ),
        ],
      ),
    ),
    Mode(
      begin: "\\\\lstinline(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\lstinline"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          Mode(
            className: "string",
            begin: "(.|\\r?\\n)",
            end: "(.|\\r?\\n)",
            excludeBegin: true,
            excludeEnd: true,
            endsParent: true,
            onBegin: endSameAsBeginOnBegin,
            onEnd: endSameAsBeginOnEnd,
          ),
        ],
      ),
    ),
    Mode(
      begin: "\\\\mint(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\mint"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          ModeReference('~contains~0~contains~0'),
        ],
        starts: Mode(
          relevance: 0,
          contains: [
            ModeReference('~contains~2~starts~starts~contains~0'),
          ],
          starts: Mode(
            contains: [
              Mode(
                className: "string",
                begin: "(.|\\r?\\n)",
                end: "(.|\\r?\\n)",
                excludeBegin: true,
                excludeEnd: true,
                endsParent: true,
                onBegin: endSameAsBeginOnBegin,
                onEnd: endSameAsBeginOnEnd,
              ),
            ],
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\mintinline(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\mintinline"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          ModeReference('~contains~0~contains~0'),
        ],
        starts: Mode(
          relevance: 0,
          contains: [
            ModeReference('~contains~2~starts~starts~contains~0'),
          ],
          starts: Mode(
            contains: [
              Mode(
                relevance: 0,
                begin: "\\{",
                starts: Mode(
                  endsParent: true,
                  contains: [
                    Mode(
                      className: "string",
                      end: "(?=\\})",
                      endsParent: true,
                      contains: [
                        Mode(
                          begin: "\\{",
                          end: "\\}",
                          relevance: 0,
                          contains: [
                            ModeSelfReference(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Mode(
                className: "string",
                begin: "(.|\\r?\\n)",
                end: "(.|\\r?\\n)",
                excludeBegin: true,
                excludeEnd: true,
                endsParent: true,
                onBegin: endSameAsBeginOnBegin,
                onEnd: endSameAsBeginOnEnd,
              ),
            ],
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\url(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\url"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          Mode(
            relevance: 0,
            begin: "\\{",
            starts: Mode(
              endsParent: true,
              contains: [
                Mode(
                  className: "link",
                  end: "(?=\\})",
                  endsParent: true,
                  contains: [
                    Mode(
                      begin: "\\{",
                      end: "\\}",
                      relevance: 0,
                      contains: [
                        ModeSelfReference(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Mode(
            relevance: 0,
            begin: "\\{",
            starts: Mode(
              endsParent: true,
              contains: [
                Mode(
                  className: "link",
                  end: "(?=\\})",
                  endsParent: true,
                  contains: [
                    Mode(
                      begin: "\\{",
                      end: "\\}",
                      relevance: 0,
                      contains: [
                        ModeSelfReference(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Mode(
      begin: "\\\\hyperref(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\hyperref"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          Mode(
            relevance: 0,
            begin: "\\{",
            starts: Mode(
              endsParent: true,
              contains: [
                Mode(
                  className: "link",
                  end: "(?=\\})",
                  endsParent: true,
                  contains: [
                    Mode(
                      begin: "\\{",
                      end: "\\}",
                      relevance: 0,
                      contains: [
                        ModeSelfReference(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Mode(
      begin: "\\\\href(?![a-zA-Z@:_])",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\href"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        contains: [
          ModeReference('~contains~0~contains~0'),
        ],
        starts: Mode(
          relevance: 0,
          contains: [
            ModeReference('~contains~6~starts~starts~contains~0'),
          ],
          starts: Mode(
            contains: [
              Mode(
                relevance: 0,
                begin: "\\{",
                starts: Mode(
                  endsParent: true,
                  contains: [
                    Mode(
                      className: "link",
                      end: "(?=\\})",
                      endsParent: true,
                      contains: [
                        Mode(
                          begin: "\\{",
                          end: "\\}",
                          relevance: 0,
                          contains: [
                            ModeSelfReference(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{verbatim\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          className: "string",
          end: "(?=\\\\end\\{verbatim\\})",
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{filecontents\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~2~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{filecontents\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{Verbatim\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{Verbatim\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{BVerbatim\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{BVerbatim\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{LVerbatim\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{LVerbatim\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{verbatim\\*\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          className: "string",
          end: "(?=\\\\end\\{verbatim\\*\\})",
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{filecontents\\*\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~2~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{filecontents\\*\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{Verbatim\\*\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{Verbatim\\*\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{BVerbatim\\*\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{BVerbatim\\*\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{LVerbatim\\*\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              className: "string",
              end: "(?=\\\\end\\{LVerbatim\\*\\})",
            ),
          ),
        ),
      ),
    ),
    Mode(
      begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{minted\\})",
      keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
      relevance: 0,
      contains: [
        ModeReference('~contains~0~contains~0'),
      ],
      starts: Mode(
        relevance: 0,
        contains: [
          ModeReference('~contains~2~starts~starts~contains~0'),
        ],
        starts: Mode(
          contains: [
            ModeReference('~contains~0~contains~0'),
          ],
          starts: Mode(
            relevance: 0,
            contains: [
              ModeReference('~contains~6~starts~starts~contains~0'),
            ],
            starts: Mode(
              contains: [
                ModeReference('~contains~0~contains~0'),
              ],
              starts: Mode(
                relevance: 0,
                contains: [
                  ModeReference('~contains~2~starts~starts~contains~0'),
                ],
                starts: Mode(
                  className: "string",
                  end: "(?=\\\\end\\{minted\\})",
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    ModeReference('~contains~2~starts~starts~contains~0~contains~0~contains~1'),
    ModeReference('~contains~2~starts~starts~contains~0~contains~0~contains~2'),
    ModeReference('~contains~2~starts~starts~contains~0~contains~0~contains~3'),
    ModeReference('~contains~2~starts~starts~contains~0~contains~0~contains~4'),
    ModeReference('~contains~2~starts~starts~contains~0~contains~0~contains~5'),
    ModeReference('~contains~2~starts~starts~contains~0~contains~0~contains~6'),
  ],
);

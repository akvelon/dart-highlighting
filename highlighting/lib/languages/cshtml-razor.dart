// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final cshtmlRazor = Language(
  id: "cshtml-razor",
  refs: {
    '~contains~2~contains~3~contains~6~contains~9': Mode(
      variants: [
        Mode(
          begin: "@@",
        ),
        Mode(
          begin: "[a-zA-Z]+@",
        ),
      ],
      skip: true,
    ),
    '~contains~2~contains~3~contains~6~contains~21': Mode(
      className: "tag",
      begin: "</?",
      end: "/?>",
      contains: [
        Mode(
          className: "name",
          begin: "[^\\/><\\s]+",
          relevance: 0,
        ),
        ModeReference(
            '~contains~2~contains~3~contains~6~contains~19~contains~0'),
      ],
    ),
    '~contains~2~contains~3~contains~6~contains~20': Mode(
      className: "tag",
      begin: "<script(?=\\s|>|\$)",
      end: ">",
      keywords: {"name": "script"},
      contains: [
        ModeReference(
            '~contains~2~contains~3~contains~6~contains~19~contains~0'),
      ],
      starts: Mode(
        end: "</script>",
        returnEnd: true,
        subLanguage: ["actionscript", "javascript", "handlebars", "xml"],
      ),
    ),
    '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0':
        Mode(
      begin: "@[A-Za-z0-9\\._:-]+",
      returnBegin: true,
      end: "(\\r|\\n|<|\\s|\"|')",
      subLanguage: ["csharp"],
      contains: [
        Mode(
          begin: "@",
          className: "built_in",
        ),
        Mode(
          begin: "\\[",
          end: "\\]",
          skip: true,
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          skip: true,
        ),
      ],
      returnEnd: true,
    ),
    '~contains~2~contains~3~contains~6~contains~19~contains~0': Mode(
      endsWithParent: true,
      illegal: "<",
      relevance: 0,
      contains: [
        Mode(
          className: "attr",
          begin: "[A-Za-z0-9\\._:-]+",
          relevance: 0,
        ),
        Mode(
          begin: "=\\s*",
          relevance: 0,
          contains: [
            Mode(
              className: "string",
              variants: [
                Mode(
                  begin: "\"",
                  end: "\"",
                  contains: [
                    ModeReference(
                        '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~3~contains~6~contains~12'),
                  ],
                ),
                Mode(
                  begin: "'",
                  end: "'",
                  contains: [
                    ModeReference(
                        '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~3~contains~6~contains~12'),
                  ],
                ),
                Mode(
                  begin: "[^\\s\"'=<>`]+",
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    '~contains~2~contains~3~contains~6~contains~19': Mode(
      className: "tag",
      begin: "<style(?=\\s|>|\$)",
      end: ">",
      keywords: {"name": "style"},
      contains: [
        ModeReference(
            '~contains~2~contains~3~contains~6~contains~19~contains~0'),
      ],
      starts: Mode(
        end: "</style>",
        returnEnd: true,
        subLanguage: ["css", "xml"],
      ),
    ),
    '~contains~2~contains~3~contains~6~contains~18': Mode(
      className: "meta",
      begin: "<\\?xml",
      end: "\\?>",
      relevance: 10,
    ),
    '~contains~2~contains~3~contains~6~contains~17': Mode(
      begin: "<\\!\\[CDATA\\[",
      end: "\\]\\]>",
      relevance: 10,
    ),
    '~contains~2~contains~3~contains~6~contains~16': Mode(
      scope: "comment",
      begin: "<!--",
      end: "-->",
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
      relevance: 10,
    ),
    '~contains~2~contains~3~contains~6~contains~15': Mode(
      className: "meta",
      begin: "<!DOCTYPE",
      end: ">",
      relevance: 10,
      contains: [
        Mode(
          begin: "\\[",
          end: "\\]",
        ),
      ],
    ),
    '~contains~2~contains~3~contains~6~contains~14': Mode(
      begin: "<\\!\\[CDATA\\[",
      end: "\\]\\]>",
      relevance: 10,
    ),
    '~contains~2~contains~3~contains~6~contains~13': Mode(
      className: "meta",
      begin: "<!DOCTYPE",
      end: ">",
      relevance: 10,
      contains: [
        Mode(
          begin: "\\[",
          end: "\\]",
        ),
      ],
    ),
    '~contains~2~contains~3~contains~6~contains~12': Mode(
      begin: "@\\(",
      end: "\\)",
      returnBegin: true,
      returnEnd: true,
      subLanguage: ["csharp"],
      contains: [
        Mode(
          begin: "@\\(",
          className: "built_in",
        ),
        Mode(
          begin: "\\(",
          end: "\\)",
          subLanguage: ["csharp"],
          contains: [
            QUOTE_STRING_MODE,
            ModeSelfReference(),
            ModeReference('~contains~2~contains~3~contains~6~contains~10'),
          ],
        ),
        ModeReference('~contains~2~contains~3~contains~6~contains~10'),
        Mode(
          begin: "\\)",
          className: "built_in",
          endsParent: true,
        ),
      ],
    ),
    '~contains~2~contains~3~contains~6~contains~11': Mode(
      scope: "comment",
      begin: "@\\*",
      end: "\\*@",
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
      relevance: 10,
    ),
    '~contains~2~contains~3~contains~6~contains~10': Mode(
      begin: "[@]{0,1}<text>",
      returnBegin: true,
      end: "</text>",
      returnEnd: true,
      subLanguage: ["cshtml-razor"],
      contains: [
        Mode(
          begin: "[@]{0,1}<text>",
          className: "built_in",
        ),
        Mode(
          begin: "</text>",
          className: "built_in",
          endsParent: true,
        ),
      ],
    ),
    '~contains~2~contains~3~contains~6': Mode(
      begin: "@try[\\s]*{",
      end: "}",
      returnBegin: true,
      returnEnd: true,
      subLanguage: ["csharp"],
      contains: [
        Mode(
          begin: "@",
          className: "built_in",
        ),
        Mode(
          begin: "try[\\s]*{",
          subLanguage: ["csharp"],
        ),
        Mode(
          variants: [
            Mode(
              begin: "}[\\s]*catch[\\s]*\\([^\\)]+\\)[\\s]*{",
            ),
            Mode(
              begin: "}[\\s]*finally[\\s]*{",
            ),
          ],
          returnBegin: true,
          contains: [
            Mode(
              begin: "}",
              className: "built_in",
            ),
            Mode(
              variants: [
                Mode(
                  begin: "[\\s]*catch[\\s]*\\([^\\)]+\\)[\\s]*",
                ),
                Mode(
                  begin: "[\\s]*finally[\\s]*",
                ),
              ],
              subLanguage: ["csharp"],
            ),
            Mode(
              begin: "{",
              className: "built_in",
            ),
          ],
        ),
        ModeReference('~contains~0'),
        ModeReference('~contains~1'),
        ModeReference('~contains~2'),
        ModeReference('~contains~2~contains~3'),
        ModeReference('~contains~2~contains~3~contains~4'),
        ModeReference('~contains~2~contains~3~contains~5'),
        ModeReference('~contains~2~contains~3~contains~6~contains~9'),
        ModeReference('~contains~2~contains~3~contains~6~contains~10'),
        ModeReference('~contains~2~contains~3~contains~6~contains~11'),
        ModeReference('~contains~2~contains~3~contains~6~contains~12'),
        ModeReference('~contains~2~contains~3~contains~6~contains~13'),
        ModeReference('~contains~2~contains~3~contains~6~contains~14'),
        ModeReference('~contains~2~contains~3~contains~6~contains~15'),
        ModeReference('~contains~2~contains~3~contains~6~contains~16'),
        ModeReference('~contains~2~contains~3~contains~6~contains~17'),
        ModeReference('~contains~2~contains~3~contains~6~contains~18'),
        ModeReference('~contains~2~contains~3~contains~6~contains~19'),
        ModeReference('~contains~2~contains~3~contains~6~contains~20'),
        ModeReference('~contains~2~contains~3~contains~6~contains~21'),
        ModeReference(
            '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0'),
        ModeReference('~contains~2~contains~3~contains~6~contains~12'),
        ModeReference('~contains~2~contains~3~contains~4~contains~1'),
        ModeReference('~contains~1~contains~2'),
      ],
    ),
    '~contains~2~contains~3~contains~5': Mode(
      begin: "@await ",
      returnBegin: true,
      subLanguage: ["csharp"],
      end: "(\\r|\\n|<|\\s)",
      contains: [
        Mode(
          begin: "@await ",
          className: "built_in",
        ),
        Mode(
          begin: "[<\\r\\n]",
          endsParent: true,
        ),
      ],
    ),
    '~contains~2~contains~3~contains~4~contains~1': Mode(
      begin: "{",
      end: "}",
      contains: [
        QUOTE_STRING_MODE,
        ModeSelfReference(),
      ],
    ),
    '~contains~2~contains~3~contains~4': Mode(
      begin: "@section[\\s]+[a-zA-Z0-9]+[\\s]*{",
      returnBegin: true,
      returnEnd: true,
      end: "}",
      subLanguage: ["cshtml-razor"],
      contains: [
        Mode(
          begin: "@section[\\s]+[a-zA-Z0-9]+[\\s]*{",
          className: "built_in",
        ),
        ModeReference('~contains~2~contains~3~contains~4~contains~1'),
        ModeReference('~contains~1~contains~2'),
      ],
    ),
    '~contains~2~contains~3': Mode(
      variants: [
        Mode(
          begin: "@for[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
        Mode(
          begin: "@if[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
        Mode(
          begin: "@switch[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
        Mode(
          begin: "@while[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
        Mode(
          begin: "@using[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
        Mode(
          begin: "@lock[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
        Mode(
          begin: "@foreach[\\s]*\\([^{]+[\\s]*{",
          end: "}",
        ),
      ],
      returnBegin: true,
      returnEnd: true,
      subLanguage: ["csharp"],
      contains: [
        Mode(
          variants: [
            Mode(
              begin: "@for[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "@if[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "@switch[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "@while[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "@using[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "@lock[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "@foreach[\\s]*\\([^{]+[\\s]*{",
            ),
          ],
          returnBegin: true,
          contains: [
            Mode(
              begin: "@",
              className: "built_in",
            ),
            Mode(
              variants: [
                Mode(
                  begin: "for[\\s]*\\([^{]+[\\s]*",
                ),
                Mode(
                  begin: "if[\\s]*\\([^{]+[\\s]*",
                ),
                Mode(
                  begin: "switch[\\s]*\\([^{]+[\\s]*",
                ),
                Mode(
                  begin: "while[\\s]*\\([^{]+[\\s]*",
                ),
                Mode(
                  begin: "using[\\s]*\\([^{]+[\\s]*",
                ),
                Mode(
                  begin: "lock[\\s]*\\([^{]+[\\s]*",
                ),
                Mode(
                  begin: "foreach[\\s]*\\([^{]+[\\s]*",
                ),
              ],
              subLanguage: ["csharp"],
            ),
            Mode(
              begin: "{",
              className: "built_in",
            ),
          ],
        ),
        ModeReference('~contains~0'),
        ModeReference('~contains~1'),
        ModeReference('~contains~2'),
        ModeReference('~contains~2~contains~3~contains~4'),
        ModeReference('~contains~2~contains~3~contains~5'),
        ModeReference('~contains~2~contains~3~contains~6'),
        ModeReference('~contains~2~contains~3~contains~6~contains~9'),
        ModeReference('~contains~2~contains~3~contains~6~contains~10'),
        ModeReference('~contains~2~contains~3~contains~6~contains~11'),
        ModeReference('~contains~2~contains~3~contains~6~contains~12'),
        ModeReference('~contains~2~contains~3~contains~6~contains~13'),
        ModeReference('~contains~2~contains~3~contains~6~contains~14'),
        ModeReference('~contains~2~contains~3~contains~6~contains~15'),
        ModeReference('~contains~2~contains~3~contains~6~contains~16'),
        ModeReference('~contains~2~contains~3~contains~6~contains~17'),
        ModeReference('~contains~2~contains~3~contains~6~contains~18'),
        ModeReference('~contains~2~contains~3~contains~6~contains~19'),
        ModeReference('~contains~2~contains~3~contains~6~contains~20'),
        ModeReference('~contains~2~contains~3~contains~6~contains~21'),
        ModeReference(
            '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0'),
        ModeReference('~contains~2~contains~3~contains~6~contains~12'),
        Mode(
          variants: [
            Mode(
              begin: "}[\\s]*else\\sif[\\s]*\\([^{]+[\\s]*{",
            ),
            Mode(
              begin: "}[\\s]*else[\\s]*{",
            ),
          ],
          returnBegin: true,
          contains: [
            Mode(
              begin: "}",
              className: "built_in",
            ),
            Mode(
              variants: [
                Mode(
                  begin: "[\\s]*else\\sif[\\s]*\\([^{]+[\\s]*{",
                ),
                Mode(
                  begin: "[\\s]*else[\\s]*",
                ),
              ],
              subLanguage: ["csharp"],
            ),
            Mode(
              begin: "{",
              className: "built_in",
            ),
          ],
        ),
        ModeReference('~contains~2~contains~3~contains~4~contains~1'),
        ModeReference('~contains~1~contains~2'),
      ],
    ),
    '~contains~2': Mode(
      variants: [
        Mode(
          begin: "@\\{",
          end: "}",
        ),
        Mode(
          begin: "@code\\s*\\{",
          end: "}",
        ),
      ],
      returnBegin: true,
      returnEnd: true,
      subLanguage: ["csharp"],
      contains: [
        Mode(
          begin: "@(code\\s*)?\\{",
          className: "built_in",
        ),
        ModeReference('~contains~0'),
        ModeReference('~contains~1'),
        ModeReference('~contains~2~contains~3'),
        ModeReference('~contains~2~contains~3~contains~4'),
        ModeReference('~contains~2~contains~3~contains~5'),
        ModeReference('~contains~2~contains~3~contains~6'),
        ModeReference('~contains~2~contains~3~contains~6~contains~9'),
        ModeReference('~contains~2~contains~3~contains~6~contains~10'),
        ModeReference('~contains~2~contains~3~contains~6~contains~11'),
        ModeReference('~contains~2~contains~3~contains~6~contains~12'),
        ModeReference('~contains~2~contains~3~contains~6~contains~13'),
        ModeReference('~contains~2~contains~3~contains~6~contains~14'),
        ModeReference('~contains~2~contains~3~contains~6~contains~15'),
        ModeReference('~contains~2~contains~3~contains~6~contains~16'),
        ModeReference('~contains~2~contains~3~contains~6~contains~17'),
        ModeReference('~contains~2~contains~3~contains~6~contains~18'),
        ModeReference('~contains~2~contains~3~contains~6~contains~19'),
        ModeReference('~contains~2~contains~3~contains~6~contains~20'),
        ModeReference('~contains~2~contains~3~contains~6~contains~21'),
        ModeReference(
            '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0'),
        ModeReference('~contains~2~contains~3~contains~6~contains~12'),
        Mode(
          begin: "{",
          end: "}",
          contains: [
            ModeSelfReference(),
          ],
          skip: true,
        ),
        ModeReference('~contains~1~contains~2'),
      ],
    ),
    '~contains~1~contains~2': Mode(
      begin: "}",
      className: "built_in",
      endsParent: true,
    ),
    '~contains~1': Mode(
      begin: "^\\s*@helper[\\s]*[^{]+[\\s]*{",
      returnBegin: true,
      returnEnd: true,
      end: "}",
      subLanguage: ["cshtml-razor"],
      contains: [
        Mode(
          begin: "@helper",
          className: "built_in",
        ),
        Mode(
          begin: "{",
          className: "built_in",
        ),
        ModeReference('~contains~1~contains~2'),
      ],
    ),
    '~contains~0': Mode(
      begin: "^\\s*@(page|model|using|inherits|inject|layout)[^\\r\\n{\\(]*\$",
      end: "\$",
      returnBegin: true,
      returnEnd: true,
      contains: [
        Mode(
          begin: "^\\s*@(page|model|using|inherits|inject|layout)",
          className: "built_in",
        ),
        Mode(
          variants: [
            Mode(
              begin: "\\r|\\n",
              endsParent: true,
            ),
            Mode(
              begin: "\\s[^\\r\\n]+",
              end: "\$",
            ),
            Mode(
              begin: "\$",
            ),
          ],
          className: "type",
          endsParent: true,
        ),
      ],
    ),
  },
  aliases: ["cshtml", "razor", "razor-cshtml", "cshtml-razor"],
  contains: [
    ModeReference('~contains~0'),
    ModeReference('~contains~1'),
    ModeReference('~contains~2'),
    ModeReference('~contains~2~contains~3'),
    ModeReference('~contains~2~contains~3~contains~4'),
    ModeReference('~contains~2~contains~3~contains~5'),
    ModeReference('~contains~2~contains~3~contains~6'),
    ModeReference('~contains~2~contains~3~contains~6~contains~9'),
    ModeReference('~contains~2~contains~3~contains~6~contains~10'),
    ModeReference('~contains~2~contains~3~contains~6~contains~11'),
    ModeReference('~contains~2~contains~3~contains~6~contains~12'),
    ModeReference('~contains~2~contains~3~contains~6~contains~13'),
    ModeReference('~contains~2~contains~3~contains~6~contains~14'),
    ModeReference('~contains~2~contains~3~contains~6~contains~15'),
    ModeReference('~contains~2~contains~3~contains~6~contains~16'),
    ModeReference('~contains~2~contains~3~contains~6~contains~17'),
    ModeReference('~contains~2~contains~3~contains~6~contains~18'),
    ModeReference('~contains~2~contains~3~contains~6~contains~19'),
    ModeReference('~contains~2~contains~3~contains~6~contains~20'),
    ModeReference('~contains~2~contains~3~contains~6~contains~21'),
    ModeReference(
        '~contains~2~contains~3~contains~6~contains~19~contains~0~contains~1~contains~0~variants~0~contains~0'),
    ModeReference('~contains~2~contains~3~contains~6~contains~12'),
  ],
);

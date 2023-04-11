// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/language_definition_parts.dart';

final xml = Mode(
  refs: {
    '~contains~5~contains~0': Mode(
      endsWithParent: true,
      illegal: "<",
      relevance: 0,
      contains: [
        Mode(
          className: "attr",
          begin: "[\\p{L}0-9._:-]+",
          relevance: 0,
        ),
        Mode(
          begin: "=\\s*",
          relevance: 0,
          contains: [
            Mode(
              className: "string",
              endsParent: true,
              variants: [
                Mode(
                  begin: "\"",
                  end: "\"",
                  contains: [
                    Mode(ref: '~contains~3'),
                  ],
                ),
                Mode(
                  begin: "'",
                  end: "'",
                  contains: [
                    Mode(ref: '~contains~3'),
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
    '~contains~3': Mode(
      className: "symbol",
      begin: "&[a-z]+;|&#[0-9]+;|&#x[a-f0-9]+;",
    ),
    '~contains~0~contains~3': Mode(
      begin: "\\(",
      contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
      ],
      end: "\\)",
    ),
    '~contains~0~contains~2': Mode(
      scope: "string",
      begin: "'",
      end: "'",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      className: "string",
    ),
    '~contains~0~contains~1': Mode(
      scope: "string",
      begin: "\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      className: "string",
    ),
    '~contains~0~contains~0~contains~0': Mode(
      className: "keyword",
      begin: "#?[a-z_][a-z1-9_-]+",
      illegal: "\\n",
    ),
    '~contains~0~contains~0': Mode(
      begin: "\\s",
      contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
      ],
    ),
  },
  name: "HTML, XML",
  aliases: [
    "html",
    "xhtml",
    "rss",
    "atom",
    "xjb",
    "xsd",
    "xsl",
    "plist",
    "wsf",
    "svg"
  ],
  case_insensitive: true,
  unicodeRegex: true,
  contains: [
    Mode(
      className: "meta",
      begin: "<![a-z]",
      end: ">",
      relevance: 10,
      contains: [
        Mode(ref: '~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~1'),
        Mode(ref: '~contains~0~contains~2'),
        Mode(ref: '~contains~0~contains~3'),
        Mode(
          begin: "\\[",
          end: "\\]",
          contains: [
            Mode(
              className: "meta",
              begin: "<![a-z]",
              end: ">",
              contains: [
                Mode(ref: '~contains~0~contains~0'),
                Mode(ref: '~contains~0~contains~3'),
                Mode(ref: '~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~2'),
              ],
            ),
          ],
        ),
      ],
    ),
    Mode(
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
    Mode(
      begin: "<!\\[CDATA\\[",
      end: "\\]\\]>",
      relevance: 10,
    ),
    Mode(ref: '~contains~3'),
    Mode(
      className: "meta",
      end: "\\?>",
      variants: [
        Mode(
          begin: "<\\?xml",
          relevance: 10,
          contains: [
            Mode(ref: '~contains~0~contains~1'),
          ],
        ),
        Mode(
          begin: "<\\?[a-z][a-z0-9]+",
        ),
      ],
    ),
    Mode(
      className: "tag",
      begin: "<style(?=\\s|>)",
      end: ">",
      keywords: {"name": "style"},
      contains: [
        Mode(ref: '~contains~5~contains~0'),
      ],
      starts: Mode(
        end: "<\\/style>",
        returnEnd: true,
        subLanguage: ["css", "xml"],
      ),
    ),
    Mode(
      className: "tag",
      begin: "<script(?=\\s|>)",
      end: ">",
      keywords: {"name": "script"},
      contains: [
        Mode(ref: '~contains~5~contains~0'),
      ],
      starts: Mode(
        end: "<\\/script>",
        returnEnd: true,
        subLanguage: ["javascript", "handlebars", "xml"],
      ),
    ),
    Mode(
      className: "tag",
      begin: "<>|<\\/>",
    ),
    Mode(
      className: "tag",
      begin: "<(?=[\\p{L}_](?:[\\p{L}0-9_.-]*:)?[\\p{L}0-9_.-]*(?:\\/>|>|\\s))",
      end: "\\/?>",
      contains: [
        Mode(
          className: "name",
          begin: "[\\p{L}_](?:[\\p{L}0-9_.-]*:)?[\\p{L}0-9_.-]*",
          relevance: 0,
          starts: Mode(ref: '~contains~5~contains~0'),
        ),
      ],
    ),
    Mode(
      className: "tag",
      begin: "<\\/(?=[\\p{L}_](?:[\\p{L}0-9_.-]*:)?[\\p{L}0-9_.-]*>)",
      contains: [
        Mode(
          className: "name",
          begin: "[\\p{L}_](?:[\\p{L}0-9_.-]*:)?[\\p{L}0-9_.-]*",
          relevance: 0,
        ),
        Mode(
          begin: ">",
          relevance: 0,
          endsParent: true,
        ),
      ],
    ),
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final lang4D = Language(
  id: "4d",
  refs: {
    '~keyword': Mode(
      className: "keyword",
      begin:
          "[\\s]*\\b(Begin SQL|End SQL|For each|End for each|If|Else|End if|Case of|End case|For|End for|Use|End use|While|End while|Repeat|Until|Class extends|Class constructor|Function|var)\\b",
    ),
  },
  aliases: ["4d"],
  contains: [
    Mode(
      scope: "comment",
      begin: "//",
      end: "[^\\\\]\$",
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
    C_BLOCK_COMMENT_MODE,
    Mode(
      scope: "comment",
      begin: "`",
      end: "[^\\\\]\$",
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
      begin: "Begin SQL",
      end: "End SQL",
      subLanguage: ["sql"],
      relevance: 0,
    ),
    Mode(
      className: "literal",
      begin: "![0-9]+",
      end: "!",
    ),
    Mode(
      className: "literal",
      begin: "\\?[0-9]+",
      end: "\\?",
    ),
    ModeReference('~keyword'),
    Mode(
      className: "variable",
      begin:
          "<>[^:\\(\\)*\\/\\|\\.=\\\$\\<\\>\\#\\'\\[\\]\"\\-\\!\\%\\&\\x7e\\+\\,\\;\\n\\r]+",
    ),
    Mode(
      className: "variable",
      begin:
          "\\\$[^:\\(\\)*\\/\\|\\.=\\\$\\<\\>\\#\\'\\[\\]\"\\-\\!\\%\\&\\x7e\\+\\,\\;\\n\\r]+",
    ),
    Mode(
      className: "variable",
      begin: "\\[{2}",
      end: "\\]{2}",
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin:
          "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b[\\d]+(\\.[\\d]*)?|\\.[\\d]+)([eE][-+]?[\\d]+)?)(?!D)",
    ),
    Mode(
      className: "literal",
      begin: "\\b(False|True|Null|Undefined|This)",
    ),
    Mode(
      className: "function",
      begin:
          "[^:\\(\\)*\\/\\|\\.=\\\$\\<\\>\\#\\'\\[\\]\"\\-\\!\\%\\&\\x7e\\+\\,\\;\\n\\r]+[^:\\(\\)*\\/\\|\\.=\\\$\\<\\>\\#\\'\\[\\]\"\\-\\!\\%\\&\\~\\+\\,\\;\\n\\r\\s]+[^:\\(\\)*\\/\\|\\.=\\\$\\<\\>\\#\\'\\[\\]\"\\-\\!\\%\\&\\~\\+\\,\\;\\n\\r](?=\\()",
    ),
  ],
);

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mode.dart';

final BACKSLASH_ESCAPE = Mode(
  begin: "\\\\[\\s\\S]",
  relevance: 0,
);
final APOS_STRING_MODE = Mode(
  scope: "string",
  begin: "'",
  end: "'",
  illegal: "\\n",
  contains: [
    BACKSLASH_ESCAPE,
  ],
);
final QUOTE_STRING_MODE = Mode(
  scope: "string",
  begin: "\"",
  end: "\"",
  illegal: "\\n",
  contains: [
    BACKSLASH_ESCAPE,
  ],
);
final PHRASAL_WORDS_MODE = Mode(
  begin:
      "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b",
);
final C_LINE_COMMENT_MODE = Mode(
  scope: "comment",
  begin: "//",
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
);
final C_BLOCK_COMMENT_MODE = Mode(
  scope: "comment",
  begin: "/\\*",
  end: "\\*/",
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
);
final HASH_COMMENT_MODE = Mode(
  scope: "comment",
  begin: "#",
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
);
final NUMBER_MODE = Mode(
  scope: "number",
  begin: "\\b\\d+(\\.\\d+)?",
  relevance: 0,
);
final C_NUMBER_MODE = Mode(
  scope: "number",
  begin:
      "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
  relevance: 0,
);
final BINARY_NUMBER_MODE = Mode(
  scope: "number",
  begin: "\\b(0b[01]+)",
  relevance: 0,
);
final REGEXP_MODE = Mode(
  begin: "(?=\\/[^/\\n]*\\/)",
  contains: [
    Mode(
      scope: "regexp",
      begin: "\\/",
      end: "\\/[gimuy]*",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(
          begin: "\\[",
          end: "\\]",
          relevance: 0,
          contains: [
            BACKSLASH_ESCAPE,
          ],
        ),
      ],
    ),
  ],
);
final TITLE_MODE = Mode(
  scope: "title",
  begin: "[a-zA-Z]\\w*",
  relevance: 0,
);
final UNDERSCORE_TITLE_MODE = Mode(
  scope: "title",
  begin: "[a-zA-Z_]\\w*",
  relevance: 0,
);
final METHOD_GUARD = Mode(
  begin: "\\.\\s*[a-zA-Z_]\\w*",
  relevance: 0,
);

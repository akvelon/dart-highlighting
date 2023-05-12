// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final rpmSpecfile = Language(
  id: "rpm-specfile",
  refs: {},
  name: "rpm-specfile",
  aliases: ["rpm", "spec", "rpm-spec", "specfile"],
  contains: [
    Mode(
      scope: "comment",
      begin: "%dnl",
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
    HASH_COMMENT_MODE,
    QUOTE_STRING_MODE,
    Mode(
      className: "type",
      begin:
          "^(Name|BuildRequires|BuildConflicts|Version|Release|Epoch|Summary|Group|License|Packager|Vendor|Icon|URL|Distribution|Prefix|Patch[0-9]*|Source[0-9]*|Requires\\(?[a-z]*\\)?|[a-zA-Z]+Req|Obsoletes|Recommends|Suggests|Supplements|Enhances|Provides|Conflicts|RemovePathPostfixes|Build[a-zA-Z]+|[a-zA-Z]+Arch|Auto[a-zA-Z]+)(:)",
    ),
    Mode(
      className: "keyword",
      begin:
          "(%)(?:package|prep|generate_buildrequires|sourcelist|patchlist|build|description|install|verifyscript|clean|changelog|check|pre[a-z]*|post[a-z]*|trigger[a-z]*|files)",
    ),
    Mode(
      className: "link",
      begin:
          "(%)(ifarch|ifnarch|ifos|ifnos|if|elifarch|elifos|elif|else|endif)",
    ),
    Mode(
      className: "link",
      begin: "%\\{_",
      end: "}",
    ),
    Mode(
      className: "symbol",
      begin: "%\\{\\?",
      end: "}",
    ),
    Mode(
      className: "link font-weight-bold",
      begin: "%\\{",
      end: "}",
    ),
    Mode(
      className: "link font-weight-bold",
      begin: "%",
      end: "[ \\t\\n]",
    ),
    Mode(
      className: "symbol font-weight-bold",
      begin: "^\\* (Mon|Tue|Wed|Thu|Fri|Sat|Sun)",
      end: "\$",
    ),
  ],
);

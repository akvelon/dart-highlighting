// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final haml = Language(
  id: "haml",
  refs: {},
  name: "HAML",
  case_insensitive: true,
  contains: [
    Mode(
      className: "meta",
      begin: "^!!!( (5|1\\.1|Strict|Frameset|Basic|Mobile|RDFa|XML\\b.*))?\$",
      relevance: 10,
    ),
    Mode(
      scope: "comment",
      begin: "^\\s*(!=#|=#|-#|/).*\$",
      end: null,
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
    Mode(
      begin: "^\\s*(-|=|!=)(?!#)",
      end: "\$",
      subLanguage: ["ruby"],
      excludeBegin: true,
      excludeEnd: true,
    ),
    Mode(
      className: "tag",
      begin: "^\\s*%",
      contains: [
        Mode(
          className: "selector-tag",
          begin: "\\w+",
        ),
        Mode(
          className: "selector-id",
          begin: "#[\\w-]+",
        ),
        Mode(
          className: "selector-class",
          begin: "\\.[\\w-]+",
        ),
        Mode(
          begin: "\\{\\s*",
          end: "\\s*\\}",
          contains: [
            Mode(
              begin: ":\\w+\\s*=>",
              end: ",\\s+",
              returnBegin: true,
              endsWithParent: true,
              contains: [
                Mode(
                  className: "attr",
                  begin: ":\\w+",
                ),
                APOS_STRING_MODE,
                QUOTE_STRING_MODE,
                Mode(
                  begin: "\\w+",
                  relevance: 0,
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "\\(\\s*",
          end: "\\s*\\)",
          excludeEnd: true,
          contains: [
            Mode(
              begin: "\\w+\\s*=",
              end: "\\s+",
              returnBegin: true,
              endsWithParent: true,
              contains: [
                Mode(
                  className: "attr",
                  begin: "\\w+",
                  relevance: 0,
                ),
                APOS_STRING_MODE,
                QUOTE_STRING_MODE,
                Mode(
                  begin: "\\w+",
                  relevance: 0,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    Mode(
      begin: "^\\s*[=\\x7e]\\s*",
    ),
    Mode(
      begin: "#\\{",
      end: "\\}",
      subLanguage: ["ruby"],
      excludeBegin: true,
      excludeEnd: true,
    ),
  ],
);

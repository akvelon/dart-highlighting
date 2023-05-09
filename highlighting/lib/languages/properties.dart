// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final properties = Language(
  id: "properties",
  refs: {},
  name: ".properties",
  disableAutodetect: true,
  case_insensitive: true,
  illegal: "\\S",
  contains: [
    Mode(
      scope: "comment",
      begin: "^\\s*[!#]",
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
    ),
    Mode(
      returnBegin: true,
      variants: [
        Mode(
          begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]*[:=][ \\t\\f]*",
        ),
        Mode(
          begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]+",
        ),
      ],
      contains: [
        Mode(
          className: "attr",
          begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+",
          endsParent: true,
        ),
      ],
      starts: Mode(
        end: "([ \\t\\f]*[:=][ \\t\\f]*|[ \\t\\f]+)",
        relevance: 0,
        starts: Mode(
          className: "string",
          end: "\$",
          relevance: 0,
          contains: [
            Mode(
              begin: "\\\\\\\\",
            ),
            Mode(
              begin: "\\\\\\n",
            ),
          ],
        ),
      ),
    ),
    Mode(
      className: "attr",
      begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]*\$",
    ),
  ],
);

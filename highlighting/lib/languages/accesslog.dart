// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final accesslog = Language(
  id: "accesslog",
  refs: {},
  name: "Apache Access Log",
  contains: [
    Mode(
      className: "number",
      begin: "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?\\b",
      relevance: 5,
    ),
    Mode(
      className: "number",
      begin: "\\b\\d+\\b",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\"(?:GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|PATCH|TRACE)",
      end: "\"",
      keywords: [
        "GET",
        "POST",
        "HEAD",
        "PUT",
        "DELETE",
        "CONNECT",
        "OPTIONS",
        "PATCH",
        "TRACE"
      ],
      illegal: "\\n",
      relevance: 5,
      contains: [
        Mode(
          begin: "HTTP\\/[12]\\.\\d'",
          relevance: 5,
        ),
      ],
    ),
    Mode(
      className: "string",
      begin: "\\[\\d[^\\]\\n]{8,}\\]",
      illegal: "\\n",
      relevance: 1,
    ),
    Mode(
      className: "string",
      begin: "\\[",
      end: "\\]",
      illegal: "\\n",
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\"Mozilla\\/\\d\\.\\d \\(",
      end: "\"",
      illegal: "\\n",
      relevance: 3,
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      illegal: "\\n",
      relevance: 0,
    ),
  ],
);

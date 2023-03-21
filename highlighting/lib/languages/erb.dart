// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final erb = Mode(
    refs: {},
    name: "ERB",
    subLanguage: ["xml"],
    contains: [
      Mode(scope: "comment", begin: "<%#", end: "%>", contains: [
        Mode(
            scope: "doctag",
            begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
            excludeBegin: true,
            relevance: 0),
        Mode(
            begin:
                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
      ]),
      Mode(
          begin: "<%[%=-]?",
          end: "[%-]?%>",
          subLanguage: ["ruby"],
          excludeBegin: true,
          excludeEnd: true)
    ]);

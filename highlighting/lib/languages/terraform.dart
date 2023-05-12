// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final terraform = Language(
  id: "terraform",
  refs: {
    '~contains~1': Mode(
      className: "number",
      begin: "\\b\\d+(\\.\\d+)?",
      relevance: 0,
    ),
  },
  aliases: ["tf", "hcl"],
  keywords: "resource variable provider output locals module data terraform|10",
  contains: [
    Mode(
      scope: "comment",
      begin: "\\#",
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
    ModeReference('~contains~1'),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [
        Mode(
          className: "variable",
          begin: "\\\${",
          end: "\\}",
          relevance: 9,
          contains: [
            Mode(
              className: "string",
              begin: "\"",
              end: "\"",
            ),
            Mode(
              className: "meta",
              begin: "[A-Za-z_0-9]*\\(",
              end: "\\)",
              contains: [
                ModeReference('~contains~1'),
                Mode(
                  className: "string",
                  begin: "\"",
                  end: "\"",
                  contains: [
                    Mode(
                      className: "variable",
                      begin: "\\\${",
                      end: "\\}",
                      contains: [
                        Mode(
                          className: "string",
                          begin: "\"",
                          end: "\"",
                          contains: [
                            Mode(
                              className: "variable",
                              begin: "\\\${",
                              end: "\\}",
                            ),
                          ],
                        ),
                        Mode(
                          className: "meta",
                          begin: "[A-Za-z_0-9]*\\(",
                          end: "\\)",
                        ),
                      ],
                    ),
                  ],
                ),
                ModeSelfReference(),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

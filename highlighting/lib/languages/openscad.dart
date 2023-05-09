// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final openscad = Language(
  id: "openscad",
  refs: {
    '~contains~5': Mode(
      className: "keyword",
      begin: "\\\$(f[asn]|t|vp[rtd]|children)",
    ),
    '~contains~4': Mode(
      scope: "string",
      begin: "\"",
      end: "\"",
      illegal: null,
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~2': Mode(
      className: "number",
      begin: "\\b\\d+(\\.\\d+)?(e-?\\d+)?",
      relevance: 0,
    ),
  },
  name: "OpenSCAD",
  aliases: ["scad"],
  keywords: {
    "keyword": "function module include use for intersection_for if else \\%",
    "literal": "false true PI undef",
    "built_in":
        "circle square polygon text sphere cube cylinder polyhedron translate rotate scale resize mirror multmatrix color offset hull minkowski union difference intersection abs sign sin cos tan acos asin atan atan2 floor round ceil ln log pow sqrt exp rands min max concat lookup str chr search version version_num norm cross parent_module echo import import_dxf dxf_linear_extrude linear_extrude rotate_extrude surface projection render children dxf_cross dxf_dim let assign"
  },
  contains: [
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    ModeReference('~contains~2'),
    Mode(
      className: "meta",
      keywords: {"keyword": "include use"},
      begin: "include|use <",
      end: ">",
    ),
    ModeReference('~contains~4'),
    ModeReference('~contains~5'),
    Mode(
      begin: "[*!#%]",
      relevance: 0,
    ),
    Mode(
      className: "function",
      beginKeywords: "module function",
      end: "=|\\{",
      contains: [
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          contains: [
            ModeSelfReference(),
            ModeReference('~contains~2'),
            ModeReference('~contains~4'),
            ModeReference('~contains~5'),
            Mode(
              className: "literal",
              begin: "false|true|PI|undef",
            ),
          ],
        ),
        UNDERSCORE_TITLE_MODE,
      ],
    ),
  ],
);

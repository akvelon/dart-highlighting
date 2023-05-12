// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final iecst = Language(
  id: "iecst",
  refs: {},
  aliases: ["iecst", "scl", "stl", "structured-text"],
  name: "Structured Text",
  case_insensitive: true,
  keywords: {
    "keyword":
        "if then end_if elsif else case of end_case to do by while repeat end_while end_repeat for end_for from public private protected or and not xor le ge eq ne ge lt constant return exit at retain non_retain task with until using extend",
    "title":
        "program end_program function end_function function_block end_function_block configuration end_configuration action end_action transition end_transition type end_type struct end_struct step end_step initial_step namespace end_namespace channel end_channel library end_library folder end_folder resource end_resource var var_global end_var var_input VAR_EXTERNAL var_out var_output var_in_out var_temp var_interval var_access var_config method end_method property end_property interface end_interface",
    "literal": "false true null ",
    "built_in":
        "array pointer int sint dint lint usint uint udint ulint real lreal time date time_of_day date_and_time dt tod wstring string bool byte word dword lword ref_to any_num any_int any_string",
    "function":
        "mod abs acos asin atan cos exp expt ln log sin sqrt tan sel max min limit mux shl shr rol ror indexof sizeof adr ref adrinst bitadr add mul div sub trunc move"
  },
  contains: [
    Mode(
      className: "string",
      begin: "'",
      end: "'",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(
          begin: "''",
        ),
      ],
      relevance: 0,
    ),
    Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [
        BACKSLASH_ESCAPE,
        Mode(
          begin: "\"\"",
        ),
      ],
      relevance: 0,
    ),
    Mode(
      className: "built_in",
      begin:
          "(ANY|BOOL|BYTE|D?L?WORD|L?TIME|DATE|DT|TOD|W?CHAR|W?STRING|U?S?D?L?INT|L?REAL)_TO_(BOOL|BYTE|D?L?WORD|L?TIME|DATE|DT|TOD|W?CHAR|W?STRING|U?S?D?L?INT|L?REAL)",
    ),
    Mode(
      className: "built_in",
      begin:
          "TO_(BOOL|BYTE|D?L?WORD|L?TIME|DATE|DT|TOD|W?CHAR|W?STRING|U?S?D?L?INT|L?REAL)",
    ),
    Mode(
      className: "symbol",
      begin: "(D|T|DT|TOD)#[0-9:\\-_shmyd]*",
    ),
    Mode(
      className: "symbol",
      begin: "[a-zA-Z_]+#[a-zA-Z]*",
    ),
    Mode(
      className: "symbol",
      begin: "[A-Za-z]{1,6}#[0-9_\\.e\\-]*",
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: "[0-9]+#\\-?[0-9_]*",
      relevance: 0,
    ),
    Mode(
      className: "number",
      begin: "[a-zA-Z_]+#\\-?[0-9_]*",
      relevance: 0,
    ),
    Mode(
      className: "symbol",
      begin: "%(I|Q|M)(X|B|W|D|L)[0-9\\.]*",
    ),
    Mode(
      className: "symbol",
      begin: "%(I|Q|M)[0-9.]*",
    ),
    C_NUMBER_MODE,
    Mode(
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
    ),
    C_BLOCK_COMMENT_MODE,
    Mode(
      scope: "comment",
      begin: "\\(\\*",
      end: "\\*\\)",
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
  ],
);

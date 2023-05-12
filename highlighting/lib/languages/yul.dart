// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final yul = Language(
  id: "yul",
  refs: {
    '~contains~7': Mode(
      className: "operator",
      begin: ":=|->",
    ),
    '~contains~6': Mode(
      className: "number",
      begin:
          "-?((?<!\\\$)\\b0[xX]([a-fA-F0-9]_?)*[a-fA-F0-9]|((?<!\\\$)\\b[1-9](_?\\d)*(\\.((\\d_?)*\\d)?)?|\\.\\d(_?\\d)*)([eE][-+]?\\d(_?\\d)*)?|(?<!\\\$)\\b0)(?!\\w|\\\$)",
      relevance: 0,
    ),
    '~contains~1': Mode(
      scope: "string",
      begin: "(\\bunicode)?\"",
      end: "\"",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
    '~contains~0': Mode(
      scope: "string",
      begin: "(\\bunicode)?'",
      end: "'",
      illegal: "\\n",
      contains: [
        BACKSLASH_ESCAPE,
      ],
    ),
  },
  keywords: {
    "keyword":
        "assembly let function if switch case default for leave break continue u256 jump jumpi stop return revert selfdestruct invalid object code data",
    "built_in":
        "add sub mul div sdiv mod smod exp not lt gt slt sgt eq iszero and or xor byte shl shr sar addmod mulmod signextend keccak256 pc pop dup1 dup2 dup3 dup4 dup5 dup6 dup7 dup8 dup9 dup10 dup11 dup12 dup13 dup14 dup15 dup16 swap1 swap2 swap3 swap4 swap5 swap6 swap7 swap8 swap9 swap10 swap11 swap12 swap13 swap14 swap15 swap16 mload mstore mstore8 sload sstore msize gas address balance selfbalance caller callvalue calldataload calldatasize calldatacopy codesize codecopy extcodesize extcodecopy returndatasize returndatacopy extcodehash create create2 call callcode delegatecall staticcall log0 log1 log2 log3 log4 chainid origin gasprice basefee blockhash coinbase timestamp number difficulty prevrandao gaslimit datasize dataoffset datacopy setimmutable loadimmutable linkersymbol memoryguard",
    "literal": "true false"
  },
  lexemes: "[A-Za-z_\$][A-Za-z_\$0-9.]*",
  contains: [
    ModeReference('~contains~0'),
    ModeReference('~contains~1'),
    Mode(
      className: "string",
      begin: "\\bhex'(([0-9a-fA-F]{2}_?)*[0-9a-fA-F]{2})?'",
    ),
    Mode(
      className: "string",
      begin: "\\bhex\"(([0-9a-fA-F]{2}_?)*[0-9a-fA-F]{2})?\"",
    ),
    C_LINE_COMMENT_MODE,
    C_BLOCK_COMMENT_MODE,
    ModeReference('~contains~6'),
    ModeReference('~contains~7'),
    Mode(
      className: "function",
      lexemes: "[A-Za-z_\$][A-Za-z_\$0-9.]*",
      beginKeywords: "function",
      end: "{",
      excludeEnd: true,
      contains: [
        Mode(
          scope: "title",
          begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
          relevance: 0,
          lexemes: "[A-Za-z_\$][A-Za-z_\$0-9.]*",
          keywords: {
            "keyword":
                "assembly let function if switch case default for leave break continue u256 jump jumpi stop return revert selfdestruct invalid",
            "built_in":
                "add sub mul div sdiv mod smod exp not lt gt slt sgt eq iszero and or xor byte shl shr sar addmod mulmod signextend keccak256 pc pop dup1 dup2 dup3 dup4 dup5 dup6 dup7 dup8 dup9 dup10 dup11 dup12 dup13 dup14 dup15 dup16 swap1 swap2 swap3 swap4 swap5 swap6 swap7 swap8 swap9 swap10 swap11 swap12 swap13 swap14 swap15 swap16 mload mstore mstore8 sload sstore msize gas address balance selfbalance caller callvalue calldataload calldatasize calldatacopy codesize codecopy extcodesize extcodecopy returndatasize returndatacopy extcodehash create create2 call callcode delegatecall staticcall log0 log1 log2 log3 log4 chainid origin gasprice basefee blockhash coinbase timestamp number difficulty prevrandao gaslimit",
            "literal": "true false"
          },
        ),
        Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          excludeBegin: true,
          excludeEnd: true,
          lexemes: "[A-Za-z_\$][A-Za-z_\$0-9.]*",
          keywords: {
            "keyword":
                "assembly let function if switch case default for leave break continue u256 jump jumpi stop return revert selfdestruct invalid",
            "built_in":
                "add sub mul div sdiv mod smod exp not lt gt slt sgt eq iszero and or xor byte shl shr sar addmod mulmod signextend keccak256 pc pop dup1 dup2 dup3 dup4 dup5 dup6 dup7 dup8 dup9 dup10 dup11 dup12 dup13 dup14 dup15 dup16 swap1 swap2 swap3 swap4 swap5 swap6 swap7 swap8 swap9 swap10 swap11 swap12 swap13 swap14 swap15 swap16 mload mstore mstore8 sload sstore msize gas address balance selfbalance caller callvalue calldataload calldatasize calldatacopy codesize codecopy extcodesize extcodecopy returndatasize returndatacopy extcodehash create create2 call callcode delegatecall staticcall log0 log1 log2 log3 log4 chainid origin gasprice basefee blockhash coinbase timestamp number difficulty prevrandao gaslimit",
            "literal": "true false"
          },
          contains: [
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            ModeReference('~contains~0'),
            ModeReference('~contains~1'),
            ModeReference('~contains~6'),
          ],
        ),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        ModeReference('~contains~7'),
      ],
    ),
    Mode(
      className: "built_in",
      begin: "(?<!\\\$)\\bverbatim_[1-9]?[0-9]i_[1-9]?[0-9]o\\b(?!\\\$)",
    ),
  ],
);

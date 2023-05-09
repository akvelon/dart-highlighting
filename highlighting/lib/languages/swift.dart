// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings

import '../src/language_definition_common.dart';

final swift = Language(
  id: "swift",
  refs: {
    '~contains~2~contains~2': Mode(
      match: "\\s+",
      relevance: 0,
    ),
    '~contains~2~contains~1~contains~14': Mode(
      begin: "\\(",
      end: "\\)",
      relevance: 0,
      keywords: {
        "\$pattern": "(?:\\b\\w+|#\\w+)",
        "keyword": [
          "actor",
          "any",
          "associatedtype",
          "async",
          "await",
          "as",
          "break",
          "case",
          "catch",
          "class",
          "continue",
          "convenience",
          "default",
          "defer",
          "deinit",
          "didSet",
          "distributed",
          "do",
          "dynamic",
          "else",
          "enum",
          "extension",
          "fallthrough",
          "fileprivate",
          "final",
          "for",
          "func",
          "get",
          "guard",
          "if",
          "import",
          "indirect",
          "infix",
          "inout",
          "internal",
          "in",
          "is",
          "isolated",
          "nonisolated",
          "lazy",
          "let",
          "mutating",
          "nonmutating",
          "open",
          "operator",
          "optional",
          "override",
          "postfix",
          "precedencegroup",
          "prefix",
          "private",
          "protocol",
          "public",
          "repeat",
          "required",
          "rethrows",
          "return",
          "set",
          "some",
          "static",
          "struct",
          "subscript",
          "super",
          "switch",
          "throws",
          "throw",
          "try",
          "typealias",
          "unowned",
          "var",
          "weak",
          "where",
          "while",
          "willSet",
          "_|0",
          "#colorLiteral",
          "#column",
          "#dsohandle",
          "#else",
          "#elseif",
          "#endif",
          "#error",
          "#file",
          "#fileID",
          "#fileLiteral",
          "#filePath",
          "#function",
          "#if",
          "#imageLiteral",
          "#keyPath",
          "#line",
          "#selector",
          "#sourceLocation",
          "#warn_unqualified_access",
          "#warning"
        ],
        "literal": ["false", "nil", "true"]
      },
      contains: [
        ModeSelfReference(),
        Mode(
          match:
              "(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*\\s*:",
          keywords: "_|0",
          relevance: 0,
        ),
        C_LINE_COMMENT_MODE,
        ModeReference('~contains~1'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~2'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~3'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~4'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~6'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~7'),
        ModeReference('~contains~2~contains~0~contains~2'),
      ],
    ),
    '~contains~2~contains~1': Mode(
      begin: "\\(",
      end: "\\)",
      keywords: {
        "\$pattern": "(?:\\b\\w+|#\\w+)",
        "keyword": [
          "actor",
          "any",
          "associatedtype",
          "async",
          "await",
          "as",
          "break",
          "case",
          "catch",
          "class",
          "continue",
          "convenience",
          "default",
          "defer",
          "deinit",
          "didSet",
          "distributed",
          "do",
          "dynamic",
          "else",
          "enum",
          "extension",
          "fallthrough",
          "fileprivate",
          "final",
          "for",
          "func",
          "get",
          "guard",
          "if",
          "import",
          "indirect",
          "infix",
          "inout",
          "internal",
          "in",
          "is",
          "isolated",
          "nonisolated",
          "lazy",
          "let",
          "mutating",
          "nonmutating",
          "open",
          "operator",
          "optional",
          "override",
          "postfix",
          "precedencegroup",
          "prefix",
          "private",
          "protocol",
          "public",
          "repeat",
          "required",
          "rethrows",
          "return",
          "set",
          "some",
          "static",
          "struct",
          "subscript",
          "super",
          "switch",
          "throws",
          "throw",
          "try",
          "typealias",
          "unowned",
          "var",
          "weak",
          "where",
          "while",
          "willSet",
          "_|0",
          "#colorLiteral",
          "#column",
          "#dsohandle",
          "#else",
          "#elseif",
          "#endif",
          "#error",
          "#file",
          "#fileID",
          "#fileLiteral",
          "#filePath",
          "#function",
          "#if",
          "#imageLiteral",
          "#keyPath",
          "#line",
          "#selector",
          "#sourceLocation",
          "#warn_unqualified_access",
          "#warning"
        ],
        "literal": ["false", "nil", "true"]
      },
      contains: [
        Mode(
          begin:
              "(?:(?=(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*\\s*:)|(?=(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*\\s+(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*\\s*:))",
          end: ":",
          relevance: 0,
          contains: [
            Mode(
              className: "keyword",
              match: "\\b_\\b",
            ),
            Mode(
              className: "params",
              match:
                  "(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*",
            ),
          ],
        ),
        C_LINE_COMMENT_MODE,
        ModeReference('~contains~1'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~2'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~3'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~4'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~5'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~6'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~7'),
        ModeReference('~contains~2~contains~0~contains~2'),
        ModeReference('~contains~2~contains~1~contains~14'),
      ],
      endsParent: true,
      illegal: "[\"']",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~7': Mode(
      className: "meta",
      match:
          "@(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~6': Mode(
      className: "keyword",
      match:
          "@(?:autoclosure|convention\\((?:swift|block|c)\\)|discardableResult|dynamicCallable|dynamicMemberLookup|escaping|frozen|GKInspectable|IBAction|IBDesignable|IBInspectable|IBOutlet|IBSegueAction|inlinable|main|nonobjc|NSApplicationMain|NSCopying|NSManaged|objc\\((?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*\\)|objc|objcMembers|propertyWrapper|requires_stored_property_inits|resultBuilder|testable|UIApplicationMain|unknown|usableFromInline)",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9':
        Mode(
      match:
          "`(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*`",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4':
        Mode(
      className: "built_in",
      match:
          "\\b(?:abs|all|any|assert|assertionFailure|debugPrint|dump|fatalError|getVaList|isKnownUniquelyReferenced|max|min|numericCast|pointwiseMax|pointwiseMin|precondition|preconditionFailure|print|readLine|repeatElement|sequence|stride|swap|swift_unboxFromSwiftValueWithType|transcode|type|unsafeBitCast|unsafeDowncast|withExtendedLifetime|withUnsafeMutablePointer|withUnsafePointer|withVaList|withoutActuallyEscaping|zip)(?=\\()",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3':
        Mode(
      match:
          "\\.(?:abs|all|any|assert|assertionFailure|debugPrint|dump|fatalError|getVaList|isKnownUniquelyReferenced|max|min|numericCast|pointwiseMax|pointwiseMin|precondition|preconditionFailure|print|readLine|repeatElement|sequence|stride|swap|swift_unboxFromSwiftValueWithType|transcode|type|unsafeBitCast|unsafeDowncast|withExtendedLifetime|withUnsafeMutablePointer|withUnsafePointer|withVaList|withoutActuallyEscaping|zip)",
      relevance: 0,
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11':
        Mode(
      className: "variable",
      match:
          "\\\$(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])+",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10':
        Mode(
      className: "variable",
      match: "\\\$\\d+",
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3':
        Mode(
      className: "string",
      variants: [
        Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              match: "\\\\[\\t ]*(?:[\\r\\n]|\\r\\n)",
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "#\"\"\"",
          end: "\"\"\"#",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\#[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\#u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              match: "\\\\#[\\t ]*(?:[\\r\\n]|\\r\\n)",
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\#\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "##\"\"\"",
          end: "\"\"\"##",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\##[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\##u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              match: "\\\\##[\\t ]*(?:[\\r\\n]|\\r\\n)",
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\##\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "###\"\"\"",
          end: "\"\"\"###",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\###[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\###u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              match: "\\\\###[\\t ]*(?:[\\r\\n]|\\r\\n)",
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\###\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "\"",
          end: "\"",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "#\"",
          end: "\"#",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\#[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\#u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\#\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "##\"",
          end: "\"##",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\##[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\##u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\##\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Mode(
          begin: "###\"",
          end: "\"###",
          contains: [
            Mode(
              className: "subst",
              variants: [
                Mode(
                  match: "\\\\###[0\\\\tnr\"']",
                ),
                Mode(
                  match: "\\\\###u\\{[0-9a-fA-F]{1,8}\\}",
                ),
              ],
            ),
            Mode(
              className: "subst",
              label: "interpol",
              begin: "\\\\###\\(",
              end: "\\)",
              keywords: {
                "\$pattern": "(?:\\b\\w+|#\\w+)",
                "keyword": [
                  "actor",
                  "any",
                  "associatedtype",
                  "async",
                  "await",
                  "as",
                  "break",
                  "case",
                  "catch",
                  "class",
                  "continue",
                  "convenience",
                  "default",
                  "defer",
                  "deinit",
                  "didSet",
                  "distributed",
                  "do",
                  "dynamic",
                  "else",
                  "enum",
                  "extension",
                  "fallthrough",
                  "fileprivate",
                  "final",
                  "for",
                  "func",
                  "get",
                  "guard",
                  "if",
                  "import",
                  "indirect",
                  "infix",
                  "inout",
                  "internal",
                  "in",
                  "is",
                  "isolated",
                  "nonisolated",
                  "lazy",
                  "let",
                  "mutating",
                  "nonmutating",
                  "open",
                  "operator",
                  "optional",
                  "override",
                  "postfix",
                  "precedencegroup",
                  "prefix",
                  "private",
                  "protocol",
                  "public",
                  "repeat",
                  "required",
                  "rethrows",
                  "return",
                  "set",
                  "some",
                  "static",
                  "struct",
                  "subscript",
                  "super",
                  "switch",
                  "throws",
                  "throw",
                  "try",
                  "typealias",
                  "unowned",
                  "var",
                  "weak",
                  "where",
                  "while",
                  "willSet",
                  "_|0",
                  "#colorLiteral",
                  "#column",
                  "#dsohandle",
                  "#else",
                  "#elseif",
                  "#endif",
                  "#error",
                  "#file",
                  "#fileID",
                  "#fileLiteral",
                  "#filePath",
                  "#function",
                  "#if",
                  "#imageLiteral",
                  "#keyPath",
                  "#line",
                  "#selector",
                  "#sourceLocation",
                  "#warn_unqualified_access",
                  "#warning"
                ],
                "literal": ["false", "nil", "true"]
              },
              contains: [
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                ModeReference(
                    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                Mode(
                  begin: "\\(",
                  end: "\\)",
                  contains: [
                    ModeSelfReference(),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
                    ModeReference(
                        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2':
        Mode(
      className: "number",
      relevance: 0,
      variants: [
        Mode(
          match: "\\b(([0-9]_*)+)(\\.(([0-9]_*)+))?([eE][+-]?(([0-9]_*)+))?\\b",
        ),
        Mode(
          match:
              "\\b0x(([0-9a-fA-F]_*)+)(\\.(([0-9a-fA-F]_*)+))?([pP][+-]?(([0-9]_*)+))?\\b",
        ),
        Mode(
          match: "\\b0o([0-7]_*)+\\b",
        ),
        Mode(
          match: "\\b0b([01]_*)+\\b",
        ),
      ],
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1':
        Mode(
      className: "operator",
      relevance: 0,
      variants: [
        Mode(
          match:
              "(?:[/=\\-+!*%<>&|^\\x7e?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])(?:(?:[/=\\-+!*%<>&|^~?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])|[\\u0300-\\u036F]|[\\u1DC0-\\u1DFF]|[\\u20D0-\\u20FF]|[\\uFE00-\\uFE0F]|[\\uFE20-\\uFE2F])*",
        ),
        Mode(
          match:
              "\\.(\\.|(?:(?:[/=\\-+!*%<>&|^\\x7e?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])|[\\u0300-\\u036F]|[\\u1DC0-\\u1DFF]|[\\u20D0-\\u20FF]|[\\uFE00-\\uFE0F]|[\\uFE20-\\uFE2F]))+",
        ),
      ],
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0':
        Mode(
      match: "->",
      relevance: 0,
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~5': Mode(
      match: "(@|#(un)?)available",
      className: "keyword",
      starts: Mode(
        contains: [
          Mode(
            begin: "\\(",
            end: "\\)",
            keywords: [
              "iOS",
              "iOSApplicationExtension",
              "macOS",
              "macOSApplicationExtension",
              "macCatalyst",
              "macCatalystApplicationExtension",
              "watchOS",
              "watchOSApplicationExtension",
              "tvOS",
              "tvOSApplicationExtension",
              "swift"
            ],
            contains: [
              ModeReference(
                  '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
              ModeReference(
                  '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
              ModeReference(
                  '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
              ModeReference(
                  '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
            ],
          ),
        ],
      ),
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~4': Mode(
      variants: [
        Mode(
          className: "keyword",
          match:
              "(?:\\bas\\?\\B|\\bas!\\B|\\bfileprivate\\(set\\)\\B|\\binit\\?\\B|\\binit!\\B|\\binternal\\(set\\)\\B|\\bopen\\(set\\)\\B|\\bprivate\\(set\\)\\B|\\bpublic\\(set\\)\\B|\\btry\\?\\B|\\btry!\\B|\\bunowned\\(safe\\)\\B|\\bunowned\\(unsafe\\)\\B|\\bAny\\b|\\bSelf\\b|\\binit\\b|\\bself\\b)",
        ),
      ],
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~3': Mode(
      match:
          "\\.(?:actor|any|associatedtype|async|await|as\\?|as!|as|break|case|catch|class|continue|convenience|default|defer|deinit|didSet|distributed|do|dynamic|else|enum|extension|fallthrough|fileprivate\\(set\\)|fileprivate|final|for|func|get|guard|if|import|indirect|infix|init\\?|init!|inout|internal\\(set\\)|internal|in|is|isolated|nonisolated|lazy|let|mutating|nonmutating|open\\(set\\)|open|operator|optional|override|postfix|precedencegroup|prefix|private\\(set\\)|private|protocol|public\\(set\\)|public|repeat|required|rethrows|return|set|some|static|struct|subscript|super|switch|throws|throw|try\\?|try!|try|typealias|unowned\\(safe\\)|unowned\\(unsafe\\)|unowned|var|weak|where|while|willSet)",
      relevance: 0,
    ),
    '~contains~2~contains~0~contains~2~contains~5~contains~2': Mode(
      match: ["\\.", "(?:\\bProtocol\\b|\\bType\\b|\\binit\\b|\\bself\\b)"],
      className: {"2": "keyword"},
    ),
    '~contains~2~contains~0~contains~2': Mode(
      match: "(?=\\b[A-Z])",
      relevance: 0,
      contains: [
        Mode(
          className: "type",
          match:
              "(AV|CA|CF|CG|CI|CL|CM|CN|CT|MK|MP|MTK|MTL|NS|SCN|SK|UI|WK|XC)(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])+",
        ),
        Mode(
          className: "type",
          match:
              "[A-Z](?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*",
          relevance: 0,
        ),
        Mode(
          match: "[?!]+",
          relevance: 0,
        ),
        Mode(
          match: "\\.\\.\\.",
          relevance: 0,
        ),
        Mode(
          match:
              "\\s+&\\s+(?=[A-Z](?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*)",
          relevance: 0,
        ),
        Mode(
          begin: "<",
          end: ">",
          keywords: {
            "\$pattern": "(?:\\b\\w+|#\\w+)",
            "keyword": [
              "actor",
              "any",
              "associatedtype",
              "async",
              "await",
              "as",
              "break",
              "case",
              "catch",
              "class",
              "continue",
              "convenience",
              "default",
              "defer",
              "deinit",
              "didSet",
              "distributed",
              "do",
              "dynamic",
              "else",
              "enum",
              "extension",
              "fallthrough",
              "fileprivate",
              "final",
              "for",
              "func",
              "get",
              "guard",
              "if",
              "import",
              "indirect",
              "infix",
              "inout",
              "internal",
              "in",
              "is",
              "isolated",
              "nonisolated",
              "lazy",
              "let",
              "mutating",
              "nonmutating",
              "open",
              "operator",
              "optional",
              "override",
              "postfix",
              "precedencegroup",
              "prefix",
              "private",
              "protocol",
              "public",
              "repeat",
              "required",
              "rethrows",
              "return",
              "set",
              "some",
              "static",
              "struct",
              "subscript",
              "super",
              "switch",
              "throws",
              "throw",
              "try",
              "typealias",
              "unowned",
              "var",
              "weak",
              "where",
              "while",
              "willSet",
              "_|0",
              "#colorLiteral",
              "#column",
              "#dsohandle",
              "#else",
              "#elseif",
              "#endif",
              "#error",
              "#file",
              "#fileID",
              "#fileLiteral",
              "#filePath",
              "#function",
              "#if",
              "#imageLiteral",
              "#keyPath",
              "#line",
              "#selector",
              "#sourceLocation",
              "#warn_unqualified_access",
              "#warning"
            ],
            "literal": ["false", "nil", "true"]
          },
          contains: [
            C_LINE_COMMENT_MODE,
            ModeReference('~contains~1'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~2'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~3'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~4'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~5'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~6'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~7'),
            ModeReference(
                '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
            ModeReference('~contains~2~contains~0~contains~2'),
          ],
        ),
      ],
    ),
    '~contains~2~contains~0': Mode(
      begin: "<",
      end: ">",
      contains: [
        C_LINE_COMMENT_MODE,
        ModeReference('~contains~1'),
        ModeReference('~contains~2~contains~0~contains~2'),
      ],
    ),
    '~contains~1': Mode(
      scope: "comment",
      begin: "/\\*",
      end: "\\*/",
      contains: [
        ModeSelfReference(),
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
  },
  name: "Swift",
  keywords: {
    "\$pattern": "(?:\\b\\w+|#\\w+)",
    "keyword": [
      "actor",
      "any",
      "associatedtype",
      "async",
      "await",
      "as",
      "break",
      "case",
      "catch",
      "class",
      "continue",
      "convenience",
      "default",
      "defer",
      "deinit",
      "didSet",
      "distributed",
      "do",
      "dynamic",
      "else",
      "enum",
      "extension",
      "fallthrough",
      "fileprivate",
      "final",
      "for",
      "func",
      "get",
      "guard",
      "if",
      "import",
      "indirect",
      "infix",
      "inout",
      "internal",
      "in",
      "is",
      "isolated",
      "nonisolated",
      "lazy",
      "let",
      "mutating",
      "nonmutating",
      "open",
      "operator",
      "optional",
      "override",
      "postfix",
      "precedencegroup",
      "prefix",
      "private",
      "protocol",
      "public",
      "repeat",
      "required",
      "rethrows",
      "return",
      "set",
      "some",
      "static",
      "struct",
      "subscript",
      "super",
      "switch",
      "throws",
      "throw",
      "try",
      "typealias",
      "unowned",
      "var",
      "weak",
      "where",
      "while",
      "willSet",
      "_|0",
      "#colorLiteral",
      "#column",
      "#dsohandle",
      "#else",
      "#elseif",
      "#endif",
      "#error",
      "#file",
      "#fileID",
      "#fileLiteral",
      "#filePath",
      "#function",
      "#if",
      "#imageLiteral",
      "#keyPath",
      "#line",
      "#selector",
      "#sourceLocation",
      "#warn_unqualified_access",
      "#warning"
    ],
    "literal": ["false", "nil", "true"]
  },
  contains: [
    C_LINE_COMMENT_MODE,
    ModeReference('~contains~1'),
    Mode(
      match: [
        "func",
        "\\s+",
        "(?:`(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*`|(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])(?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*|(?:[/=\\-+!*%<>&|^\\x7e?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])(?:(?:[/=\\-+!*%<>&|^~?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])|[\\u0300-\\u036F]|[\\u1DC0-\\u1DFF]|[\\u20D0-\\u20FF]|[\\uFE00-\\uFE0F]|[\\uFE20-\\uFE2F])*)"
      ],
      className: {"1": "keyword", "3": "title.function"},
      contains: [
        ModeReference('~contains~2~contains~0'),
        ModeReference('~contains~2~contains~1'),
        ModeReference('~contains~2~contains~2'),
      ],
      illegal: ["\\[", "%"],
    ),
    Mode(
      match: ["\\b(?:subscript|init[?!]?)", "\\s*(?=[<(])"],
      className: {"1": "keyword"},
      contains: [
        ModeReference('~contains~2~contains~0'),
        ModeReference('~contains~2~contains~1'),
        ModeReference('~contains~2~contains~2'),
      ],
      illegal: "\\[|%",
    ),
    Mode(
      beginKeywords: "struct protocol class extension enum actor",
      end: "\\{",
      excludeEnd: true,
      keywords: {
        "\$pattern": "(?:\\b\\w+|#\\w+)",
        "keyword": [
          "actor",
          "any",
          "associatedtype",
          "async",
          "await",
          "as",
          "break",
          "case",
          "catch",
          "class",
          "continue",
          "convenience",
          "default",
          "defer",
          "deinit",
          "didSet",
          "distributed",
          "do",
          "dynamic",
          "else",
          "enum",
          "extension",
          "fallthrough",
          "fileprivate",
          "final",
          "for",
          "func",
          "get",
          "guard",
          "if",
          "import",
          "indirect",
          "infix",
          "inout",
          "internal",
          "in",
          "is",
          "isolated",
          "nonisolated",
          "lazy",
          "let",
          "mutating",
          "nonmutating",
          "open",
          "operator",
          "optional",
          "override",
          "postfix",
          "precedencegroup",
          "prefix",
          "private",
          "protocol",
          "public",
          "repeat",
          "required",
          "rethrows",
          "return",
          "set",
          "some",
          "static",
          "struct",
          "subscript",
          "super",
          "switch",
          "throws",
          "throw",
          "try",
          "typealias",
          "unowned",
          "var",
          "weak",
          "where",
          "while",
          "willSet",
          "_|0",
          "#colorLiteral",
          "#column",
          "#dsohandle",
          "#else",
          "#elseif",
          "#endif",
          "#error",
          "#file",
          "#fileID",
          "#fileLiteral",
          "#filePath",
          "#function",
          "#if",
          "#imageLiteral",
          "#keyPath",
          "#line",
          "#selector",
          "#sourceLocation",
          "#warn_unqualified_access",
          "#warning"
        ],
        "literal": ["false", "nil", "true"]
      },
      contains: [
        Mode(
          scope: "title",
          begin: "[A-Za-z\$_][\\u00C0-\\u02B80-9A-Za-z\$_]*",
          relevance: 0,
          className: "title.class",
        ),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~2'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~3'),
        ModeReference(
            '~contains~2~contains~0~contains~2~contains~5~contains~4'),
      ],
    ),
    Mode(
      match: [
        "operator",
        "\\s+",
        "(?:[/=\\-+!*%<>&|^\\x7e?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])(?:(?:[/=\\-+!*%<>&|^~?]|[\\u00A1-\\u00A7]|[\\u00A9\\u00AB]|[\\u00AC\\u00AE]|[\\u00B0\\u00B1]|[\\u00B6\\u00BB\\u00BF\\u00D7\\u00F7]|[\\u2016-\\u2017]|[\\u2020-\\u2027]|[\\u2030-\\u203E]|[\\u2041-\\u2053]|[\\u2055-\\u205E]|[\\u2190-\\u23FF]|[\\u2500-\\u2775]|[\\u2794-\\u2BFF]|[\\u2E00-\\u2E7F]|[\\u3001-\\u3003]|[\\u3008-\\u3020]|[\\u3030])|[\\u0300-\\u036F]|[\\u1DC0-\\u1DFF]|[\\u20D0-\\u20FF]|[\\uFE00-\\uFE0F]|[\\uFE20-\\uFE2F])*"
      ],
      className: {"1": "keyword", "3": "title"},
    ),
    Mode(
      begin: [
        "precedencegroup",
        "\\s+",
        "[A-Z](?:(?:[a-zA-Z_]|[\\u00A8\\u00AA\\u00AD\\u00AF\\u00B2-\\u00B5\\u00B7-\\u00BA]|[\\u00BC-\\u00BE\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u00FF]|[\\u0100-\\u02FF\\u0370-\\u167F\\u1681-\\u180D\\u180F-\\u1DBF]|[\\u1E00-\\u1FFF]|[\\u200B-\\u200D\\u202A-\\u202E\\u203F-\\u2040\\u2054\\u2060-\\u206F]|[\\u2070-\\u20CF\\u2100-\\u218F\\u2460-\\u24FF\\u2776-\\u2793]|[\\u2C00-\\u2DFF\\u2E80-\\u2FFF]|[\\u3004-\\u3007\\u3021-\\u302F\\u3031-\\u303F\\u3040-\\uD7FF]|[\\uF900-\\uFD3D\\uFD40-\\uFDCF\\uFDF0-\\uFE1F\\uFE30-\\uFE44]|[\\uFE47-\\uFEFE\\uFF00-\\uFFFD])|\\d|[\\u0300-\\u036F\\u1DC0-\\u1DFF\\u20D0-\\u20FF\\uFE20-\\uFE2F])*"
      ],
      className: {"1": "keyword", "3": "title"},
      contains: [
        ModeReference('~contains~2~contains~0~contains~2'),
      ],
      keywords: [
        "assignment",
        "associativity",
        "higherThan",
        "left",
        "lowerThan",
        "none",
        "right",
        "false",
        "nil",
        "true"
      ],
      end: "}",
    ),
    Mode(
      beginKeywords: "import",
      end: "\$",
      contains: [
        C_LINE_COMMENT_MODE,
        ModeReference('~contains~1'),
      ],
      relevance: 0,
    ),
    ModeReference('~contains~2~contains~0~contains~2~contains~5~contains~2'),
    ModeReference('~contains~2~contains~0~contains~2~contains~5~contains~3'),
    ModeReference('~contains~2~contains~0~contains~2~contains~5~contains~4'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~3'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~4'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~0'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~1'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~2'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~9'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~10'),
    ModeReference(
        '~contains~2~contains~0~contains~2~contains~5~contains~5~starts~contains~0~contains~3~variants~0~contains~2~contains~11'),
    ModeReference('~contains~2~contains~0~contains~2~contains~5~contains~5'),
    ModeReference('~contains~2~contains~0~contains~2~contains~5~contains~6'),
    ModeReference('~contains~2~contains~0~contains~2~contains~5~contains~7'),
    ModeReference('~contains~2~contains~0~contains~2'),
    ModeReference('~contains~2~contains~1~contains~14'),
  ],
);

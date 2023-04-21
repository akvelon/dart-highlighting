import 'package:highlighting/src/response.dart';

import 'domain_regex.dart';
import 'domain_regexp_match.dart';
import 'nulls.dart';
import 'multi_regex.dart';

class Mode {
  String? ref;
  Map<String, Mode>? refs;

  List<String>? aliases;

  /// `String | Map<String, [String, int]>`
  dynamic keywords;

  /// `String? | List<String>?`
  dynamic illegal;
  bool? case_insensitive;
  List<Mode>? contains;
  List<Mode?>? variants;
  Mode? starts;

  List<Mode>? cachedVariants;
  List<dynamic>? compilerExtensions;

  /// `String | Map<String, String>`
  dynamic get className =>
      _className == overwritingNullString ? null : _className;
  dynamic _className;
  set className(dynamic value) {
    _className = value;
  }

  dynamic getRawClassName() {
    return _className;
  }

  /// `String | List<String>` | RegExp
  dynamic begin;
  String? beginKeywords;

  /// String | List
  dynamic end;
  String? lexemes;
  bool? endSameAsBegin;
  bool? endsParent;
  bool? endsWithParent;
  double? relevance;

  Map<String, dynamic>? data;

  dynamic beforeBegin;

  List<String>? subLanguage;
  bool? excludeBegin;
  bool? excludeEnd;
  bool? skip;
  bool? returnBegin;
  bool? returnEnd;

  bool? compiled;
  Mode? parent;
  RegExp? lexemesRe;
  RegExp? beginRe;
  RegExp? endRe;
  RegExp? illegalRe;
  String? terminator_end;
  List<Mode>? cached_variants;
  RegExp? terminators;
  String? name;

  /// `String | List<String>`
  dynamic match;

  /// `String | Map<String, String>`
  dynamic get scope => _scope == overwritingNullString ? null : _scope;
  dynamic _scope;
  set scope(dynamic value) {
    _scope = value;
  }

  dynamic getRawScope() {
    return _scope;
  }

  /// `String | RegExp`
  dynamic beforeMatch;

  /// `String | Map<String, String>` (Map<string, dynamic>?)
  dynamic beginScope;
  bool? unicodeRegex;
  String? label;

  /// String | Map
  dynamic endScope;

  /// `String | Map<String, String>`
  dynamic classNameAliases;
  String? binary;
  String? supersetOf;

  bool? self;
  bool? disableAutodetect;

  bool isCompiled = false;

  DomainRegex? keywordPatternRe;

  ResumableMultiRegex? matcher;

  void Function(DomainRegexMatch mode, Response response)? onBegin;
  void Function(DomainRegexMatch mode, Response response)? onEnd;

  Mode({
    this.ref,
    this.refs,
    this.name,
    this.match,
    this.beginScope,
    this.unicodeRegex,
    this.label,
    this.endScope,
    this.classNameAliases,
    this.binary,
    this.supersetOf,
    this.beforeMatch,
    //
    this.aliases,
    this.keywords,
    this.illegal,
    this.case_insensitive,
    this.contains,
    this.variants,
    this.starts,
    this.begin,
    this.onBegin,
    this.beginKeywords,
    this.end,
    this.onEnd,
    this.lexemes,
    this.endSameAsBegin,
    this.endsParent,
    this.endsWithParent,
    this.relevance,
    this.subLanguage,
    this.excludeBegin,
    this.excludeEnd,
    this.skip,
    this.returnBegin,
    this.returnEnd,
    //
    this.self,
    this.disableAutodetect,
    this.parent,
    dynamic className,
    dynamic scope,
  })  : _className = className,
        _scope = scope;

  static Mode inherit(Mode a, [Mode? b]) {
    b ??= Mode();
    final result = Mode()
      ..aliases = b.aliases ?? a.aliases
      ..beforeMatch = b.beforeMatch ?? a.beforeMatch
      ..begin = b.begin ?? a.begin
      ..beginKeywords = b.beginKeywords ?? a.beginKeywords
      ..beginRe = b.beginRe ?? a.beginRe
      ..beginScope = b.beginScope ?? a.beginScope
      ..binary = b.binary ?? a.binary
      ..cached_variants = b.cached_variants ?? a.cached_variants
      ..case_insensitive = b.case_insensitive ?? a.case_insensitive
      ..className = b.className ?? a.className
      ..classNameAliases = b.classNameAliases ?? a.classNameAliases
      ..compiled = b.compiled ?? a.compiled
      ..contains = b.contains ?? a.contains
      ..disableAutodetect = b.disableAutodetect ?? a.disableAutodetect
      ..data = b.data ?? a.data
      ..end = b.end ?? a.end
      ..endRe = b.endRe ?? a.endRe
      ..endSameAsBegin = b.endSameAsBegin ?? a.endSameAsBegin
      ..endScope = b.endScope ?? a.endScope
      ..endsParent = b.endsParent ?? a.endsParent
      ..endsWithParent = b.endsWithParent ?? a.endsWithParent
      ..excludeBegin = b.excludeBegin ?? a.excludeBegin
      ..excludeEnd = b.excludeEnd ?? a.excludeEnd
      ..illegal = b.illegal ?? a.illegal
      ..illegalRe = b.illegalRe ?? a.illegalRe
      ..keywordPatternRe = b.keywordPatternRe ?? a.keywordPatternRe
      ..keywords = b.keywords ?? a.keywords
      ..label = b.label ?? a.label
      ..lexemes = b.lexemes ?? a.lexemes
      ..lexemesRe = b.lexemesRe ?? a.lexemesRe
      ..match = b.match ?? a.match
      ..matcher = b.matcher ?? a.matcher
      ..name = b.name ?? a.name
      ..onBegin = b.onBegin ?? a.onBegin
      ..onEnd = b.onEnd ?? a.onEnd
      ..parent = b.parent ?? a.parent
      ..ref = b.ref ?? a.ref
      ..refs = b.refs ?? a.refs
      ..relevance = b.relevance ?? a.relevance
      ..returnBegin = b.returnBegin ?? a.returnBegin
      ..returnEnd = b.returnEnd ?? a.returnEnd
      ..scope = b.scope ?? a.scope
      ..self = b.self ?? a.self
      ..skip = b.skip ?? a.skip
      ..starts = b.starts ?? a.starts
      ..subLanguage = b.subLanguage ?? a.subLanguage
      ..supersetOf = b.supersetOf ?? a.supersetOf
      ..terminator_end = b.terminator_end ?? a.terminator_end
      ..terminators = b.terminators ?? a.terminators
      ..unicodeRegex = b.unicodeRegex ?? a.unicodeRegex
      ..variants = b.variants ?? a.variants;

    if (b.getRawScope() == overwritingNullString) {
      result.scope = overwritingNullString;
    }

    if (b.getRawClassName() == overwritingNullString) {
      result.className = overwritingNullString;
    }

    return result;
  }
}

class Mode {
  String? ref;
  Map<String, Mode>? refs;

  List<String>? aliases;

  /// `String | Map<String, [String, int]>`
  dynamic keywords;

  /// `String? | List<String>?`
  dynamic illegal;
  bool? case_insensitive;
  List<Mode?>? contains;
  List<Mode?>? variants;
  Mode? starts;

  /// `String | Map<String, String>`
  dynamic className;

  /// `String | List<String>`
  dynamic begin;
  String? beginKeywords;

  /// String | List
  dynamic end;
  String? lexemes;
  bool? endSameAsBegin;
  bool? endsParent;
  bool? endsWithParent;
  double? relevance;

  dynamic data;

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
  dynamic scope;

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

  Mode({
    this.ref,
    this.refs,
    this.name,
    this.match,
    this.scope,
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
    this.className,
    this.begin,
    this.beginKeywords,
    this.end,
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
  });

  static Mode inherit(Mode a, [Mode? b]) {
    b ??= Mode();
    return Mode()
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
      ..keywords = b.keywords ?? a.keywords
      ..label = b.label ?? a.label
      ..lexemes = b.lexemes ?? a.lexemes
      ..lexemesRe = b.lexemesRe ?? a.lexemesRe
      ..match = b.match ?? a.match
      ..name = b.name ?? a.name
      ..parent = b.parent ?? b.parent
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
  }
}

import 'mode.dart';

class Language extends Mode {
  /// The file name without '.js' extension from which the language is ported.
  final String id;

  final List<String> aliases;

  final bool case_insensitive;

  /// `String | Map<String, String>`
  dynamic classNameAliases;

  final List<dynamic> compilerExtensions;

  final bool disableAutodetect;

  // TODO(alexeyinkin): Make non-nullable and required after is is in stable: https://github.com/highlightjs/highlight.js/issues/3769
  final String? name;

  final Map<String, Mode> refs;

  final String? supersetOf;

  final bool unicodeRegex;

  Language({
    required this.id,
    required this.refs,
    this.aliases = const [],
    this.case_insensitive = false,
    this.classNameAliases,
    this.compilerExtensions = const [],
    this.disableAutodetect = false,
    this.name,
    this.supersetOf,
    this.unicodeRegex = false,
    super.contains,
    super.illegal,
    super.keywords,
    super.subLanguage,
    super.relevance,
  });
}

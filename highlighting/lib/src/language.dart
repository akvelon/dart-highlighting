import 'mode.dart';

class Language extends Mode {
  /// The file name without '.js' extension from which the language is ported.
  final String id;

  final List<String> aliases;

  // TODO(alexeyinkin): Make non-nullable and required after is is in stable: https://github.com/highlightjs/highlight.js/issues/3769
  final String? name;

  Map<String, Mode> refs;

  Language({
    required this.id,
    required this.refs,
    this.aliases = const [],
    this.name,
    super.contains,
    super.illegal,
    super.case_insensitive,
    super.keywords,
    super.classNameAliases,
    super.subLanguage,
    super.disableAutodetect,
    super.relevance,
    super.supersetOf,
    super.unicodeRegex,
  });
}

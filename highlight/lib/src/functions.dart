import '../highlight.dart';

RegExp langRe(dynamic value, bool global, Mode? language) {
  assert(value is String || value is RegExp);

  String source;
  if (value is String) {
    source = value;
  } else {
    source = value.pattern;
  }

  return RegExp(
    source,
    caseSensitive: language?.case_insensitive == null ||
        language?.case_insensitive == false,
    unicode: language?.unicodeRegex == true,
    multiLine: true,
  );
}

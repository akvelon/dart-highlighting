import 'package:highlight/src/domain_regexp_match.dart';

class DomainRegex {
  int lastIndex = 0;
  RegExp regex;

  /// Global flag means that when exec is called continuously,
  /// if it returns non-null result, it will store the last index of the match,
  /// and the next calls of the exec will be performed on input starting from the lastIndex.
  bool global;

  DomainRegex(
    this.regex, {
    this.global = false,
  });

  DomainRegexMatch? exec(String input) {
    throw UnimplementedError();
  }
}

import 'package:highlight/src/domain_regexp_match.dart';

class DomainRegex {
  int lastIndex = 0;
  RegExp regex;

  DomainRegex(this.regex);

  DomainRegexMatch? exec(String input) {
    throw UnimplementedError();
  }
}

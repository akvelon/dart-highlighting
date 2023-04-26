import 'package:collection/collection.dart';

import 'domain_regexp_match.dart';
import 'extension/reg_exp.dart';
import 'utils.dart';

class DomainRegex {
  int lastIndex = 0;
  final RegExp regex;

  /// Global flag means that when exec is called continuously,
  /// if it returns non-null result, it will store the last index of the match,
  /// and the next calls of the exec will be performed on input starting from the lastIndex.
  final bool global;

  DomainRegex(
    RegExp regex, {
    this.global = false,
  }) : regex = surroundGroupIfNeeded(regex);

  DomainRegexMatch? exec(String input) {
    var cutInput = substring(input, lastIndex);

    final match = regex.allMatches(input, lastIndex).firstOrNull;
    if (match == null) {
      lastIndex = 0;
      return null;
    }

    final lastIndexSnapshot = lastIndex;

    lastIndex = match.end;

    return DomainRegexMatch(
      match: match,
      input: input,
      executedRegex: regex,
      startIndex: lastIndexSnapshot,
    );
  }
}

RegExp surroundGroupIfNeeded(RegExp regex) {
  final pattern = source(regex);
  if (pattern != null && !pattern.contains('(') && !pattern.contains(')')) {
    return RegExp(
      '($pattern)',
      multiLine: regex.isMultiLine,
      unicode: regex.isUnicode,
      dotAll: regex.isDotAll,
      caseSensitive: regex.isCaseSensitive,
    );
  }

  return regex;
}

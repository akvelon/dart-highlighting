import 'package:collection/collection.dart';

import 'extension/reg_exp.dart';
import 'js_style_reg_exp_match.dart';
import 'utils.dart';

/// A regular expression that is optionally stateful if [global] is true.
class JsStyleRegExp {
  int lastIndex = 0;
  final RegExp regex;

  /// Global flag means that when exec is called continuously,
  /// if it returns non-null result, it will store the last index of the match,
  /// and the next calls of the exec will be performed on input starting from the lastIndex.
  final bool global;

  JsStyleRegExp(
    RegExp regex, {
    this.global = false,
  }) : regex = surroundGroupIfNeeded(regex);

  JsStyleRegExpMatch? exec(String input) {
    final match = regex.allMatches(input, lastIndex).firstOrNull;
    if (match == null) {
      lastIndex = 0;
      return null;
    }

    final lastIndexSnapshot = lastIndex;

    lastIndex = match.end;

    return JsStyleRegExpMatch(
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

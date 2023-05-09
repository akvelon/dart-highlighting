import 'mode.dart';

class JsStyleRegExpMatch {
  final RegExp executedRegex;
  final RegExpMatch match;
  final String input;
  final int startIndex;
  int position = 0;
  Mode? rule;
  List<String?> _matchGroups = [];

  /// 'begin' | 'end' | 'illegal' -> see constants
  String? matchType;

  JsStyleRegExpMatch({
    required this.match,
    required this.input,
    required this.executedRegex,
    this.startIndex = 0,
  }) {
    _matchGroups.add(match.group(0));
    for (int i = 1; i <= match.groupCount; i++) {
      _matchGroups.add(match.group(i));
    }
  }

  int get index => match.start;

  int get length => _matchGroups.length;

  String? operator [](int index) {
    if (_matchGroups.isEmpty || index >= _matchGroups.length) {
      return null;
    }
    return _matchGroups[index];
  }

  int findIndex(bool Function(String? el, int index) callback) {
    for (int i = 0; i <= match.groupCount; i++) {
      if (callback(match.group(i), i)) {
        return i;
      }
    }

    return -1;
  }

  void splice(int start, int end) {
    _matchGroups.removeRange(
        start + 1, end + (end >= _matchGroups.length ? 0 : 1));
  }
}

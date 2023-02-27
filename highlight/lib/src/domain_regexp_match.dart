import '../highlight.dart';

class DomainRegexMatch {
  RegExp executedRegex;
  List<RegExpMatch> matches;
  String input;
  int startIndex;
  Mode? rule;

  /// 'begin' | 'end' | 'illegal' -> see constants
  String? matchType;

  DomainRegexMatch({
    required this.matches,
    required this.input,
    required this.executedRegex,
    this.startIndex = 0,
  }) : assert(matches.isNotEmpty);

  int get index => matches.first.start;

  int get length => throw UnimplementedError();

  String operator [](index) {
    throw UnimplementedError();
  }
}

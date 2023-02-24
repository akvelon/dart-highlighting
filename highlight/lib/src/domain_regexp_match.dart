class DomainRegexpMatch {
  List<RegExpMatch> matches;
  String input;

  DomainRegexpMatch({
    required this.matches,
    required this.input,
  }) : assert(matches.isNotEmpty);

  int get index => matches.first.start;
}

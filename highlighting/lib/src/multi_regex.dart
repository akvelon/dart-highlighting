import 'package:tuple/tuple.dart';

import 'const/literals.dart';
import 'domain_regex.dart';
import 'domain_regexp_match.dart';
import 'extension/reg_exp.dart';
import 'mode.dart';

class MultiRegex {
  Map<int, dynamic> matchIndexes = {};
  List<Tuple2<Map<dynamic, dynamic>, RegExp>> regexes = [];

  int matchAt = 1;
  int position = 0;
  int lastIndex = 0;
  DomainRegex matcherRe = DomainRegex(RegExp(''));
  Mode? language;

  MultiRegex({
    this.language,
  });

  void addRule(RegExp re, Map<dynamic, dynamic> opts) {
    opts[position] = position++;
    matchIndexes[matchAt] = opts;
    regexes.add(Tuple2(opts, re));
    matchAt += re.countMatchGroups() + 1;
  }

  void compile() {
    if (regexes.isEmpty) {
      exec = (string) => null;
    }

    final terminators = regexes.map((el) => el.item2).toList();
    matcherRe = DomainRegex(
      langRe(
        rewriteBackReferences(terminators, joinWith: '|'),
        true,
        language,
      ),
      global: true,
    );
    lastIndex = 0;
  }

  late DomainRegexMatch? Function(String string) exec = (string) {
    // final input = string.substring(lastIndex);
    matcherRe.lastIndex = lastIndex;
    var match = matcherRe.exec(string);
    if (match == null) {
      return null;
    }

    lastIndex = match.match.end;

    final index = match.findIndex((el, index) => index > 0 && el != null);
    if (index == -1) {
      return null;
    }

    final matchData = matchIndexes[index] as Map;
    // trim off any earlier non-relevant match groups (ie, the other regex
    // match groups that make up the multi-matcher)
    match.splice(0, index);
    match.matchType = matchData[$type];
    match.rule = matchData[$rule];
    return match;
    // return Object.assign(match, matchData);
  };
}

class ResumableMultiRegex {
  List<Tuple2<Map<dynamic, dynamic>, RegExp>> rules = [];
  Map<int, MultiRegex> multiRegexes = {};
  int count = 0;
  int lastIndex = 0;
  int regexIndex = 0;
  Mode? language;

  ResumableMultiRegex({
    this.language,
  });

  MultiRegex getMatcher(int index) {
    if (multiRegexes[index] != null) {
      return multiRegexes[index]!;
    }

    final matcher = MultiRegex(language: language);
    rules.sublist(index).forEach((element) {
      matcher.addRule(element.item2, element.item1);
    });
    matcher.compile();
    multiRegexes[index] = matcher;
    return matcher;
  }

  bool resumingScanAtSamePosition() {
    return regexIndex != 0;
  }

  void considerAll() {
    regexIndex = 0;
  }

  void addRule(RegExp re, Map<dynamic, dynamic> opts) {
    rules.add(Tuple2(opts, re));
    if (opts[$type] == $begin) {
      count++;
    }
  }

  DomainRegexMatch? exec(String s) {
    final m = getMatcher(regexIndex);
    m.lastIndex = lastIndex;
    var result = m.exec(s);

    // The following is because we have no easy way to say "resume scanning at the
    // existing position but also skip the current rule ONLY". What happens is
    // all prior rules are also skipped which can result in matching the wrong
    // thing. Example of matching "booger":

    // our matcher is [string, "booger", number]
    //
    // ....booger....

    // if "booger" is ignored then we'd really need a regex to scan from the
    // SAME position for only: [string, number] but ignoring "booger" (if it
    // was the first match), a simple resume would scan ahead who knows how
    // far looking only for "number", ignoring potential string matches (or
    // future "booger" matches that might be valid.)

    // So what we do: We execute two matchers, one resuming at the same
    // position, but the second full matcher starting at the position after:

    //     /--- resume first regex match here (for [number])
    //     |/---- full match here for [string, "booger", number]
    //     vv
    // ....booger....

    // Which ever results in a match first is then used. So this 3-4 step
    // process essentially allows us to say "match at this position, excluding
    // a prior rule that was ignored".
    //
    // 1. Match "booger" first, ignore. Also proves that [string] does non match.
    // 2. Resume matching for [number]
    // 3. Match at index + 1 for [string, "booger", number]
    // 4. If #2 and #3 result in matches, which came first?
    if (resumingScanAtSamePosition()) {
      if (result != null && result.index == lastIndex) {
        // result is position +0 and therefore a valid
        // "resume" match so result stays result
      } else {
        // use the second matcher result
        final m2 = getMatcher(0);
        m2.lastIndex = lastIndex + 1;
        result = m2.exec(s);
      }
    }

    if (result != null) {
      // yescorp: One way of getting the id of the match group. Need to check this.
      for (var i = 0; i < result.length; i++) {
        if (result[i] != null) {
          regexIndex += i + 1;
          break;
        }
      }

      if (regexIndex == count) {
        // wrap-around to considering all matches again
        considerAll();
      }
    }

    return result;
  }
}

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
    caseSensitive: language?.case_insensitive != true,
    unicode: language?.unicodeRegex == true,
    multiLine: true,
  );
}

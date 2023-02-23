import 'package:highlight/src/const/regexes.dart';
import 'package:highlight/src/utils.dart';

String lookahead(re) {
  return concat(['(?=', re, ')']);
}

String anyNumberOfTimes(dynamic re) {
  return concat(['(?:', re, ')*']);
}

String optional(dynamic re) {
  return concat(['(?:', re, ')?']);
}

String source(dynamic pattern) {
  assert(pattern is String || pattern is RegExp);

  if (pattern is String) {
    return pattern;
  }
  if (pattern is RegExp) {
    return pattern.pattern;
  }

  return pattern as String;
}

String concat(List<dynamic> args) {
  return args.map((e) => source(e)).join('');
}

extension RegExpExtension on RegExp {
  int countMatchGroups() {
    return RegExp(pattern + '|').allMatches('').length - 1;
  }
}

extension ListRegExpExtension on List<RegExp> {
  String rewriteBackReferences([String joinWith = '|']) {
    var numCaptures = 0;

    return map((regex) {
      numCaptures++;
      final offset = numCaptures;

      var re = regex.pattern;
      var out = '';

      while (re.isNotEmpty) {
        final matches = kBackRefRe.allMatches(re).toList();
        if (matches.isEmpty) {
          out += re;
          break;
        }

        out += substring(re, 0, matches[0].start);
        re = substring(re, matches[0].end);

        if (matches[0].input[0] == '\\' && matches.length > 1) {
          out += '\\' + (int.parse(matches[1].input) + offset).toString();
        } else {
          out += matches[0].input;
          if (matches[0].input == '(') {
            numCaptures++;
          }
        }
      }

      return out;
    }).map((re) => '($re)').join(joinWith);
  }
}

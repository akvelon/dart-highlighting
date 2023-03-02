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

/// List<String | RegExp>
String either(List<dynamic> args) {
  final joined = '(' '?:' + args.map((x) => source(x)).join("|") + ")";
  return joined;
}

extension RegExpExtension on RegExp {
  int countMatchGroups() {
    return RegExp(pattern + '|').firstMatch('')?.groupCount ?? 0;
  }
}

String rewriteBackReferences(
  List<dynamic> re, {
  String joinWith = '|',
}) {
  var numCaptures = 0;

  return re
      .map((regex) {
        numCaptures++;
        final offset = numCaptures;

        var re = source(regex);
        var out = '';

        while (re.isNotEmpty) {
          final matches = kBackRefRe.allMatches(re).toList();
          if (matches.isEmpty) {
            out += re;
            break;
          }

          out += substring(re, 0, matches[0].start);
          re = substring(re, matches[0].end);

          if (matches[0].group(0)?[0] == '\\' && matches[0].group(1) != null) {
            out += '\\' + (int.parse(matches[0].group(1)!) + offset).toString();
          } else {
            out += matches[0].group(0)!;
            if (matches[0].group(0) == '(') {
              numCaptures++;
            }
          }
        }

        return out;
      })
      .map((re) => '($re)')
      .join(joinWith);
}

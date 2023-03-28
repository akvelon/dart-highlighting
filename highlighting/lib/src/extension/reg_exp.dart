import 'package:collection/collection.dart';

import '../const/regexes.dart';
import '../utils.dart';

String lookahead(re) {
  return concat(['(?=', re, ')']);
}

String anyNumberOfTimes(dynamic re) {
  return concat(['(?:', re, ')*']);
}

String optional(dynamic re) {
  return concat(['(?:', re, ')?']);
}

String? source(dynamic pattern) {
  if (pattern is String) {
    return pattern;
  }
  if (pattern is RegExp) {
    return pattern.pattern;
  }

  return null;
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

        while (re != null && re.isNotEmpty) {
          final matches = kBackRefRe.allMatches(re).firstOrNull;
          if (matches == null) {
            out += re;
            break;
          }

          out += substring(re, 0, matches.start);
          re = substring(re, matches.end);

          if (matches.group(0)?[0] == '\\' && matches.group(1) != null) {
            out += '\\' + (int.parse(matches.group(1)!) + offset).toString();
          } else {
            out += matches.group(0)!;
            if (matches.group(0) == '(') {
              numCaptures++;
            }
          }
        }

        return out;
      })
      .map((re) => '($re)')
      .join(joinWith);
}

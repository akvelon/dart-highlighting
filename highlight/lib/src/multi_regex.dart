import 'package:tuple/tuple.dart';
import 'extension/reg_exp.dart';

class MultiRegex {
  Map<int, dynamic> matchIndexes = {};
  List<Tuple2<Map<dynamic, dynamic>, RegExp>> regexes = [];

  int matchAt = 1;
  int position = 0;

  MultiRegex();

  void addRule(RegExp re, Map<dynamic, dynamic> opts) {
    opts[position] = opts[position]++;
    matchIndexes[matchAt] = opts;
    regexes.add(Tuple2(opts, re));
    re.countMatchGroups();
    matchAt += 1;
  }

  void compile() {
    if (regexes.isEmpty) {}
  }

  RegExpMatch? Function(String string) exec = (string) {
    return null;
  };
}

import 'package:tuple/tuple.dart';

import 'compiled_scope.dart';
import 'const/literals.dart';
import 'domain_regex.dart';
import 'mode.dart';
import 'multi_regex.dart';

class CompiledMode {
  /// DomainRegExp | String
  dynamic begin;

  /// DomainRegExp | String
  dynamic end;

  String? scope;
  List<CompiledMode> contains = [];

  Map<String, Tuple2<String, int>> keywords = {};

  Map<String, dynamic>? data = {};
  String? terminatorEnd;
  DomainRegex? keywordPatternRe;
  DomainRegex? beginRe;
  DomainRegex? endRe;
  DomainRegex? illegalRe;
  ResumableMultiRegex? matcher;
  bool isCompiled = true;
  CompiledMode? starts;
  CompiledMode? parent;
  CompiledScope? beginScope;
  CompiledScope? endScope;

  CompiledMode();

  factory CompiledMode.fromMode(Mode mode) {
    final compiled = CompiledMode();
    if (mode.begin is String || mode.begin is DomainRegex) {
      compiled.begin = mode.begin;
    }
    if (mode.end is String || mode.end is DomainRegex) {
      compiled.end = mode.end;
    }

    if (mode.scope is String?) {
      compiled.scope = mode.scope;
    }

    compiled.contains = mode.contains?.map((e) {
          return CompiledMode.fromMode(e);
        }).toList() ??
        [];

    compiled.keywords = mode.keywords;
    compiled.data = mode.data;
    if (mode.terminator_end != null) {
      compiled.terminatorEnd = mode.terminator_end!;
    }
    if (mode.keywordPatternRe != null) {
      compiled.keywordPatternRe = mode.keywordPatternRe!;
    }
    if (mode.beginRe != null) {
      compiled.beginRe = DomainRegex(mode.beginRe!);
    }
    if (mode.endRe != null) {
      compiled.endRe = DomainRegex(mode.endRe!);
    }
    if (mode.illegalRe != null) {
      compiled.illegalRe = DomainRegex(mode.illegalRe!);
    }
    if (mode.matcher != null) {
      compiled.matcher = mode.matcher!;
    }
    if (mode.starts != null) {
      compiled.starts = CompiledMode.fromMode(mode.starts!);
    }
    if (mode.parent != null) {
      compiled.parent = CompiledMode.fromMode(mode.parent!);
    }
    if (mode.beginScope != null) {
      compiled.beginScope = CompiledScope(
        data: mode.beginScope,
        emit: mode.beginScope[$emit],
        wrap: mode.beginScope[$wrap],
        multi: mode.beginScope[$multi],
      );
      compiled.beginScope!.data.remove($emit);
      compiled.beginScope!.data.remove($multi);
      compiled.beginScope!.data.remove($wrap);
    }
    if (mode.endScope != null) {
      compiled.endScope = CompiledScope(
        data: mode.endScope,
        emit: mode.endScope[$emit],
        wrap: mode.endScope[$wrap],
        multi: mode.endScope[$multi],
      );
      compiled.endScope!.data.remove($emit);
      compiled.endScope!.data.remove($multi);
      compiled.endScope!.data.remove($wrap);
    }

    return compiled;
  }
}

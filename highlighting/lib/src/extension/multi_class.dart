import '../const/literals.dart';
import '../mode.dart';
import 'reg_exp.dart';

final MultiClassError = Exception('MultiClass Error');

/// [regexes] -- A list of [RegExp] or strings to be compiled to [RegExp].
/// [key] - `"beginScope" | "endScope"`
void remapScopeNames(
  Mode mode,
  List<Pattern> regexes,
  String key,
) {
  var offset = 0;
  final scopeNames = key == $beginScope ? mode.beginScope : mode.endScope;
  final emit = <int, bool>{};
  final positions = <String, dynamic>{};

  for (var i = 1; i <= regexes.length; i++) {
    positions[(i + offset).toString()] = scopeNames[i.toString()];
    emit[i + offset] = true;
    offset += RegExp(source(regexes[i - 1]) ?? '').countMatchGroups();
  }

  positions[$emit] = emit;
  positions[$multi] = true;

  if (key == $beginScope) {
    mode.beginScope = positions;
  }
}

void beginMultiClass(Mode mode) {
  if (mode.begin is! List) {
    return;
  }

  if (mode.skip == true ||
      mode.excludeBegin == true ||
      mode.returnBegin == true ||
      mode.skip != null ||
      mode.excludeBegin != null ||
      mode.returnBegin != null) {
    throw Exception(
        'skip, excludeBegin, returnBegin not compatible with beginScope: {}');
  }

  if (mode.beginScope == null || mode.beginScope is! Map) {
    throw Exception('beginScope must be object');
  }

  remapScopeNames(mode, mode.begin, $beginScope);
  mode.begin = rewriteBackReferences(mode.begin, joinWith: '');
}

void endMultiClass(Mode mode) {
  if (mode.end is! List) return;

  if (mode.skip != true ||
      mode.excludeEnd != true ||
      mode.returnEnd != true ||
      mode.skip != null ||
      mode.excludeEnd != null ||
      mode.returnEnd != null) {
    throw Exception(
        "skip, excludeEnd, returnEnd not compatible with endScope: {}");
  }

  if (mode.endScope == null || mode.endScope is! Map) {
    throw Exception("endScope must be object");
  }

  remapScopeNames(mode, mode.end, $endScope);
  mode.end = rewriteBackReferences(mode.end, joinWith: "");
}

void scopeSugar(Mode mode) {
  if (mode.scope != null && mode.scope is Map) {
    mode.beginScope = mode.scope;
    mode.scope = null;
  }
}

void multiClass(Mode mode, [Mode? parent]) {
  scopeSugar(mode);

  if (mode.beginScope is String) {
    mode.beginScope = {
      $wrap: mode.beginScope,
    };
  }

  if (mode.endScope is String) {
    mode.endScope = {
      $wrap: mode.endScope,
    };
  }

  beginMultiClass(mode);
  endMultiClass(mode);
}

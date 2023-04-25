import 'package:highlighting/src/domain_regexp_match.dart';
import 'package:highlighting/src/response.dart';

import 'const/literals.dart';
import 'languages/mathematica_symbols.dart';

void endSameAsBeginOnBegin(DomainRegexMatch match, Response response) {
  response.data[$beginMatch] = match[1];
}

void endSameAsBeginOnEnd(DomainRegexMatch match, Response response) {
  if (response.data[$beginMatch] != match[1]) {
    response.ignoreMatch();
  }
}

void shebangOnBegin(DomainRegexMatch m, Response resp) {
  if (m.index != 0) resp.ignoreMatch();
}

void language_mathematica_contains_0_variants_0_onBegin(
  DomainRegexMatch m,
  Response resp,
) {
  if (!SYSTEM_SYMBOLS.contains(m[0])) {
    resp.ignoreMatch();
  }
}

void language_javascript_contains_0_contains_0_variants_0_onBegin(
  DomainRegexMatch match,
  Response response,
) {
  final afterMatchIndex = match[0]!.length + match.index;
  final nextChar = match.input[afterMatchIndex];
  if (
      // HTML should not include another raw `<` inside a tag
      // nested type?
      // `<Array<Array<number>>`, etc.
      nextChar == "<" ||
          // the , gives away that this is not HTML
          // `<T, A extends keyof T, V>`
          nextChar == ",") {
    response.ignoreMatch();
    return;
  }

  // `<something>`
  // Quite possibly a tag, lets look for a matching closing tag...
  if (nextChar == ">") {
    // if we cannot find a matching closing tag, then we
    // will ignore it
    if (!hasClosingTag(match, after: afterMatchIndex)) {
      response.ignoreMatch();
    }
  }

  // `<blah />` (self-closing)
  // handled by simpleSelfClosing rule

  final afterMatch = match.input.substring(afterMatchIndex);

  // some more template typing stuff
  //  <T = any>(key?: string) => Modify<
  final equalsType = RegExp(r'^\s*=');
  var m = equalsType.firstMatch(afterMatch);
  if (m != null) {
    response.ignoreMatch();
    return;
  }

  // `<From extends string>`
  // technically this could be HTML, but it smells like a type
  // NOTE: This is ugh, but added specifically for https://github.com/highlightjs/highlight.js/issues/3276
  final extendsType = RegExp(r'^\s+extends\s+');
  m = extendsType.firstMatch(afterMatch);
  if (m != null) {
    if (m.start == 0) {
      response.ignoreMatch();
      return;
    }
  }
}

bool hasClosingTag(
  DomainRegexMatch match, {
  required int after,
}) {
  final tag = "</" + match[0]!.substring(1);
  final pos = match.input.indexOf(tag, after);
  return pos != -1;
}

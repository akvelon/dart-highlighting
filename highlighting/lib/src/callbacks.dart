import 'const/literals.dart';
import 'js_style_reg_exp_match.dart';
import 'languages/mathematica_symbols.g.dart';
import 'response.dart';

void endSameAsBeginOnBegin(JsStyleRegExpMatch match, Response response) {
  response.data[$beginMatch] = match[1];
}

void endSameAsBeginOnEnd(JsStyleRegExpMatch match, Response response) {
  if (response.data[$beginMatch] != match[1]) {
    response.ignoreMatch();
  }
}

void shebangOnBegin(JsStyleRegExpMatch m, Response resp) {
  if (m.index != 0) resp.ignoreMatch();
}

// ignore: non_constant_identifier_names
void language_mathematica_contains_0_variants_0_onBegin(
  JsStyleRegExpMatch m,
  Response resp,
) {
  if (!SYSTEM_SYMBOLS.contains(m[0])) {
    resp.ignoreMatch();
  }
}

// ignore: non_constant_identifier_names
void language_javascript_contains_0_contains_0_variants_0_onBegin(
  JsStyleRegExpMatch match,
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
  JsStyleRegExpMatch match, {
  required int after,
}) {
  final tag = "</" + match[0]!.substring(1);
  final pos = match.input.indexOf(tag, after);
  return pos != -1;
}

// php
// This will change from 'undefined' to 'php' when this is fixed:
// https://github.com/highlightjs/highlight.js/issues/3769
// ignore: non_constant_identifier_names
void language_undefined_contains_0_contains_0_contains_0_variants_0_onBegin(
  JsStyleRegExpMatch match,
  Response response,
) {
  response.data[$beginMatch] = match[1] ?? match[2];
}

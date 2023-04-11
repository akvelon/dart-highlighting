import '../domain_regexp_match.dart';
import '../language_definition_parts/nulls.dart';
import '../mode.dart';
import '../response.dart';
import 'reg_exp.dart';

void skipIfHasPrecedingDot(DomainRegexMatch match, Response response) {
  if (match.index == 0) {
    return;
  }
  final before = match.input[match.index - 1];
  if (before == ".") {
    response.ignoreMatch();
  }
}

void scopeClassName(Mode mode, Mode? parent) {
  final classNameIsMeaningful = mode.className != null;
  final classNameIsExplicitNull =
      mode.getRawClassName() == overwritingNullString;

  if (classNameIsMeaningful || classNameIsExplicitNull) {
    mode.scope = mode.className ?? overwritingNullString;
    mode.className = null;
  }
}

void beginKeywords(Mode mode, Mode? parent) {
  if (parent == null) return;
  if (mode.beginKeywords == null) return;

  // for languages with keywords that include non-word characters checking for
  // a word boundary is not sufficient, so instead we check for a word boundary
  // or whitespace - this does no harm in any case since our keyword engine
  // doesn't allow spaces in keywords anyways and we still check for the boundary
  // first
  mode.begin =
      '\\b(' + mode.beginKeywords!.split(' ').join('|') + ')(?!\\.)(?=\\b|\\s)';
  mode.beforeBegin = skipIfHasPrecedingDot;
  mode.keywords = mode.keywords ?? mode.beginKeywords;
  mode.beginKeywords = null;

  // prevents double relevance, the keywords themselves provide
  // relevance, the mode doesn't need to double it
  // eslint-disable-next-line no-undefined
  mode.relevance ??= 0;
}

void compileIllegal(Mode mode, [Mode? parent]) {
  if (mode.illegal is! List) return;
  final illegal = mode.illegal as List;
  mode.illegal = either(illegal);
}

void compileMatch(Mode mode, [Mode? _parent]) {
  if (mode.match == null) return;
  if (mode.begin != null || mode.end != null) {
    throw Exception('begin & end are not supported with match');
  }

  mode.begin = mode.match;
  mode.match = null;
}

void compileRelevance(Mode mode, Mode? parent) {
  mode.relevance ??= 1;
}

Mode replaceIfRef({required Mode self, Map<String, Mode>? refs}) {
  if (self.ref == null) {
    return self;
  }

  if (refs == null) {
    return self;
  }

  if (refs[self.ref!] == null) {
    throw Exception('The language definition is incorrect! Check "refs" field');
  }

  final newMode = refs[self.ref!]!;
  if (newMode.starts != null) {
    newMode.starts = replaceIfRef(self: newMode.starts!, refs: refs);
  }

  return newMode;
}

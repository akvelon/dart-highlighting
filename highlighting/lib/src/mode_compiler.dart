import 'compile_keywords.dart';
import 'const/literals.dart';
import 'domain_regex.dart';
import 'extension/before_match.dart';
import 'extension/compiler_extensions.dart';
import 'extension/multi_class.dart';
import 'extension/reg_exp.dart';
import 'mode.dart';
import 'multi_regex.dart';

Mode compileLanguage(Mode language) {
  language.compilerExtensions ??= [];

  if (language.contains != null &&
      language.contains!.any((element) => element.self == true)) {
    throw Exception('Self is not supported at top level');
  }

  if (language.classNameAliases is Map) {
    language.classNameAliases ??= Map.from(language.classNameAliases ?? {});
  } else {
    language.classNameAliases = {};
  }

  return compileMode(language, language: language, refs: language.refs);
}

ResumableMultiRegex buildModeRegex(
  Mode mode, {
  Mode? language,
}) {
  final mm = ResumableMultiRegex(language: language);

  mode.contains?.forEach((term) {
    if (term.beginRe == null) {
      int a = 0;
    }
    mm.addRule(term.beginRe!, RuleOptions(rule: term, type: $begin));
  });

  if (mode.terminator_end != null) {
    mm.addRule(RegExp(mode.terminator_end!), RuleOptions(type: $end));
  }

  if (mode.illegal != null) {
    mm.addRule(mode.illegalRe!, RuleOptions(type: $illegal));
  }

  return mm;
}

Mode compileMode(
  Mode mode, {
  required Mode language,
  Mode? parent,
  Map<String, Mode>? refs,
}) {
  if (mode.isCompiled) {
    return mode;
  }

  if (mode.ref != null) {
    mode = replaceIfRef(refs: refs, self: mode);
  }
  if (mode.starts?.ref != null) {
    mode.starts = replaceIfRef(self: mode.starts!, refs: refs);
  }

  scopeClassName(mode);
  compileMatch(mode, parent);
  multiClass(mode, parent);
  beforeMatchExt(mode, parent);

  language.compilerExtensions?.forEach((ext) => ext?.call(mode, parent));

  mode.beforeBegin = null;

  beginKeywords(mode, parent);
  compileIllegal(mode, parent);
  compileRelevance(mode, parent);

  mode.isCompiled = true;

  dynamic keywordPattern;

  if (mode.keywords is Map && mode.keywords[$pattern] != null) {
    mode.keywords = Map.from(mode.keywords);
    keywordPattern = mode.keywords[$pattern];
    mode.keywords.remove($pattern);
  }

  keywordPattern ??= RegExp(r'(\w+)', multiLine: true);

  if (mode.keywords != null) {
    mode.keywords = compileKeywords(
      mode.keywords,
      language.case_insensitive == true,
    );
  }

  mode.keywordPatternRe = DomainRegex(
    langRe(keywordPattern, true, language),
    global: true,
  );

  if (parent != null) {
    mode.begin ??= r'\B|\b';
    mode.beginRe = langRe(mode.begin, false, language);
    if (mode.endsWithParent != true) {
      mode.end ??= RegExp(r'\B|\b');
    }
    if (mode.end != null) {
      mode.endRe = langRe(mode.end, false, language);
    }

    mode.terminator_end = source(mode.end);

    if (mode.endsWithParent == true && parent.terminator_end != null) {
      mode.terminator_end = (mode.terminator_end ?? '') +
          (mode.end != null ? '|' : '') +
          parent.terminator_end!;
    }
  }

  if (mode.illegal != null) {
    mode.illegalRe = langRe(mode.illegal, false, language);
  }
  mode.contains ??= [];

  var newList = <Mode>[];
  mode.contains!.forEach((element) {
    if (element.ref != null) {
      element = replaceIfRef(refs: refs, self: element);
      element.ref = null;
    }
    newList.addAll(
        expandOrCloneMode(element.self == true ? mode : element, refs: refs));
  });
  mode.contains = newList;
  for (final element in mode.contains!) {
    compileMode(element, parent: mode, language: language, refs: refs);
  }

  if (mode.starts != null) {
    compileMode(mode.starts!, parent: parent, language: language, refs: refs);
  }
  if (mode.begin is String && mode.begin.contains(r'\(\s')) {
    int a;
  }

  mode.matcher = buildModeRegex(mode, language: language);

  return mode;
}

bool dependencyOnParent(Mode? mode) {
  if (mode == null) return false;

  return mode.endsWithParent == true || dependencyOnParent(mode.starts);
}

List<Mode> expandOrCloneMode(Mode mode, {Map<String, Mode>? refs}) {
  if (mode.variants != null &&
      mode.variants!.isNotEmpty &&
      mode.cachedVariants == null) {
    mode.cachedVariants = mode.variants!.map((variant) {
      if (variant?.ref != null) {
        variant = replaceIfRef(refs: refs, self: variant!);
      }
      return Mode.inherit(Mode.inherit(mode, Mode(variants: [])), variant);
    }).toList();
  }

  // EXPAND
  // if we have variants then essentially "replace" the mode with the variants
  // this happens in compileMode, where this function is called from
  if (mode.cachedVariants != null && mode.cachedVariants!.isNotEmpty) {
    return mode.cachedVariants!;
  }

  // CLONE
  // if we have dependencies on parents then we need a unique
  // instance of ourselves, so we can be reused with many
  // different parents without issue
  if (dependencyOnParent(mode)) {
    return [
      Mode.inherit(
        mode,
        Mode(
          starts: mode.starts != null ? Mode.inherit(mode.starts!) : null,
        ),
      )
    ];
  }

  return [mode];
}

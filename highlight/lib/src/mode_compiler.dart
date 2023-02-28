import 'package:highlight/src/compile_keywords.dart';
import 'package:highlight/src/const/literals.dart';
import 'package:highlight/src/extension/reg_exp.dart';
import 'package:highlight/src/multi_regex.dart';

import '../highlight.dart';
import 'compiled_mode.dart';
import 'domain_regex.dart';
import 'extension/before_match.dart';
import 'extension/compiler_extensions.dart';
import 'extension/multi_class.dart';

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

  return compileMode(language, language: language);
}

ResumableMultiRegex buildModeRegex(Mode mode) {
  final mm = ResumableMultiRegex(language: mode);

  mode.contains?.forEach((term) {
    if (term.begin is String) {
      term.begin = RegExp(term.begin);
    }
    if (term.begin == null) {
      print(term);
      return;
    }
    mm.addRule(term.beginRe!, {$rule: term, $type: $begin});
  });

  if (mode.terminator_end != null) {
    mm.addRule(RegExp(mode.terminator_end!), {$type: $end});
  }

  if (mode.illegal != null) {
    mm.addRule(mode.illegalRe!, {$type: $illegal});
  }

  return mm;
}

Mode compileMode(Mode mode, {required Mode language, Mode? parent}) {
  if (mode.isCompiled) {
    return mode;
  }

  scopeClassName(mode, parent);
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

  keywordPattern ??= RegExp(r'\w+');

  if (mode.keywords != null) {
    mode.keywords = compileKeywords(
      mode.keywords,
      language.case_insensitive ?? true,
    );
  }

  mode.keywordPatternRe = DomainRegex(
    langRe(keywordPattern, true, language),
    global: true,
  );

  if (parent != null) {
    mode.begin ??= RegExp(r'\B|\b');
    mode.beginRe = langRe(mode.begin, false, language);
    if (mode.end == null && mode.endsWithParent == null) {
      mode.end = RegExp(r'\B|\b');
    }
    if (mode.end != null) {
      mode.endRe = langRe(mode.end, false, language);
    }
    mode.terminator_end = source(mode.end);

    if (mode.endsWithParent != null && parent.terminator_end != null) {
      mode.terminator_end = mode.terminator_end! +
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
    element.parent ??= parent;

    if (element.ref != null) {
      element = replaceIfRef(parent: mode, self: element);
      element.parent ??= parent;
    }
    newList.addAll(expandOrCloneMode(element.self == true ? mode : element));
  });
  mode.contains = newList;
  mode.contains!.forEach((element) {
    compileMode(element, parent: mode, language: element);
  });

  if (mode.starts != null) {
    compileMode(mode.starts!, language: language);
  }

  mode.matcher = buildModeRegex(mode);

  return mode;
}

bool dependencyOnParent(Mode? mode) {
  if (mode == null) return false;

  return mode.endsWithParent == true || dependencyOnParent(mode.starts);
}

List<Mode> expandOrCloneMode(Mode mode) {
  if (mode.variants != null && mode.cachedVariants == null) {
    mode.cachedVariants = mode.variants!.map((variant) {
      return Mode.inherit(Mode.inherit(mode, Mode(variants: null)), variant);
    }).toList();
  }

  // EXPAND
  // if we have variants then essentially "replace" the mode with the variants
  // this happens in compileMode, where this function is called from
  if (mode.cachedVariants != null) {
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

  return [Mode.inherit(mode)];
}

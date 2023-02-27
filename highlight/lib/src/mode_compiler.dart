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
    mm.addRule(term.begin, {$rule: term, $type: $begin});
  });

  if (mode.terminator_end != null) {
    mm.addRule(RegExp(mode.terminator_end!), {$type: $end});
  }

  if (mode.illegal != null) {
    // mode.illegalRe or mode.illegal?
    mm.addRule(mode.illegal!, {$type: $illegal});
  }

  return mm;
}

Mode compileMode(Mode mode, {required Mode language, Mode? parent}) {
  final cmode = mode;
  if (mode.isCompiled) {
    return cmode;
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

  keywordPattern ??= RegExp('w+');

  if (mode.keywords != null) {
    mode.keywords = compileKeywords(
      mode.keywords,
      language.case_insensitive ?? true,
    );
  }

  cmode.keywordPatternRe = DomainRegex(langRe(keywordPattern, true, language));

  if (parent != null) {
    mode.begin ??= RegExp('\B|\b');
    cmode.beginRe = langRe(cmode.begin, false, language);
    if (mode.end == null && mode.endsWithParent == null) {
      mode.end = RegExp('\B|\b');
    }
    if (mode.end != null) {
      cmode.endRe = langRe(cmode.end, false, language);
    }
    cmode.terminator_end = source(cmode.end);

    if (mode.endsWithParent != null && parent.terminator_end != null) {
      cmode.terminator_end = cmode.terminator_end! +
          (mode.end != null ? '|' : '') +
          parent.terminator_end!;
    }
  }

  if (mode.illegal != null) {
    cmode.illegalRe = langRe(mode.illegal, false, language);
  }
  mode.contains ??= [];

  var newList = <Mode>[];
  mode.contains!.forEach((element) {
    newList.addAll(expandOrCloneMode(element.self == true ? mode : element));
  });
  mode.contains = newList;
  mode.contains!.forEach((element) {
    compileMode(element, language: element);
  });

  if (mode.starts != null) {
    compileMode(mode.starts!, parent: parent, language: language);
  }

  cmode.matcher = buildModeRegex(mode);

  return cmode;
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

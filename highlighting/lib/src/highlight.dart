import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

import '../languages/all.dart';
import '../languages/plaintext.dart';
import 'const/literals.dart';
import 'const/magic_numbers.dart';
import 'js_style_reg_exp_match.dart';
import 'language.dart';
import 'mode.dart';
import 'mode_compiler.dart';
import 'response.dart';
import 'result.dart';
import 'utils.dart';

class Highlight {
  final _languages = <String, Language>{};

  void registerLanguage(Language language, {String? id}) {
    _languages[id ?? language.id] = language;
  }

  Result parse(
    String text, {
    required String languageId,
  }) {
    return highlight(languageId, text, true);
  }

  @internal
  Result highlight(
    String languageId,
    String codeToHighlight,
    bool ignoreIllegals, {
    Mode? continuation,
    bool safeMode = true,
  }) {
    final emitter = Result();
    final language = _languages[languageId] ?? builtinLanguages[languageId];

    final md = compileLanguage(language!);

    Mode top = continuation ?? md;
    final continuations = Map<String, dynamic>();

    void processContinuations() {
      final list = [];
      for (Mode? current = top;
          current != language && current != null;
          current = current.parent) {
        if (current.scope != null) {
          list.insert(0, current.scope);
        }
      }
      list.forEach((element) {
        emitter.openNode(element);
      });
    }

    processContinuations();
    String modeBuffer = '';
    double relevance = 0;
    int index = 0;
    int iterations = 0;
    bool resumeScanAtSamePosition = false;

    /// KVs:
    /// `$type: MatchType ('begin', 'end', 'illegal')`,
    /// `$index: int`,
    /// `$rule`: Mode
    JsStyleRegExpMatch? lastMatch;

    var keywordHits = Map<String, dynamic>();

    Tuple2<String, double>? keywordData(Mode mode, String matchText) {
      return mode.keywords[matchText];
    }

    void processKeywords() {
      if (top.keywords == null) {
        emitter.addText(modeBuffer);
        return;
      }

      var lastIndex = 0;
      top.keywordPatternRe!.lastIndex = 0; // lets assume it can't be null here
      var match = top.keywordPatternRe!.exec(modeBuffer);
      var buf = '';

      while (match != null) {
        buf += substring(modeBuffer, lastIndex, match.index);
        final word = language.case_insensitive == true
            ? match[0]!.toLowerCase()
            : match[0];

        final data = keywordData(top, word!);
        if (data != null) {
          final kind = data.item1;
          final keywordRelevance = data.item2;
          emitter.addText(buf);
          buf = '';

          keywordHits[word] = (keywordHits[word] ?? 0) + 1;
          if (keywordHits[word] <= kMaxKeywordHits) {
            relevance += keywordRelevance;
          }
          if (kind.startsWith('_')) {
            buf += match[0]!;
          } else {
            final cssClass = language.classNameAliases[kind] ?? kind;
            emitter.addKeyword(match[0]!, cssClass);
          }
        } else {
          buf += match[0]!;
        }
        lastIndex = top.keywordPatternRe!.lastIndex;
        match = top.keywordPatternRe?.exec(modeBuffer);
      }

      buf += substring(modeBuffer, lastIndex);
      emitter.addText(buf);
    }

    void processSubLanguage() {
      if (top.subLanguage.isEmpty) {
        throw Exception('processSublanguage called on empty sublanguage');
      }

      if (modeBuffer.isEmpty) {
        return;
      }

      Result result;
      if (top.subLanguage.length > 1) {
        result = highlightAuto(modeBuffer, top.subLanguage);
      } else {
        result = highlight(
          top.subLanguage.first,
          modeBuffer,
          true,
          continuation: continuations[top.subLanguage.first],
        );
        continuations[top.subLanguage.first] = result.top;
      }

      if (top.relevance! > 0) {
        relevance += result.relevance;
      }
      emitter.addSublanguage(result, result.language);
    }

    void processBuffer() {
      if (top.subLanguage.isNotEmpty) {
        processSubLanguage();
      } else {
        processKeywords();
      }
      modeBuffer = '';
    }

    void emitMultiClass(Map scope, JsStyleRegExpMatch match) {
      var i = 1;
      final max = match.length - 1;
      while (i <= max) {
        if (scope[$emit][i] == null) {
          i++;
          continue;
        }
        final klass = language.classNameAliases[scope[i.toString()]] ??
            scope[i.toString()];
        final text = match[i];

        if (klass != null) {
          emitter.addKeyword(text!, klass);
        } else {
          modeBuffer = text!;
          processKeywords();
          modeBuffer = '';
        }
        i++;
      }
    }

    Mode startNewMode(Mode mode, JsStyleRegExpMatch match) {
      if (mode.scope != null && mode.scope is String) {
        emitter.openNode(language.classNameAliases[mode.scope] ?? mode.scope);
      }

      if (mode.beginScope != null) {
        if (mode.beginScope[$wrap] != null) {
          emitter.addKeyword(
            modeBuffer,
            language.classNameAliases[mode.beginScope[$wrap]] ??
                mode.beginScope[$wrap],
          );
          modeBuffer = '';
        } else if (mode.beginScope[$multi] == true) {
          // Here it must be compiledscope
          emitMultiClass(mode.beginScope, match);
          modeBuffer = '';
        }
      }

      top = Mode.inherit(mode, Mode(parent: top));

      return top;
    }

    Mode? endOfMode(
      Mode mode,
      JsStyleRegExpMatch match,
      String matchPlusRemainder,
    ) {
      var matched = false;

      if (mode.endRe != null) {
        matched = matchPlusRemainder.startsWith(mode.endRe!);
      }

      if (matched) {
        if (mode.onEnd != null) {
          final resp = Response(mode: mode);

          mode.onEnd?.call(match, resp);
          if (resp.isMatchIgnored) {
            matched = false;
          }
        }
        if (matched) {
          while (mode.endsParent == true && mode.parent != null) {
            mode = mode.parent!;
          }
          return mode;
        }
      }

      if (mode.endsWithParent == true) {
        return endOfMode(mode.parent!, match, matchPlusRemainder);
      }

      // Check what we need to return here.
      return null;
    }

    int doIgnore(String lexeme) {
      if (top.matcher?.regexIndex == 0) {
        modeBuffer += lexeme[0];
        return 1;
      } else {
        resumeScanAtSamePosition = true;
        return 0;
      }
    }

    int doBeginMatch(JsStyleRegExpMatch match) {
      final lexeme = match[0];
      final newMode = match.rule!;

      final resp = Response(mode: newMode);
      final beforeCallbacks = [newMode.beforeBegin, newMode.onBegin];

      for (final cb in beforeCallbacks) {
        if (cb == null) {
          continue;
        }
        cb(match, resp);
        if (resp.isMatchIgnored) return doIgnore(lexeme!);
      }

      if (newMode.skip == true) {
        modeBuffer += lexeme!;
      } else {
        if (newMode.excludeBegin == true) {
          modeBuffer += lexeme!;
        }
        processBuffer();
        if (newMode.returnBegin != true && newMode.excludeBegin != true) {
          modeBuffer = lexeme!;
        }
      }
      startNewMode(newMode, match);
      return newMode.returnBegin == true ? 0 : lexeme!.length;
    }

    int doEndMatch(JsStyleRegExpMatch match) {
      final lexeme = match[0];
      final matchPlusRemainder = substring(codeToHighlight, match.index);

      final endMode = endOfMode(top, match, matchPlusRemainder);
      if (endMode == null) {
        return kNoMatch;
      }

      final origin = top;
      if (top.endScope != null && top.endScope[$wrap] != null) {
        processBuffer();
        emitter.addKeyword(lexeme!, top.endScope[$wrap]);
      } else if (top.endScope != null && top.endScope[$multi] == true) {
        processBuffer();
        emitMultiClass(top.endScope, match);
      } else if (origin.skip == true) {
        modeBuffer += lexeme!;
      } else {
        if (!(origin.returnEnd == true || origin.excludeEnd == true)) {
          modeBuffer += lexeme!;
        }
        processBuffer();
        if (origin.excludeEnd == true) {
          modeBuffer = lexeme!;
        }
      }

      do {
        if (top.scope != null) {
          emitter.closeNode();
        }
        if (top.skip != true && top.subLanguage.isEmpty) {
          relevance += top.relevance!;
        }
        top = top.parent!;
      } while (top != endMode.parent);

      if (endMode.starts != null) {
        startNewMode(endMode.starts!, match);
      }
      return origin.returnEnd == true ? 0 : lexeme!.length;
    }

    int processLexeme(String textBeforeMatch, JsStyleRegExpMatch? match) {
      dynamic lexeme = match != null ? match[0] : null;

      modeBuffer += textBeforeMatch;

      if (lexeme == null) {
        processBuffer();
        return 0;
      }

      if (lastMatch?.matchType == $begin &&
          match!.matchType == $end &&
          lastMatch?.index == match.index &&
          lexeme == '') {
        modeBuffer += codeToHighlight.substring(match.index, match.index + 1);
        if (!safeMode) {
          throw Exception(
              '0 width match regex $languageId, rule: ${lastMatch?.rule}');
        }

        return 1;
      }

      lastMatch = match!;

      if (match.matchType == $begin) {
        return doBeginMatch(match);
      } else if (match.matchType == $illegal && ignoreIllegals != true) {
        throw Exception(
            'Illegal lexeme $lexeme for mode ${top.scope ?? '<unnamed>'}');
      } else if (match.matchType == $end) {
        final processed = doEndMatch(match);
        if (processed != kNoMatch) {
          return processed;
        }
      }

      if (match.matchType == $illegal && lexeme == '') {
        return 1;
      }

      if (iterations > kMaxIterations && iterations > match.index * 3) {
        throw Exception();
      }

      modeBuffer += lexeme;
      return lexeme.length;
    }

    try {
      top.matcher?.considerAll();

      for (;;) {
        iterations++;
        if (resumeScanAtSamePosition) {
          resumeScanAtSamePosition = false;
        } else {
          top.matcher?.considerAll();
        }
        if (top.matcher != null) {
          top.matcher!.lastIndex = index;
        }
        final match = top.matcher?.exec(codeToHighlight);

        if (match == null) {
          break;
        }

        final beforeMatch = substring(codeToHighlight, index, match.index);
        final processedCount = processLexeme(beforeMatch, match);
        index = match.index + processedCount;
      }
      processLexeme(substring(codeToHighlight, index), null);
      emitter.closeAllNodes();
      emitter.finalize();
      emitter.relevance = relevance;
      emitter.language = languageId;
      emitter.top = top;
      return emitter;
    } on Exception catch (e) {
      print(e);
    }

    return emitter;
  }

  @internal
  Result highlightAuto(
    String code,
    List<String> languageSubset,
  ) {
    final plainText = justTextHighlightResult(code);
    try {
      final results = languageSubset
          .where((e) => _languages[e] != null || builtinLanguages[e] != null)
          .where((e) =>
              _languages[e]?.disableAutodetect != true ||
              builtinLanguages[e]?.disableAutodetect != true)
          .map((name) => highlight(name, code, false))
          .toList();

      results.insert(0, plainText);
      results.sortByCompare<Result>((element) => element, _resultComparator);

      return results[0];
    } on Exception {
      return plainText;
    }
  }

  Result justTextHighlightResult(String code) {
    final emitter = Result(
      language: null,
      top: plaintext,
    );

    return emitter..addText(code);
  }

  /// Compares results based on relevance, then on one being a superset.
  int _resultComparator(Result a, Result b) {
    // Sort base on relevance.
    if ((a.relevance - b.relevance).abs() > 0.0001) {
      return (b.relevance - a.relevance).sign.round();
    }

    // Always award the tie to the base language
    // i.e. if C++ and Arduino are tied, it's more likely to be C++.
    if (a.language != null && b.language != null) {
      if (_getLanguage(a.language!)?.supersetOf == b.language) {
        return 1;
      }
      if (_getLanguage(b.language!)?.supersetOf == a.language) {
        return -1;
      }
    }

    // Otherwise say they are equal, which has the effect of sorting on
    // relevance while preserving the original ordering - which is how ties
    // have historically been settled, i.e. the language that comes first always
    // wins in the case of a tie.
    return 0;
  }

  Language? _getLanguage(String name) {
    return _languages[name] ?? builtinLanguages[name];
  }
}

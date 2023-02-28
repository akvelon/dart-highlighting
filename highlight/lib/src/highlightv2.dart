import 'package:collection/collection.dart';
import 'package:highlight/languages/all.dart';
import 'package:highlight/src/const/literals.dart';
import 'package:highlight/src/domain_regexp_match.dart';
import 'package:highlight/src/mode_compiler.dart';
import 'package:highlight/src/response.dart';
import 'package:highlight/src/utils.dart';
import 'package:tuple/tuple.dart';

import '../highlight.dart';
import 'compiled_scope.dart';
import 'const/magic_numbers.dart';

class HighlightV2 {
  final _languages = {}.cast<String, Mode>();
  final _aliases = {}.cast<String, String>();
  Mode? _languageMode;

  Result highlight(
    String languageName,
    String codeToHighlight,
    bool ignoreIllegals, {
    Mode? continuation,
    bool safeMode = true,
  }) {
    final emitter = Result();
    final language = builtinLanguages[languageName];

    final md = compileLanguage(language!);

    Mode top = continuation ?? md;
    final continuations = Map<String, dynamic>();

    // processContinuations();
    String modeBuffer = '';
    double relevance = 0;
    int index = 0;
    int iterations = 0;
    bool resumeScanAtSamePosition = false;

    /// KVs:
    /// `$type: MatchType ('begin', 'end', 'illegal')`,
    /// `$index: int`,
    /// `$rule`: Mode
    Map<String, dynamic> lastMatch = {};

    var keywordHits = Map<String, dynamic>();

    Tuple2<String, int>? keywordData(Mode mode, String matchText) {
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
            ? match[0].toLowerCase()
            : match[0];

        final data = keywordData(top, word);
        if (data != null) {
          final kind = data.item1;
          final keywordRelevance = data.item2;
          buf = '';

          keywordHits[word] = (keywordHits[word] ?? 0) + 1;
          if (keywordHits[word] <= kMaxKeywordHits) {
            relevance += keywordRelevance;
          }
          if (kind.startsWith('_')) {
            buf += match[0];
          } else {
            final cssClass = language.classNameAliases[kind] ?? kind;
            emitter.addKeyword(match[0], cssClass);
          }
        } else {
          buf += match[0];
        }
        lastIndex = top.keywordPatternRe!.lastIndex;
        match = top.keywordPatternRe?.exec(modeBuffer);
      }

      buf += substring(modeBuffer, lastIndex);
      emitter.addText(buf);
    }

    void processSubLanguage() {
      if (modeBuffer == '') {
        return;
      }
      Result result;

      if (top.subLanguage is String) {
        // need to check the type of sublanguage
        if (_languages[top.subLanguage] == null) {
          emitter.addText(modeBuffer);
          return;
        }

        // check type of subLanguage
        result = highlight(top.subLanguage!.first, modeBuffer, true,
            continuation: continuations[top.subLanguage]);
        continuations[top.subLanguage!.first] = result.top;
      } else {
        result = Result();
      }

      if (top.relevance! > 0) {
        relevance += result.relevance!;
      }
      emitter.addSublanguage(emitter, result.language!);
    }

    void processBuffer() {
      if (top.subLanguage != null) {
        processSubLanguage();
      } else {
        processKeywords();
      }
      modeBuffer = '';
    }

    void emitMultiClass(Map scope, DomainRegexMatch match) {
      var i = 1;
      final max = match.length - 1;
      while (i <= max) {
        if (scope[$emit][i] == null) {
          i++;
          continue;
        }
        final klass = language.classNameAliases[scope[i]] ?? scope[i];
        final text = match[i];

        if (klass != null) {
          emitter.addKeyword(text, klass);
        } else {
          modeBuffer = text;
          processKeywords();
          modeBuffer = '';
        }
        i++;
      }
    }

    Mode startNewMode(Mode mode, DomainRegexMatch match) {
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
        Mode mode, DomainRegexMatch match, String matchPlusRemainder) {
      var matched = matchPlusRemainder.startsWith(mode.endRe!);

      if (matched) {
        if (mode.onEnd != null) {
          final resp = new Response(mode: mode);

          mode.onEnd(match, resp);
          if (resp.isMatchIgnored) {
            matched = false;
          }
        }
        if (matched) {
          while (mode.endsWithParent == true && mode.parent != null) {
            mode = mode.parent!;
          }
          return mode;
        }
      }

      if (mode.endsWithParent == true) {
        return endOfMode(mode, match, matchPlusRemainder);
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

    int doBeginMatch(DomainRegexMatch match) {
      final lexeme = match[0];
      final newMode = match.rule!;

      final resp = Response(mode: newMode);
      final beforeCallbacks = [newMode.beforeBegin, newMode.onBegin];

      for (final cb in beforeCallbacks) {
        if (cb == null) {
          continue;
        }
        cb(match, resp);
        if (resp.isMatchIgnored) return doIgnore(lexeme);
      }

      if (newMode.skip == true) {
        modeBuffer += lexeme;
      } else {
        if (newMode.excludeBegin == true) {
          modeBuffer += lexeme;
        }
        processBuffer();
        if (newMode.returnBegin != true && newMode.excludeBegin != true) {
          modeBuffer = lexeme;
        }
      }
      startNewMode(newMode, match);
      return newMode.returnBegin == true ? 0 : lexeme.length;
    }

    int doEndMatch(DomainRegexMatch match) {
      final lexeme = match[0];
      final matchPlusRemainder = substring(codeToHighlight, match.index);

      final endMode = endOfMode(top, match, matchPlusRemainder);
      if (endMode == null) {
        return kNoMatch;
      }

      final origin = top;
      if (top.endScope != null && top.endScope[$wrap] != null) {
        processBuffer();
        emitter.addKeyword(lexeme, top.endScope[$wrap]);
      } else if (top.endScope != null && top.endScope[$multi] == true) {
        processBuffer();
        emitMultiClass(top.endScope, match);
      } else if (origin.skip == true) {
        modeBuffer += lexeme;
      } else {
        if (!(origin.returnEnd == true || origin.excludeEnd == true)) {
          modeBuffer += lexeme;
        }
        processBuffer();
        if (origin.excludeEnd == true) {
          modeBuffer = lexeme;
        }
      }

      do {
        if (top.scope != null) {
          emitter.closeNode();
        }
        if (top.skip != true && top.subLanguage != null) {
          relevance += top.relevance!;
        }
        top = top.parent!;
      } while (top != endMode.parent);

      if (endMode.starts != null) {
        startNewMode(endMode.starts!, match);
      }
      return origin.returnEnd == true ? 0 : lexeme.length;
    }

    void processContinuations() {
      final list = [];
      for (Mode? current = top;
          current != language || current != null;
          current = current?.parent) {
        if (current?.scope != null) {
          list.insert(0, current?.scope);
        }
      }
      list.forEach((element) {
        emitter.openNode(element);
      });
    }

    int processLexeme(String textBeforeMatch, DomainRegexMatch? match) {
      dynamic lexeme = match ?? match?[0];

      modeBuffer += textBeforeMatch;

      if (lexeme == null) {
        processBuffer();
        return 0;
      }

      if (lastMatch[$type] == $begin &&
          match!.matchType == $end &&
          lastMatch[$index] == match.index &&
          lexeme == '') {
        modeBuffer += codeToHighlight.substring(match.index, match.index + 1);
        if (safeMode) {
          throw Exception(
              '0 width match regex $languageName, rule: ${lastMatch[$rule]}');
        }

        return 1;
      }

      lastMatch = {
        $type: match!.matchType,
        $index: match.index,
        $rule: match.rule,
      };

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
      top.matcher!.considerAll();

      for (;;) {
        iterations++;
        if (resumeScanAtSamePosition) {
          resumeScanAtSamePosition = false;
        } else {
          top.matcher!.considerAll();
        }
        top.matcher!.lastIndex = index;
        final match = top.matcher!.exec(codeToHighlight);

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
      emitter.language = languageName;
      emitter.top = top;
      return emitter;
    } on Exception catch (e) {
      print(e);
    }

    return emitter;
  }
}
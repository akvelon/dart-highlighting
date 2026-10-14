import 'package:highlighting/highlighting.dart';
import 'package:highlighting/highlighting_core.dart' as core;
import 'package:highlighting/languages/dart.dart';
import 'package:highlighting/languages/markdown.dart';
import 'package:highlighting/languages/xml.dart';
import 'package:test/test.dart';

const _dartWithDocComment = '''
/// Returns `x` **doubled**.
int twice(int x) => x * 2;
''';

void main() {
  group('HighlightCore', () {
    test('highlights a registered language', () {
      final highlight = core.HighlightCore()..registerLanguage(dart);

      final html = highlight.parse('int x = 1;', languageId: 'dart').toHtml();

      expect(html, contains('<span class="hljs-built_in">int</span>'));
    });

    test('does not know languages that were not registered', () {
      final highlight = core.HighlightCore()..registerLanguage(dart);

      expect(
        () => highlight.parse('a = 1', languageId: 'python'),
        throwsA(anything),
      );
    });

    test('emits an unregistered sub-language as plain text', () {
      // dart embeds markdown in doc comments; markdown is not registered.
      final highlight = core.HighlightCore()..registerLanguage(dart);

      final result = highlight.parse(_dartWithDocComment, languageId: 'dart');
      final html = result.toHtml();

      expect(html, contains('<span class="hljs-comment">'));
      expect(html, contains('Returns `x` **doubled**.'));
      expect(html, isNot(contains('language-markdown')));
      expect(html, contains('<span class="hljs-built_in">int</span>'));
    });

    test('highlights a sub-language once it is registered', () {
      final highlight = core.HighlightCore()
        ..registerLanguage(dart)
        ..registerLanguage(markdown)
        ..registerLanguage(xml);

      final html =
          highlight.parse(_dartWithDocComment, languageId: 'dart').toHtml();

      expect(html, contains('language-markdown'));
      expect(html, contains('hljs-strong'));
    });

    test('matches Highlight for the languages it was given', () {
      final full = Highlight();
      final coreOnly = core.HighlightCore()
        ..registerLanguage(dart)
        ..registerLanguage(markdown)
        ..registerLanguage(xml);

      expect(
        coreOnly.parse(_dartWithDocComment, languageId: 'dart').toHtml(),
        full.parse(_dartWithDocComment, languageId: 'dart').toHtml(),
      );
    });
  });

  group('Highlight', () {
    test('still falls back to every built-in language', () {
      final html = Highlight()
          .parse('def f():\n    return 1\n', languageId: 'python')
          .toHtml();

      expect(html, contains('<span class="hljs-keyword">def</span>'));
    });

    test('is a HighlightCore', () {
      expect(Highlight(), isA<core.HighlightCore>());
    });
  });
}

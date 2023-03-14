import 'package:flutter_test/flutter_test.dart';
import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/dart.dart';

void main() {
  test('description', () {
    final highlight = HighlightV2();

    highlight.registerLanguage('language', dart);

    final result = highlight.parse('text', language: 'language');

    expect(result.nodes![0].toString(), 'matcher');
  });
}

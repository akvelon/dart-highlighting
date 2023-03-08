import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/markdown.dart';
import 'package:highlight/src/mode_compiler.dart';

void main() {
  final compiledMode = compileLanguage(markdown);
  final highlight = HighlightV2()..registerLanguage('dart', dart);

  final result = highlight.parse(
    '/// This is a doc\nclass MyClass{\n}',
    language: 'dart',
  );
  int a = 9;
}
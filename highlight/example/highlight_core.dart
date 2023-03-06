import 'package:highlight/highlight.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/src/mode_compiler.dart';

void main() {
  final compiledMode = compileLanguage(python);
  final highlight = HighlightV2()..registerLanguage('python', python);

  final result = highlight.parse(
      '"""This is\nMultiline String"""\ndef MyFunc():\n  if true:\n    return true',
      language: 'python');
  int a = 9;
}

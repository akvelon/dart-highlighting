import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/markdown.dart';
import 'package:highlight/src/mode_compiler.dart';

void main() {
  // final compiledMode = compileLanguage(markdown);
  final highlight = HighlightV2()..registerLanguage('dart', dart);

  final result = highlight.parse(
    r'''
void main(){
  int num = 5;
  print('Factorial of $num is  ${factorial(num)}');
}
''',
    language: 'dart',
  );
  int a = 9;
}

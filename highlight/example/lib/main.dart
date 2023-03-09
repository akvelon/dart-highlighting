import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/markdown.dart';
import 'package:highlight/src/mode_compiler.dart';

void main() {
  final compiledMode = compileLanguage(markdown);
  final highlight = HighlightV2()..registerLanguage('dart', dart);

  final result = highlight.parse(
    r'''
/// Calculates the factorial of the number.
/// The number must be >= 0.
int factorial(int n){
  if(n == 0){
    return 0;
  }

  return n * factorial(n - 1);
}

void main(){
  int num = 5;
  print('Factorial of $num is  ${factorial(num)}');
}
''',
    language: 'dart',
  );
  int a = 9;
}

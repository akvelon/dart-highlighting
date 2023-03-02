import 'package:highlight/highlight.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/src/mode_compiler.dart';

void main() {
  var source = '''main() {
  print("Hello, World!");
}
''';
  final compiledMode = compileLanguage(python);
  final result = HighlightV2()
      .highlight('python', '"This is String!"\n#This is comment!\ndef MyFunc():\n  if true:\n    return true', true);
  int a = 9;
}

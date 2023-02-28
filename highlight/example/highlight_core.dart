import 'package:highlight/languages/python.dart';
import 'package:highlight/src/mode_compiler.dart';

void main() {
  var source = '''main() {
  print("Hello, World!");
}
''';
  final compiledMode = compileLanguage(python);
  int a = 9;
}

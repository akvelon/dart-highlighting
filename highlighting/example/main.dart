import 'package:highlighting/highlighting_core.dart' show highlight;
import 'package:highlighting/languages/dart.dart';

void main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  highlight.registerLanguage('dart', dart);

  var result = highlight.parse(source, language: 'dart');
  var html = result.toHtml();
  print(html); // HTML string
}

import 'package:highlighting/highlighting.dart';
import 'package:highlighting/languages/dart.dart';

void main() {
  final source = '''main() {
  print('Highlighting by Akvelon.');
}
''';

  highlight.registerLanguage('dart', dart);

  final highlighted = highlight.parse(source, language: 'dart');
  final html = highlighted.toHtml();
  print(html); // HTML string
}

import 'package:highlighting/highlighting.dart';
import 'package:highlighting/languages/dart.dart';

void main() {
  final source = '''main() {
  print('Highlighting by Akvelon.');
}
''';

  highlight.registerLanguage(dart);

  final highlighted = highlight.parse(source, languageId: dart.id);
  final html = highlighted.toHtml();
  print(html); // HTML string
}

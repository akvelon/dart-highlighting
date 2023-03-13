import 'package:flutter_highlight_gallery/example_map.dart';
import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/php.dart';

void main(List<String> args) {
  highlight.registerLanguage('php', php);
  final result = highlight.parse(exampleMap['php']!, language: 'php');
  print(result.nodes![0].children);
  int a = 9;
}

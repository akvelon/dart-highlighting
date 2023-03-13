import 'package:flutter/material.dart';
import 'package:highlight/highlight_core.dart';
import 'package:highlight/highlight_themes.dart';

class CustomController extends TextEditingController {
  Mode language;
  Map<String, TextStyle> theme;
  String prevText = '';
  TextSpan lastTextSpan = TextSpan();

  CustomController({
    required this.language,
    required this.theme,
    super.text,
  });

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    bool withComposing = false,
  }) {
    if (text == prevText) {
      return lastTextSpan;
    }
    highlight.registerLanguage(language.hashCode.toString(), language);
    final result =
        highlight.parse(text, language: language.hashCode.toString());
    prevText = text;
    print(result.nodes?[0].toString());

    return lastTextSpan = TextSpan(
      style: TextStyle(fontFamily: 'VeraMono'),
      children: [build(result.nodes)],
    );
  }

  TextSpan build(List<Node>? nodes) {
    return TextSpan(
      style: theme['root'],
      children: _buildList(
        nodes: nodes ?? [],
        ancestorStyle: theme['root'],
      ),
    );
  }

  List<TextSpan>? _buildList({
    required List<Node>? nodes,
    TextStyle? ancestorStyle,
  }) {
    if (nodes == null) {
      return null;
    }

    return nodes
        .map(
          (node) => _buildNode(
            node: node,
            ancestorStyle: ancestorStyle,
          ),
        )
        .toList(growable: false);
  }

  TextSpan _buildNode({
    required Node node,
    TextStyle? ancestorStyle,
  }) {
    final style = theme[node.className] ?? ancestorStyle;

    return TextSpan(
      text: node.value,
      children: _buildList(
        nodes: node.children,
        ancestorStyle: style,
      ),
      style: style,
    );
  }
}

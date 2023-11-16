import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:highlighting/highlighting.dart';

/// Highlight Flutter Widget
class HighlightView extends StatelessWidget {
  /// The original code to be highlighted
  final String source;

  /// Highlight language
  ///
  /// It is recommended to give it a value for performance
  ///
  /// [All available languages](https://github.com/akvelon/dart-highlighting/tree/main/highlighting/lib/languages)
  final String? languageId;

  /// Highlight theme
  ///
  /// [All available themes](https://github.com/akvelon/dart-highlighting/tree/main/flutter_highlighting/lib/themes)
  final Map<String, TextStyle> theme;

  /// Padding
  final EdgeInsetsGeometry? padding;

  /// Text styles
  ///
  /// Specify text styles such as font family and font size
  final TextStyle? textStyle;

  /// Text selectable
  ///
  /// Specify if the text is selectable
  final bool selectable;

  /// Text selection color
  ///
  /// Specify the text selection highlight color
  final Color selectionColor;

  HighlightView(
    String input, {
    this.languageId,
    this.theme = const {},
    this.padding,
    this.textStyle,
    int tabSize = 8, // TODO: https://github.com/flutter/flutter/issues/50087
    this.selectable = false,
    this.selectionColor = _defaultTextSelectionColor,
  }) : source = input.replaceAll('\t', ' ' * tabSize);

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    _traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: theme[node.className]));
      } else {
        List<TextSpan> tmp = [];
        currentSpans.add(TextSpan(children: tmp, style: theme[node.className]));
        stack.add(currentSpans);
        currentSpans = tmp;

        node.children.forEach((n) {
          _traverse(n);
          if (n == node.children.last) {
            currentSpans = stack.isEmpty ? spans : stack.removeLast();
          }
        });
      }
    }

    for (var node in nodes) {
      _traverse(node);
    }

    return spans;
  }

  static const _rootKey = 'root';
  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);
  static const _defaultTextSelectionColor = Color(0xAF6694e8);

  // TODO: dart:io is not available at web platform currently
  // See: https://github.com/flutter/flutter/issues/39998
  // So we just use monospace here for now
  static const _defaultFontFamily = 'monospace';

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontFamily: _defaultFontFamily,
      color: theme[_rootKey]?.color ?? _defaultFontColor,
    );
    if (textStyle != null) {
      textStyle = textStyle.merge(textStyle);
    }

    return Container(
      color: theme[_rootKey]?.backgroundColor ?? _defaultBackgroundColor,
      padding: padding,
      child: RichText(
        selectionRegistrar:
            selectable ? SelectionContainer.maybeOf(context) : null,
        selectionColor: selectionColor,
        text: TextSpan(
          style: textStyle,
          children: _convert(
            highlight.highlight(languageId ?? '', source, true).nodes ?? [],
          ),
        ),
      ),
    );
  }
}

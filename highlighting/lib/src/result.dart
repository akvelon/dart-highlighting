import 'package:collection/collection.dart';
import 'package:highlighting/src/html_renderer.dart';

import 'node.dart';
import 'mode.dart';

class Result {
  double relevance;
  List<Node>? nodes;
  String? language;
  Mode? top;
  Result? secondBest;
  String? currentScope;
  List<Node> stack = [];
  Node rootNode;

  Result({
    this.relevance = 0,
    this.language,
    this.top,
    this.secondBest,
    List<Node>? nodes,
  }) : rootNode = Node() {
    this.nodes = nodes ?? [rootNode];
    stack.add(rootNode);
  }

  void add(Node node) {
    stack.last.children.add(node);
  }

  void openNode(String kind) {
    final node = Node(className: _processScope(kind));
    add(node);
    stack.add(node);
  }

  Node? closeNode() {
    if (stack.length > 1) {
      return stack.removeLast();
    }
    return null;
  }

  void closeAllNodes() {
    while (closeNode() != null) {
      // nothing is required here.
    }
  }

  void addKeyword(String text, String kind) {
    if (text.isEmpty) {
      return;
    }

    openNode(kind);
    addText(text);
    closeNode();
  }

  void addText(String text) {
    if (text.isEmpty) {
      return;
    }
    add(Node(value: text));
  }

  void addSublanguage(Result emitter, String? sublanguage) {
    final node = emitter.rootNode;
    node.sublanguage = true;
    node.language = sublanguage;
    add(node);
  }

  void finalize() {}

  String toHtml() {
    return HtmlRenderer(classPrefix: 'hljs-', result: this).value;
  }

  HtmlRenderer walk(HtmlRenderer htmlRenderer) {
    return _walk(htmlRenderer, rootNode);
  }

  HtmlRenderer _walk(HtmlRenderer builder, Node node) {
    if (node.value != null) {
      builder.addText(node.value!);
    } else {
      builder.openNode(node);
      node.children.forEach((element) {
        _walk(builder, element);
      });
      builder.closeNode(node);
    }

    return builder;
  }
}

String _processScope(String scope) {
  if (!scope.contains('.')) {
    return scope;
  }

  return scope
      .split('.')
      .mapIndexed((index, str) => str + ('_' * index))
      .join('.');
}

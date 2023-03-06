import 'node.dart';
import 'mode.dart';

class Result {
  int? relevance;
  List<Node>? nodes;
  String? language;
  Mode? top;
  Result? secondBest;
  String? currentScope;
  List<Node> stack = [];
  Node rootNode;

  Result({
    this.relevance,
    this.language,
    this.top,
    this.secondBest,
    List<Node>? nodes,
  }) : rootNode = Node() {
    this.nodes = nodes ?? [rootNode];
    stack.add(rootNode);
  }

  String _escape(String value) {
    return value
        .replaceAll(RegExp(r'&'), '&amp;')
        .replaceAll(RegExp(r'<'), '&lt;')
        .replaceAll(RegExp(r'>'), '&gt;');
  }

  void add(Node node) {
    stack.last.children.add(node);
  }

  void openNode(String kind) {
    final node = Node(className: kind);
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

  void addSublanguage(Result emitter, String sublanguage) {}

  void finalize() {}

  String toHtml() {
    var str = '';

    void _traverse(Node node) {
      final shouldAddSpan = node.className != null &&
          ((node.value != null && node.value!.isNotEmpty) ||
              (node.children != null && node.children!.isNotEmpty));

      if (shouldAddSpan) {
        var prefix = node.noPrefix ? '' : 'hljs-';
        str += '<span class="${prefix + node.className!}">';
      }

      if (node.value != null) {
        str += _escape(node.value!);
      } else if (node.children != null) {
        node.children!.forEach(_traverse);
      }

      if (shouldAddSpan) {
        str += '</span>';
      }
    }

    nodes?.forEach(_traverse);
    return str;
  }
}

class Node {
  String? className;
  String? value;
  List<Node> children;
  bool noPrefix;
  bool isOpen = false;

  Node({
    this.className,
    this.value,
    this.noPrefix = false,
    List<Node>? children,
  }) : children = children ?? [];
}

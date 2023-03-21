class Node {
  String? className;
  String? value;
  List<Node> children;
  bool noPrefix;

  bool? sublanguage;
  String? language;

  Node({
    this.className,
    this.value,
    this.noPrefix = false,
    List<Node>? children,
  }) : children = children ?? [];

  @override
  String toString() {
    return 'Node('
        'className: ${className == null ? 'null' : "'$className'"},'
        'value: ${value == null ? 'null' : "'$value'"},'
        'children: [${children.map((e) => e.toString()).join(',')}],'
        'noPrefix: $noPrefix,'
        'sublanguage: $sublanguage,'
        'language: ${language == null ? 'null' : "'$language'"},'
        ')';
  }
}

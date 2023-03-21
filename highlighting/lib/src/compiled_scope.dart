class CompiledScope {
  Map<int, String> data = {};
  Map<int, bool> emit = {};
  bool? multi;
  String? wrap;

  CompiledScope({
    Map<int, String> data = const {},
    Map<int, bool> emit = const {},
    this.multi,
    this.wrap,
  });
}

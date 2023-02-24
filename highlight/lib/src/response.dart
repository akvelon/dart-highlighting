import '../highlight.dart';

class Response {
  Mode mode;
  bool isMatchIgnored = false;
  dynamic data;

  Response({
    required this.mode,
  }) {
    mode.data ??= {};
    data = mode.data;
  }

  void ignoreMatch() {
    isMatchIgnored = true;
  }
}

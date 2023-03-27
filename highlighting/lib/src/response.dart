import 'mode.dart';

class Response {
  Mode mode;
  bool isMatchIgnored = false;
  Map<String, dynamic> data = {};

  Response({
    required this.mode,
  }) {
    mode.data ??= {};
    data = mode.data!;
  }

  void ignoreMatch() {
    isMatchIgnored = true;
  }
}

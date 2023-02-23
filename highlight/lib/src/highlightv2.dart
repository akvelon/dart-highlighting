import 'package:collection/collection.dart';
import 'package:highlight/src/utils.dart';

import '../highlight.dart';

class HighlightV2 {
  final _languages = {}.cast<String, Mode>();
  final _aliases = {}.cast<String, String>();
  Mode? _languageMode;
}

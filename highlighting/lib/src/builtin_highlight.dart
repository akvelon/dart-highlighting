import '../languages/all.dart';
import 'highlight.dart';

/// [HighlightCore] that also knows every built-in language.
///
/// Referencing it compiles all of them into the build; use [HighlightCore]
/// from `package:highlighting/highlighting_core.dart` to include only the
/// languages you register.
class Highlight extends HighlightCore {
  Highlight() : super(fallbackLanguages: builtinLanguages);
}

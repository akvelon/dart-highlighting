import '../mode.dart';
import 'reg_exp.dart';

void beforeMatchExt(Mode mode, [Mode? parent]) {
  if (mode.beforeMatch == null) {
    return;
  }

  if (mode.starts != null) {
    throw Exception('beforeMatch cannot be used with starts');
  }

  var originalMode = Mode.inherit(mode);
  mode = Mode();

  mode.keywords = originalMode.keywords;
  mode.begin = concat(
    [
      originalMode.beforeMatch,
      lookahead(originalMode.begin),
    ],
  );
  mode.starts = Mode(
    relevance: 0,
    contains: [
      Mode.inherit(
        originalMode,
        Mode(endsParent: true),
      ),
    ],
  );

  mode.relevance = 0;
  originalMode.beforeMatch = null;
}

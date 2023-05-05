# highlighting

Code syntax highlighting library for over 190 languages.

If you are looking for the Flutter widget, see
[flutter_highlighting](https://pub.dev/packages/flutter_highlighting).

This package is a port of [HighlightJS](https://highlightjs.org) project into Dart.
It is periodically updated from the original JavaScript version with an automated script.

## Usage

```dart
import 'package:highlighting/highlighting.dart';
import 'package:highlighting/languages/dart.dart';

void main() {
  final source = '''main() {
  print('Highlighting by Akvelon.');
}
''';

  highlight.registerLanguage(dart);

  final highlighted = highlight.parse(source, languageId: dart.id);
  final html = highlighted.toHtml();
  print(html); // HTML string
}
```

## Versions and Migration

The package uses its own version numbering in addition to that of HighlightJS.
For example, the version `0.9.0+11.8.0` means that it is:

- Version `0.9.0` of the Dart package itself, and it contains breaking changes
  over the version `0.8.x`.
- Ported from HighlightJS version `11.8.0`.

This allows the `pub` tool to automatically guard you against breaking changes.

Migration guides:

- [Migrating from highlight to v0.9](https://github.com/akvelon/dart-highlighting/blob/main/doc/migrating.md).

## Maintainer's Guide

- [Maintainer's Guide](https://github.com/akvelon/dart-highlighting/blob/main/doc/maintainers_guide.md)
  on how the automatic porting works.
- [How we Ported HighlightJS to Dart](https://medium.com/akvelon/how-we-ported-highlightjs-to-dart-82b107415fbd) on Medium.

## References

- [All available languages](https://github.com/akvelon/dart-highlighting/tree/main/highlighting/lib/languages).

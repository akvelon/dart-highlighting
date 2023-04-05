# Migration Guide

## Migrating from 'highlight' package

The [highlight](https://pub.dev/packages/highlight) package was the first port of
[highlight.js](https://highlightjs.org) into Dart.
It was abandoned by its authors in 2021, so we had to fork it and continue development.

To migrate from `highlight` and `flutter_highlight`:

1. Change the packages you use to `highlighting` and/or `flutter_highlighting`.
2. Import `highlighting/highlighting.dart` wherever you used either
   `highlight.dart` or `highlight_core.dart`.
3. If you were using the bulk `highlight.dart` that imported all languages,
   additionally import `highlighting/languages/all.dart`
   because the new `highlighting.dart` is the equivalent of the old `highlight_core.dart`.

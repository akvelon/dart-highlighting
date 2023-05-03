# Migration Guide

## Migrating from 'highlight' package to v0.9.x

The [highlight](https://pub.dev/packages/highlight) package was the first port of
[highlight.js](https://highlightjs.org) into Dart.
It was abandoned by its authors in 2021, so we had to fork it and continue the development.

To migrate from `highlight` and `flutter_highlight`:

1. Change the packages you use to `highlighting` and/or `flutter_highlighting`.
2. Import `highlighting/highlighting.dart` wherever you used either
   `highlight.dart` or `highlight_core.dart`.
3. If you were using the bulk `highlight.dart` that imported all languages,
   additionally import `highlighting/languages/all.dart`
   because the new `highlighting.dart` is the equivalent of the old `highlight_core.dart`.
4. Use the `Language` class instead of `Mode`.
5. Delete the first argument to `registerLanguage()` or change it
   to an optional `name` named argument.
6. Manually register the languages you need if you were relying on all languages
   being automatically registered.
7. Use `highlight.parse()` instead of `highlight.highlight()`.

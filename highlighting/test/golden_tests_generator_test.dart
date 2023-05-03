import 'dart:io';

import 'package:collection/collection.dart';
import 'package:highlighting/highlighting.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

const _clonePath = 'test/highlight.js';
const _errorsDirPath = 'test/errors';
const _extension = '.txt';

void main() async {
  final errorsDir = Directory(_errorsDirPath);

  if (errorsDir.existsSync()) {
    errorsDir.deleteSync(recursive: true);
  }

  final highlightJsTests = Directory(p.join(_clonePath, 'test', 'markup'));
  if (!highlightJsTests.existsSync()) {
    throw AssertionError('Test directory does not exist');
  }

  final directories = highlightJsTests
      .listSync()
      .whereType<Directory>()
      .sortedBy<String>((e) => e.path);

  group('Markup golden tests.', () {
    for (final directory in directories) {
      final language = p.basename(directory.path);
      group(language, () {
        final fileList = directory.listSync()..sortBy<String>((e) => e.path);

        for (final file in fileList) {
          final path = file.path;
          // TODO: Delete 'expected' when this land: https://github.com/highlightjs/highlight.js/pull/3738
          if (file is! File ||
              path.endsWith('.expect$_extension') ||
              p.basename(path).startsWith('prompt-with-tilde') ||
              !path.endsWith(_extension)) {
            continue;
          }

          final testName = p.basenameWithoutExtension(path);

          final expectedPath = p.join(
            directory.path,
            '$testName.expect$_extension',
          );
          final expected = File(expectedPath).readAsStringSync();
          final input = file.readAsStringSync();

          test(testName, () {
            final highlighted = highlight.parse(
              input,
              languageId: language,
            );

            final actual = highlighted.toHtml();

            if (actual == expected) {
              return;
            }

            final actualFileName = '$testName.actual$_extension';
            final actualFile = File(
              p.join(_errorsDirPath, language, actualFileName),
            );
            actualFile.createSync(recursive: true);
            actualFile.writeAsStringSync(actual);

            final expectedFileCopy = File(
              p.join(_errorsDirPath, language, p.basename(expectedPath)),
            );
            expectedFileCopy.writeAsStringSync(expected);

            final inputFileCopy = File(
              p.join(_errorsDirPath, language, p.basename(file.path)),
            );
            inputFileCopy.writeAsStringSync(input);

            expect(actual, expected);
          });
        }
      });
    }
  });
}

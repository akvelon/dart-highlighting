import 'dart:io';

import 'package:collection/collection.dart';
import 'package:highlight/highlight_core.dart';
import 'package:test/test.dart';

const highlightJsDirPath = './highlight.js';
const errorsDirPath = './test/errors';

void main() async {
  if (!Directory(highlightJsDirPath).existsSync()) {
    await Process.run(
      'bash',
      ['-c', 'git clone https://github.com/highlightjs/highlight.js.git'],
      workingDirectory: './',
      runInShell: true,
    );
  }
  final errorsDir = Directory(errorsDirPath);

  if (errorsDir.existsSync()) {
    errorsDir.deleteSync(recursive: true);
  }

  final highlightJsTests = Directory('../../highlight.js/test/markup');
  if (!highlightJsTests.existsSync()) {
    throw AssertionError('Test directory does not exist');
  }
  final directories =
      highlightJsTests.listSync().sortedBy<String>((e) => e.path);

  for (final directory in directories.whereType<Directory>()) {
    final language = directory.path.replaceAll(RegExp('.*/'), '');
    group('Golden tests for ' + language, () {
      final fileList = directory.listSync()..sortBy<String>((e) => e.path);

      for (int i = 0; i < fileList.length;) {
        if (!fileList[i].path.endsWith('.expect.txt')) {
          i++;
          continue;
        }
        if (i + 1 >= fileList.length) {
          break;
        }

        if (fileList[i + 1].path !=
            fileList[i].path.replaceAll('.expect.', '.')) {
          i++;
          continue;
        }

        final expected = File(fileList[i].path).readAsStringSync();
        final code = File(fileList[i + 1].path).readAsStringSync();

        test(fileList[i].path, () {
          final highlighted = HighlightV2().parse(code, language: language);
          final actual = highlighted.toHtml();

          if (actual == expected) {
            return;
          } else {
            final actualFileName =
                fileList[i].path.replaceAll(RegExp('.*/'), '');
            final expectFileName =
                fileList[i + 1].path.replaceAll(RegExp('.*/'), '');
            final actualFile = File('$errorsDirPath/$language/$actualFileName')
              ..createSync(recursive: true);
            final expectFile = File('$errorsDirPath/$language/$expectFileName')
              ..createSync(recursive: true);
            actualFile.writeAsString(actual);
            expectFile.writeAsString(expected);
            expect(actual, expected);
          }
        });

        i += 2;
      }
    });
  }
}

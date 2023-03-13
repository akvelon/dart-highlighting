import 'package:flutter/material.dart';
import 'package:flutter_highlight_gallery/custom_controller.dart';
import 'package:flutter_highlight_gallery/example_map.dart';
import 'package:highlight/all_languages.dart';
import 'package:highlight/highlight_core.dart';
import 'package:highlight/highlight_themes.dart';
import 'package:highlight/languages/php.dart';

import 'dropdown_selector.dart';

const _defaultLanguage = 'python';
const _defaultTheme = 'monokai-sublime';

const toggleButtonColor = Color.fromARGB(124, 255, 255, 255);
const toggleButtonActiveColor = Colors.white;

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _language = _defaultLanguage;
  String _theme = _defaultTheme;

  bool _showNumbers = true;
  bool _showErrors = true;
  bool _showFoldingHandles = true;

  final _codeFieldFocusNode = FocusNode();
  late final _codeController = CustomController(
    language: builtinLanguages[_language]!,
    theme: themeMap[_theme]!,
    text: exampleMap[_language],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: themeMap[_theme]?['root']?.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Highlight package by Akvelon',
          style: TextStyle(fontFamily: 'VeraMono'),
        ),
        actions: [
          //
          DropdownSelector<String>(
            onChanged: _setLanguage,
            icon: Icons.code,
            value: _language,
            values: allLanguages.keys,
          ),
          const SizedBox(width: 20),

          DropdownSelector(
            onChanged: _setTheme,
            icon: Icons.color_lens,
            value: _theme,
            values: themeMap.keys,
          ),

          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Code',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: themeMap[_theme]?['root']?.backgroundColor,
              ),
              child: TextField(
                focusNode: _codeFieldFocusNode,
                controller: _codeController,
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    _codeFieldFocusNode.dispose();

    super.dispose();
  }

  void _setLanguage(String value) {
    setState(() {
      _language = value;
      _codeController.language = builtinLanguages[value]!;
      _codeController.text = exampleMap[value] ?? '';

      _codeFieldFocusNode.requestFocus();
    });
  }

  void _setTheme(String value) {
    setState(() {
      _theme = value;
      _codeFieldFocusNode.requestFocus();
    });
  }
}

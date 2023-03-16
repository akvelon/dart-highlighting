import 'package:flutter/material.dart';
import 'package:flutter_highlight_gallery/custom_controller.dart';
import 'package:flutter_highlight_gallery/example_map.dart';
import 'package:highlight/all_languages.dart';
import 'package:highlight/highlight_core.dart';
import 'package:highlight/highlight_themes.dart';

import 'dropdown_selector.dart';

const _defaultLanguage = 'xml';
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

  final _codeFieldFocusNode = FocusNode();
  late final controller = TextEditingController(
    text: exampleMap[_language],
  );
  late final highlightController = CustomController(
    language: builtinLanguages[_language]!,
    theme: monokaiSublimeTheme,
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
          IconButton(
            onPressed: _onHighlight,
            icon: Icon(
              Icons.format_color_text_rounded,
            ),
          ),
          const SizedBox(width: 20),

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
              height: 300,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: _codeFieldFocusNode,
                controller: controller,
                maxLines: null,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: themeMap[_theme]?['root']?.backgroundColor,
                border: Border.all(color: Colors.black),
              ),
              child: RichText(
                text: highlightController.buildTextSpan(context: context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _codeFieldFocusNode.dispose();

    super.dispose();
  }

  void _setLanguage(String value) {
    setState(() {
      _language = value;
      controller.text = exampleMap[value] ?? '';

      _codeFieldFocusNode.requestFocus();
    });
  }

  void _setTheme(String value) {
    setState(() {
      _theme = value;
      _codeFieldFocusNode.requestFocus();
    });
  }

  void _onHighlight() {
    setState(() {
      highlightController.language = builtinLanguages[_language]!;
      highlightController.text = controller.text;
    });
  }
}

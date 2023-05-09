import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/theme_map.dart';
import 'package:highlighting/languages/all.dart';
import 'package:highlighting/languages/dart.dart';

import 'example_map.dart';

void main() => runApp(MyApp());

const _title = 'Flutter Highlighting by Akvelon';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String languageId = dart.id;
  String theme = 'a11y-dark';
  TextEditingController controller = TextEditingController();

  Widget _buildMenuContent(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(children: <Widget>[
        Text(text, style: TextStyle(fontSize: 16)),
        Icon(Icons.arrow_drop_down)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.format_color_text)),
          PopupMenuButton<String>(
            child: _buildMenuContent(languageId),
            itemBuilder: (context) {
              return builtinLanguages.keys.map((key) {
                return CheckedPopupMenuItem(
                  value: key,
                  child: Text(key),
                  checked: languageId == key,
                );
              }).toList();
            },
            onSelected: (selected) {
              setState(() {
                languageId = selected;
                controller.value = TextEditingValue.empty;
              });
            },
          ),
          PopupMenuButton<String>(
            child: _buildMenuContent(theme),
            itemBuilder: (context) {
              return themeMap.keys.map((key) {
                return CheckedPopupMenuItem(
                  value: key,
                  child: Text(key),
                  checked: theme == key,
                );
              }).toList();
            },
            onSelected: (selected) {
              setState(() {
                theme = selected;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            TextField(
              controller: controller,
              maxLines: null,
            ),
            const SizedBox(height: 20),
            HighlightView(
              controller.text.isEmpty
                  ? exampleMap[languageId] ?? ''
                  : controller.text,
              languageId: languageId,
              theme: themeMap[theme]!,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(
                fontFamily:
                    'SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

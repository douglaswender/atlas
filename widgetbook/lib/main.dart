import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/addon/atlas_theme_addon.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';

void main() {
  runApp(WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  WidgetbookApp({super.key});

  final theme = MaterialThemeAddon(
    themes: [
      WidgetbookTheme(name: 'Light', data: ThemeData.light()),
      WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
    ],
    initialTheme: WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
  );

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        AtlasThemeAddon(
          theme: 'theme',
        )
      ],
      appBuilder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            body: child,
          ),
        );
      },
      directories: directories,
    );
  }
}

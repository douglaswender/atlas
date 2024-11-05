import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/addon/atlas_theme_addon.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      addons: [
        AtlasThemeAddon(
          theme: 'theme',
        )
      ],
      appBuilder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: AtlasTheme.t().color.background,
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: child,
              ),
            ),
          ),
        );
      },
      directories: directories,
    );
  }
}

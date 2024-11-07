import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/addon/atlas_state_addon.dart';
import 'package:widgetbook_workspace/addon/atlas_theme_addon.dart';
import 'package:widgetbook_workspace/core/atlas_state_controller.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AtlasStateController(),
      builder: (context, child) => Widgetbook.material(
        themeMode:
            AtlasTheme.t().theme == 'dark' ? ThemeMode.dark : ThemeMode.light,
        addons: [
          AtlasThemeAddon(
            theme: 'theme',
          ),
          AtlasStateAddon(context: context)
        ],
        // appBuilder: (context, child) {
        //   return MaterialApp(
        //     locale: DevicePreview.locale(context),
        //     theme: AtlasTheme.t().theme == 'dark'
        //         ? ThemeData.dark()
        //         : ThemeData.light(),
        //     builder: DevicePreview.appBuilder,
        //     home: Scaffold(
        //       body: SingleChildScrollView(
        //         child: Padding(
        //           padding: const EdgeInsets.all(16),
        //           child: child,
        //         ),
        //       ),
        //     ),
        //   );
        // },
        directories: directories,
      ),
    );
  }
}

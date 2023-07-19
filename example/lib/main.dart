import 'package:atlas/atlas.dart';
import 'package:example/atlas_example_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData(
        fontFamily: AtlasTheme.fontFamily,
        primaryColor: AtlasTheme.t().color.primary);
    return MaterialApp(
      title: 'Atlas',
      home: const AtlasExampleView(),
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: AtlasTheme.t().color.primary,
        secondary: AtlasTheme.t().color.primary,
      )),
    );
  }
}

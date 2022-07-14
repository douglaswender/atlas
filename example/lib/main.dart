import 'package:atlas/atlas.dart';
import 'package:example/atlas_example_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const AtlasExampleView(),
      theme: ThemeData(
          fontFamily: AtlasTheme.fontFamily,
          primarySwatch: Colors.deepPurple,
          primaryColor: AtlasTheme.t().color.primary),
    );
  }
}

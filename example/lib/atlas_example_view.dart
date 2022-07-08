import 'package:flutter/material.dart';
import 'package:atlas/atlas.dart';

class AtlasExampleView extends StatelessWidget {
  const AtlasExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        children: const [
          AtlasText.heading1('Atlas Design System'),
        ],
      ),
    );
  }
}

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
          SizedBox(
            height: 8,
          ),
          AtlasButton(text: 'Login'),
          SizedBox(
            height: 8,
          ),
          AtlasButton(
            text: 'Login',
            disabled: true,
          ),
          SizedBox(
            height: 8,
          ),
          AtlasButton(
            text: 'Login',
            busy: true,
          )
        ],
      ),
    );
  }
}

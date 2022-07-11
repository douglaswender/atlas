import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';
import 'package:atlas/atlas.dart';

class AtlasExampleView extends StatefulWidget {
  const AtlasExampleView({Key? key}) : super(key: key);

  @override
  State<AtlasExampleView> createState() => _AtlasExampleViewState();
}

class _AtlasExampleViewState extends State<AtlasExampleView> {
  int _currentBehaviour = 0;

  List<Map<String, dynamic>> get _behaviours {
    return [
      {
        "type": Behaviour.regular,
        "name": "Regular",
      },
      {
        "type": Behaviour.error,
        "name": "Error",
      },
      {
        "type": Behaviour.empty,
        "name": "Empty",
      },
      {
        "type": Behaviour.loading,
        "name": "Loading",
      },
    ];
  }

  void _changeBehaviour() {
    if (_currentBehaviour + 1 == _behaviours.length) {
      _currentBehaviour = 0;
    } else {
      _currentBehaviour++;
    }
    setState(() {});
  }

  Behaviour get _behaviour => _behaviours[_currentBehaviour]["type"];
  String get _behaviourName => _behaviours[_currentBehaviour]["name"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        children: [
          AtlasText.heading1('Atlas Design System'),
          SizedBox(
            height: 8,
          ),
          AtlasButton.factory(
            text: 'text',
            behaviour: _behaviour,
          ),
          AtlasButton.standard(text: 'text'),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _changeBehaviour, label: Text(_behaviourName)),
    );
  }
}
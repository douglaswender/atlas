import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:example/atoms/atom_tab_view.dart';
import 'package:example/molecules/molecule_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:atlas/atlas.dart';

class AtlasExampleView extends StatefulWidget {
  const AtlasExampleView({Key? key}) : super(key: key);

  @override
  State<AtlasExampleView> createState() => _AtlasExampleViewState();
}

class _AtlasExampleViewState extends State<AtlasExampleView>
    with SingleTickerProviderStateMixin {
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
        "type": Behaviour.disabled,
        "name": "Disabled",
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

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'atoms'),
    Tab(text: 'molecules'),
  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AtlasText.heading(
            behaviour: _behaviour, text: 'Atlas Design System'),
        bottom: TabBar(
          controller: tabController,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          AtomTabView(behaviour: _behaviour),
          MoleculeTabView(behaviour: _behaviour)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _changeBehaviour, label: Text(_behaviourName)),
    );
  }
}

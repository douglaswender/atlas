import 'package:example/atoms/atom_tab_view.dart';
import 'package:example/cubit/settings_cubit.dart';
import 'package:example/molecules/molecule_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:atlas/atlas.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AtlasExampleView extends StatefulWidget {
  final List<Tab> tabs;
  AtlasExampleView({
    Key? key,
  })  : tabs = [
          const Tab(text: 'atoms'),
          const Tab(text: 'molecules'),
        ],
        super(key: key);

  @override
  State<AtlasExampleView> createState() => _AtlasExampleViewState();
}

class _AtlasExampleViewState extends State<AtlasExampleView>
    with SingleTickerProviderStateMixin {
  String actualTheme = 'default';

  changeTheme() {
    if (actualTheme == 'default') {
      actualTheme = 'dark';
      AtlasTheme.t(brand: 'dark');
    } else {
      actualTheme = 'default';
      AtlasTheme.t(brand: 'default');
    }
    setState(() {});
  }

  int _currentstate = 0;

  List<Map<String, dynamic>> get _states {
    return [
      {
        "type": AtlasState.regular,
        "name": "Regular",
      },
      {
        "type": AtlasState.error,
        "name": "Error",
      },
      {
        "type": AtlasState.empty,
        "name": "Empty",
      },
      {
        "type": AtlasState.disabled,
        "name": "Disabled",
      },
      {
        "type": AtlasState.loading,
        "name": "Loading",
      },
    ];
  }

  void _changestate() {
    if (_currentstate + 1 == _states.length) {
      _currentstate = 0;
    } else {
      _currentstate++;
    }
    setState(() {});
  }

  AtlasState get _state => _states[_currentstate]["type"];
  String get _stateName => _states[_currentstate]["name"];

  // static const List<Tab> tabs = <Tab>[
  //   Tab(text: 'atoms'),
  //   Tab(text: 'molecules'),
  // ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ThemeCubit>();

    return Scaffold(
      backgroundColor: AtlasTheme.t().color.background,
      appBar: AppBar(
        centerTitle: true,
        title: AtlasText.heading(state: _state, text: 'Atlas'),
        bottom: TabBar(
          controller: tabController,
          tabs: widget.tabs,
        ),
        actions: [
          Text(cubit.theme.theme),
          IconButton(
              onPressed: () {
                cubit.toggleTheme();
                // changeTheme();
                // setState(() {});
              },
              icon: Icon(cubit is ThemeStateDark
                  ? Icons.dark_mode
                  : Icons.light_mode)),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          AtomTabView(behaviour: _state),
          MoleculeTabView(state: _state)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _changestate, label: Text(_stateName)),
    );
  }
}

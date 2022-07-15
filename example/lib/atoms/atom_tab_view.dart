import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';

class AtomTabView extends StatefulWidget {
  final Behaviour behaviour;
  const AtomTabView({
    Key? key,
    required this.behaviour,
  }) : super(key: key);

  @override
  State<AtomTabView> createState() => AtomTabViewState();
}

class AtomTabViewState extends State<AtomTabView> {
  Map<String, Map<String, Widget>> atoms = {};

  List<Widget> _buildComponent(Behaviour behaviour) {
    atoms = {
      'AtlasText': {
        'heading': AtlasText.heading(text: 'text', behaviour: behaviour),
        'body': AtlasText.body(text: 'text', behaviour: behaviour),
      }
    };
    return atoms.entries
        .map((e) => ExpansionTile(
              title: Text(e.key),
              children: [
                ...e.value.entries
                    .map((e) => Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.key),
                              const SizedBox(
                                height: 8,
                              ),
                              e.value
                            ],
                          ),
                        ))
                    .toList()
              ],
            ))
        .toList();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      children: [
        ..._buildComponent(widget.behaviour),
      ],
    );
  }
}

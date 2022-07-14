import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';

class MoleculeTabView extends StatefulWidget {
  final Behaviour behaviour;
  const MoleculeTabView({
    Key? key,
    required this.behaviour,
  }) : super(key: key);

  @override
  State<MoleculeTabView> createState() => MoleculeTabViewState();
}

class MoleculeTabViewState extends State<MoleculeTabView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      children: [
        AtlasButton.standard(
          text: 'standard',
          behaviour: widget.behaviour,
          onPressed: () {
            print("print from standard constructor");
          },
        ),
      ],
    );
  }
}

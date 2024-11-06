import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

class MoleculeTabView extends StatefulWidget {
  final AtlasState state;
  const MoleculeTabView({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  State<MoleculeTabView> createState() => MoleculeTabViewState();
}

class MoleculeTabViewState extends State<MoleculeTabView> {
  Map<String, Map<String, Widget>> molecules = {};

  List<Widget> _buildComponent(AtlasState state) {
    molecules = {
      'AtlasButton': {
        'standard': AtlasButton.standard(
          text: 'standard',
          state: widget.state,
          onPressed: () {
            print("print from standard constructor");
          },
        ),
        'danger': AtlasButton.danger(
          text: 'danger',
          state: widget.state,
          onPressed: () {
            print("print from standard constructor");
          },
        ),
      }
    };
    return molecules.entries
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
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      children: [..._buildComponent(widget.state)],
    );
  }
}

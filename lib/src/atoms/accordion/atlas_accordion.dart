import 'package:atlas/atlas.dart';
import 'package:atlas/core/component/component.dart';
import 'package:flutter/material.dart';

class AtlasAccordion extends StatefulWidget with Component {
  const AtlasAccordion({
    super.key,
    required this.steps,
    this.state = AtlasState.regular,
  });

  final List<AtlasAccordionStep> steps;

  @override
  final AtlasState state;

  @override
  State<AtlasAccordion> createState() => _AtlasAccordionState();
}

class _AtlasAccordionState extends State<AtlasAccordion> with Component {
  late List<AtlasAccordionStep> _steps;
  @override
  late final AtlasState state;

  @override
  void initState() {
    super.initState();
    state = widget.state;
    _steps = widget.steps;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      // expansionCallback: (int index, bool isExpanded) {
      //   // ignore: avoid_print
      //   print('ExpansionPanelList isExpanded: $isExpanded');
      //   setState(() {
      //     _steps[index].isExpanded = !_steps[index].isExpanded;
      //   });
      // },
      itemCount: _steps.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => ExpansionTile(
        title: AtlasText.body(
          text: _steps[index].title,
          state: AtlasState.regular,
        ),
        trailing: const Icon(Icons.add),
        initiallyExpanded: _steps[index].isExpanded,
        backgroundColor: Colors.transparent,
        childrenPadding: const EdgeInsets.all(16),
        shape: const Border(),
        children: [_steps[index].body],
      ),
      // [
      //   ExpansionPanel(
      //     headerBuilder: (BuildContext context, bool isExpanded) {
      //       return ListTile(
      //         title: const Text('Panel 1'),
      //       );
      //     },
      //     body: const ListTile(
      //       title: Text('Panel 1 Body'),
      //     ),
      //     isExpanded: false,
      //   ),
      //   ExpansionPanel(
      //     headerBuilder: (BuildContext context, bool isExpanded) {
      //       return ListTile(
      //         title: const Text('Panel 2'),
      //       );
      //     },
      //     body: const ListTile(
      //       title: Text('Panel 2 Body'),
      //     ),
      //     isExpanded: false,
      //   ),
      // ],
    );
  }
}

class AtlasAccordionStep {
  final String title;
  final Widget body;
  bool isExpanded;

  AtlasAccordionStep({
    required this.title,
    required this.body,
    this.isExpanded = false,
  });
}

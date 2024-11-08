import 'package:atlas/atlas.dart';
import 'package:atlas/core/component/component.dart';
import 'package:flutter/material.dart';

abstract class AtlasAccordionComponent extends StatefulWidget with Component {
  const AtlasAccordionComponent({
    super.key,
    required this.steps,
    this.state = AtlasState.regular,
  });

  final List<AtlasAccordionStep> steps;

  @override
  final AtlasState state;

  @override
  State<AtlasAccordionComponent> createState() =>
      _AtlasAccordionComponentState();
}

class _AtlasAccordionComponentState extends State<AtlasAccordionComponent>
    with Component {
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
      itemCount: _steps.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => ExpansionTile(
        title: AtlasText.subtitle(
          text: _steps[index].title,
          state: AtlasState.regular,
        ),
        onExpansionChanged: (value) {
          setState(() {
            _steps[index].isExpanded = value;
          });
        },
        trailing: RotatingIcon(isExpanded: _steps[index].isExpanded),
        initiallyExpanded: _steps[index].isExpanded,
        backgroundColor: Colors.transparent,
        childrenPadding: const EdgeInsets.all(16),
        shape: const Border(),
        children: [_steps[index].body],
      ),
    );
  }
}

class RotatingIcon extends StatefulWidget {
  final bool isExpanded;

  const RotatingIcon({Key? key, required this.isExpanded}) : super(key: key);

  @override
  RotatingIconState createState() => RotatingIconState();
}

class RotatingIconState extends State<RotatingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 0.5).animate(_controller);
  }

  @override
  void didUpdateWidget(RotatingIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: widget.isExpanded
          ? Icon(
              Icons.remove,
              color: AtlasTheme.t().color.textPrimary,
            )
          : Icon(
              Icons.add,
              color: AtlasTheme.t().color.textPrimary,
            ),
    );
  }
}

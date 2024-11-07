import 'package:atlas/core/state/atlas_state.dart';
import 'package:atlas/core/component/component.dart';
import 'package:flutter/material.dart';

class AtlasCardComponent extends StatelessWidget with Component {
  @override
  final AtlasState state;
  final Widget? child;
  final double? height;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<Color> colors;
  const AtlasCardComponent({
    Key? key,
    required this.state,
    this.child,
    this.height,
    this.begin = Alignment.topRight,
    this.end = Alignment.bottomLeft,
    required this.colors,
  }) : super(key: key);

  @override
  Widget whenRegular(BuildContext context, AtlasState childBehaviour) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: colors,
        )),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return render(state, context);
  }
}

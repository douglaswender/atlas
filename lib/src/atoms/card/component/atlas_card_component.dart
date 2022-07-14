import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/atoms/card/component/atlas_card_style.dart';
import 'package:flutter/material.dart';

class AtlasCardComponent extends StatelessWidget
    with Component<AtlasCardStyle, AtlasCardSharedStyle> {
  final Behaviour behaviour;
  final Widget? child;
  final ComponentStyle<AtlasCardStyle, AtlasCardSharedStyle> styles;
  const AtlasCardComponent({
    Key? key,
    required this.behaviour,
    required this.styles,
    this.child,
  }) : super(key: key);

  @override
  Widget whenRegular(AtlasCardStyle styles, AtlasCardSharedStyle? otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: styles.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: styles.begin ?? Alignment.topRight,
          end: styles.begin ?? Alignment.bottomLeft,
          colors: styles.colors,
        )),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return render(behaviour, context, styles);
  }
}

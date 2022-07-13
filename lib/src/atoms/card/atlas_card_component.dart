import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/style.dart';
import 'package:atlas/src/atoms/card/atlas_card_style.dart';
import 'package:flutter/material.dart';

class AtlasCardComponent extends StatelessWidget
    with Component<AtlasCardStyle, AtlasCardSharedStyle> {
  final Behaviour behaviour;
  final Style<AtlasCardStyle, AtlasCardSharedStyle> styles;
  const AtlasCardComponent({
    Key? key,
    required this.behaviour,
    required this.styles,
  }) : super(key: key);

  @override
  Widget whenRegular(AtlasCardStyle styles, AtlasCardSharedStyle? otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return Card();
  }

  @override
  Widget build(BuildContext context) {
    return render(behaviour, context, styles);
  }
}

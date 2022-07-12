import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/style.dart';
import 'package:atlas/src/atoms/text/atlas_text_style.dart';
import 'package:flutter/material.dart';

class AtlasTextComponent extends StatelessWidget
    with Component<AtlasTextStyle, AtlasTextSharedStyle> {
  final Behaviour behaviour;
  final String text;
  final Style<AtlasTextStyle, AtlasTextSharedStyle> styles;

  const AtlasTextComponent({
    Key? key,
    required this.text,
    required this.styles,
    required this.behaviour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(behaviour, context, styles);
  }

  @override
  Widget whenRegular(AtlasTextStyle styles, AtlasTextSharedStyle? otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return Text(
      text,
      style: TextStyle(
        fontSize: styles.fontSize,
        color: styles.fontColor,
        fontWeight: styles.fontWeight,
      ),
    );
  }
}

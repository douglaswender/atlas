import 'package:atlas/core/state/atlas_state.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/atoms/text/component/atlas_text_style.dart';
import 'package:flutter/material.dart';

class AtlasTextComponent extends StatelessWidget
    with Component<AtlasTextStyle, AtlasTextSharedStyle> {
  @override
  final AtlasState state;
  final String text;
  final ComponentStyle<AtlasTextStyle, AtlasTextSharedStyle> styles;

  const AtlasTextComponent({
    Key? key,
    required this.text,
    required this.styles,
    this.state = AtlasState.regular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(state, context, styles);
  }

  @override
  Widget whenRegular(AtlasTextStyle styles, AtlasTextSharedStyle? otherStyles,
      BuildContext context, AtlasState childBehaviour) {
    return Text(
      text,
      style: styles.textStyle?.copyWith(color: styles.fontColor),
    );
  }

  @override
  Widget whenError(AtlasTextStyle styles, AtlasTextSharedStyle? otherStyles,
      BuildContext context, AtlasState childBehaviour) {
    return Text(
      text,
      style: styles.textStyle?.copyWith(color: styles.fontColor),
    );
  }
}

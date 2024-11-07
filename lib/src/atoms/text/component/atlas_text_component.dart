import 'package:atlas/core/state/atlas_state.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/src/atoms/text/component/atlas_text_style.dart';
import 'package:flutter/material.dart';

class AtlasTextComponent extends StatelessWidget
    with Component<AtlasTextStyle, AtlasTextSharedStyle> {
  @override
  final AtlasState state;
  final String text;

  final TextStyle? style;
  final Color? color;

  const AtlasTextComponent({
    Key? key,
    required this.text,
    this.state = AtlasState.regular,
    this.style,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(state, context);
  }

  @override
  Widget whenRegular(BuildContext context, AtlasState childBehaviour) {
    return Text(
      text,
      style: style?.copyWith(color: color),
    );
  }

  @override
  Widget whenError(BuildContext context, AtlasState childBehaviour) {
    return Text(
      text,
      style: style?.copyWith(color: color),
    );
  }
}

import 'package:atlas/src/shared/styles/atlas_color.dart';
import 'package:atlas/src/shared/styles/atlas_text_style.dart';
import 'package:flutter/material.dart';

@immutable
class AtlasText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AtlasText({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  const AtlasText.heading1(
    this.text, {
    Key? key,
  })  : style = AtlasTextStyle.heading1Style,
        super(key: key);

  const AtlasText.heading2(
    this.text, {
    Key? key,
  })  : style = AtlasTextStyle.heading2Style,
        super(key: key);

  const AtlasText.heading3(
    this.text, {
    Key? key,
  })  : style = AtlasTextStyle.heading3Style,
        super(key: key);

  const AtlasText.headline(
    this.text, {
    Key? key,
  })  : style = AtlasTextStyle.headlineStyle,
        super(key: key);

  const AtlasText.subheadline(
    this.text, {
    Key? key,
  })  : style = AtlasTextStyle.subheadlineStyle,
        super(key: key);

  AtlasText.body(
    this.text, {
    Color color = AtlasColor.secondaryColor,
    Key? key,
  })  : style = AtlasTextStyle.bodyStyle.copyWith(color: color),
        super(key: key);

  const AtlasText.caption(
    this.text, {
    Key? key,
  })  : style = AtlasTextStyle.captionStyle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}

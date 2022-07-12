import 'package:atlas/src/atoms/text/atlas_text_component.dart';
import 'package:atlas/src/atoms/text/atlas_text_style.dart';

class AtlasText extends AtlasTextComponent {
  const AtlasText({
    super.key,
    required super.text,
    required super.styles,
    required super.behaviour,
  });

  factory AtlasText.heading({
    required text,
    required behaviour,
  }) {
    return AtlasText(
        text: text, styles: AtlasTextStyles.headingStyle, behaviour: behaviour);
  }

  factory AtlasText.body({
    required text,
    required behaviour,
  }) {
    return AtlasText(
        text: text, styles: AtlasTextStyles.bodyStyle, behaviour: behaviour);
  }

  // AtlasTextComponent.heading2({
  //   required this.text,
  //   required this.behaviour,
  //   Key? key,
  // })  : styles = AtlasTextStyles.bodyStyle,
  //       super(key: key);

  // AtlasTextComponent.heading3({
  //   required this.text,
  //   required this.behaviour,
  //   Key? key,
  // })  : styles = AtlasTextStyles.bodyStyle,
  //       super(key: key);

  // AtlasTextComponent.headline({
  //   required this.text,
  //   required this.behaviour,
  //   Key? key,
  // })  : styles = AtlasTextStyles.bodyStyle,
  //       super(key: key);

  // AtlasTextComponent.subheadline({
  //   required this.text,
  //   required this.behaviour,
  //   Key? key,
  // })  : styles = AtlasTextStyles.bodyStyle,
  //       super(key: key);

  // AtlasTextComponent.body({
  //   required this.text,
  //   required this.behaviour,
  //   Key? key,
  // })  : styles = AtlasTextStyles.bodyStyle,
  //       super(key: key);

  // AtlasTextComponent.caption({
  //   required this.text,
  //   required this.behaviour,
  //   Key? key,
  // })  : styles = AtlasTextStyles.bodyStyle,
  //       super(key: key);
}

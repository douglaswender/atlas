import 'package:atlas/src/atoms/text/atlas_text_component.dart';
import 'package:atlas/src/atoms/text/atlas_text_style.dart';

class AtlasText extends AtlasTextComponent {
  const AtlasText({
    super.key,
    required super.text,
    required super.styles,
    required super.behaviour,
  });

  AtlasText.heading({
    super.key,
    required super.text,
    required super.behaviour,
  }) : super(styles: AtlasTextStyles.headingStyle);

  AtlasText.body({
    super.key,
    required super.text,
    required super.behaviour,
  }) : super(styles: AtlasTextStyles.bodyStyle);
}

import 'package:atlas/src/atoms/text/atlas_text_styles.dart';
import 'package:atlas/src/atoms/text/component/atlas_text_component.dart';

class AtlasText extends AtlasTextComponent {
  const AtlasText({
    super.key,
    required super.text,
    required super.styles,
    super.state,
  });

  AtlasText.heading({
    super.key,
    required super.text,
    super.state,
  }) : super(styles: AtlasTextStyles.headingStyle);

  AtlasText.body({
    super.key,
    required super.text,
    super.state,
  }) : super(styles: AtlasTextStyles.bodyStyle);
}

import 'package:atlas/src/atoms/button/atlas_button_styles.dart';

import 'component/atlas_button_component.dart';

class AtlasButton extends AtlasButtonComponent {
  const AtlasButton({
    super.key,
    required super.behaviour,
    required super.text,
    required super.onPressed,
    required super.styles,
  });

  AtlasButton.standard({
    super.key,
    required super.text,
    required super.behaviour,
    onPressed,
  }) : super(styles: AtlasButtonStyles.standard());
}

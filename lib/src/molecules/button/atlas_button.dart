import 'package:atlas/atlas.dart';

import 'component/atlas_button_component.dart';

class AtlasButton extends AtlasButtonComponent {
  AtlasButton.standard({
    super.key,
    required super.text,
    required super.state,
    super.onPressed,
  }) : super(
          color: AtlasTheme.t().color.primary,
        );

  AtlasButton.danger({
    super.key,
    required super.text,
    super.state,
    super.onPressed,
  }) : super(color: AtlasTheme.t().color.error);
}

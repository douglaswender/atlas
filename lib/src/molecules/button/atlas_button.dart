import 'package:atlas/atlas.dart';

import 'component/atlas_button_component.dart';

class AtlasButton extends AtlasButtonComponent {
  const AtlasButton({
    super.key,
    required super.state,
    required super.text,
    required super.onPressed,
  });

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
    required super.state,
    super.onPressed,
  }) : super(color: AtlasTheme.t().color.danger);
}

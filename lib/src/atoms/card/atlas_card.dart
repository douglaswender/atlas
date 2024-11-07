import 'package:atlas/atlas.dart';
import 'package:atlas/src/atoms/card/component/atlas_card_component.dart';

class AtlasCard extends AtlasCardComponent {
  AtlasCard.standard({
    super.key,
    required super.state,
    super.child,
  }) : super(
          colors: AtlasTheme.t().color.grandient,
          height: AtlasTheme.sizes.s32,
        );
}

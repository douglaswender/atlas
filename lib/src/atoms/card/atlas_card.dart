import 'package:atlas/src/atoms/card/atlas_card_styles.dart';
import 'package:atlas/src/atoms/card/component/atlas_card_component.dart';

class AtlasCard extends AtlasCardComponent {
  const AtlasCard({super.key, required super.behaviour, required super.styles});

  AtlasCard.standard({
    super.key,
    required super.behaviour,
    super.child,
  }) : super(styles: AtlasCardStyles.standard);
}

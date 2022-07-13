import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/tokens/atlas_sizes.dart';
import 'package:atlas/src/tokens/atlas_theme.dart';

import 'component/atlas_card_style.dart';

class AtlasCardStyles {
  static get standard => ComponentStyle<AtlasCardStyle, AtlasCardSharedStyle>(
        regular: AtlasCardStyle(
          colors: AtlasTheme.t().color.grandient,
          height: AtlasSize.s32,
        ),
      );
}

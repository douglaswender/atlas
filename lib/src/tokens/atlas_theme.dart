import 'package:atlas/src/tokens/atlas_color.dart';
import 'package:atlas/src/tokens/atlas_icons.dart';
import 'package:atlas/src/tokens/atlas_sizes.dart';

abstract class AtlasDefaultTheme {
  AtlasColor get color;

  String get theme;
  String get themeIndex;
}

class DefaultTheme implements AtlasDefaultTheme {
  @override
  AtlasColor get color => DefaultColors();

  @override
  String get theme => 'default';

  @override
  String get themeIndex => '0';
}

class AtlasTheme {
  static AtlasDefaultTheme? _instance;

  static AtlasSizes sizes = AtlasSizes();

  static AtlasIcons icons = AtlasIcons();

  static String fontFamily = 'Poppins';

  static AtlasDefaultTheme t({String? brand}) {
    if (_instance == null && brand == null) {
      _instance = DefaultTheme();
    }

    return _instance!;
  }
}

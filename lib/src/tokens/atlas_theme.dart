import 'package:atlas/src/tokens/atlas_color.dart';
import 'package:atlas/src/tokens/atlas_icons.dart';
import 'package:atlas/src/tokens/atlas_sizes.dart';

abstract class AtlasDefaultTheme {
  AtlasColor get color;

  String get theme;
  String get themeIndex;
}

class DefaultTheme extends AtlasDefaultTheme {
  final _colors = DefaultColors();
  @override
  AtlasColor get color => _colors;

  @override
  String get theme => 'default';

  @override
  String get themeIndex => '0';
}

class DarkTheme extends AtlasDefaultTheme {
  final _colors = DarkColors();
  @override
  AtlasColor get color => _colors;

  @override
  String get theme => 'dark';

  @override
  String get themeIndex => '1';
}

class AtlasTheme {
  static AtlasDefaultTheme? _instance;

  static AtlasSizes sizes = AtlasSizes();

  static AtlasIcons icons = AtlasIcons();

  static String fontFamily = 'Poppins';

  static AtlasDefaultTheme t({String? brand}) {
    _instance ??= DefaultTheme();
    if (brand == null) {
      return _instance!;
    }
    switch (brand) {
      case 'default':
        _instance = DefaultTheme();
        break;
      case 'dark':
        _instance = DarkTheme();
        break;
    }

    return _instance!;
  }
}

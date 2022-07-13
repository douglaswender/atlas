import 'package:atlas/src/tokens/atlas_color.dart';

abstract class AtlasDefaultTheme {
  AtlasColor get color;

  String get theme;
  String get themeIndex;
}

class CrecheTheme implements AtlasDefaultTheme {
  @override
  AtlasColor get color => CrecheColors();

  @override
  String get theme => 'creche';

  @override
  String get themeIndex => '0';
}

class AtlasTheme {
  static AtlasDefaultTheme? _instance;

  static AtlasDefaultTheme t({String? brand}) {
    if (_instance == null && brand == null) {
      _instance = CrecheTheme();
    }

    return _instance!;
  }
}

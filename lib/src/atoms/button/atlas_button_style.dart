import 'package:atlas/core/component/style.dart';
import 'package:flutter/material.dart';

class AtlasButtonStyle {
  final TextStyle textStyle;
  AtlasButtonStyle({
    required this.textStyle,
  });
}

class AtlasButtonSharedStyle {
  final BoxDecoration boxDecoration;

  AtlasButtonSharedStyle({required this.boxDecoration});
}

class AtlasButtonStyles {
  static Style<AtlasButtonStyle, AtlasButtonSharedStyle> standard() =>
      Style<AtlasButtonStyle, AtlasButtonSharedStyle>(
          regular: AtlasButtonStyle(
            textStyle: const TextStyle(fontSize: 16),
          ),
          loading: AtlasButtonStyle(
            textStyle: const TextStyle(fontSize: 22),
          ),
          shared: AtlasButtonSharedStyle(
              boxDecoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8))));
}

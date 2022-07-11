import 'package:atlas/core/behaviour/component/style.dart';
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
  static Style<AtlasButtonStyle, AtlasButtonSharedStyle> regular() =>
      Style<AtlasButtonStyle, AtlasButtonSharedStyle>(
          regular: AtlasButtonStyle(
            textStyle: const TextStyle(fontSize: 16),
          ),
          shared: AtlasButtonSharedStyle(
              boxDecoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8))));
}

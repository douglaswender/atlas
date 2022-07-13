import 'package:atlas/core/component/style.dart';
import 'package:atlas/src/atoms/text/atlas_text_style.dart';
import 'package:atlas/src/tokens/atlas_theme.dart';
import 'package:flutter/material.dart';

class AtlasButtonStyle {
  final Color? backgroundColor;
  final BoxDecoration boxDecoration;

  AtlasButtonStyle({this.backgroundColor, required this.boxDecoration});
}

class AtlasButtonSharedStyle {
  final Style<AtlasTextStyle, AtlasTextSharedStyle> textStyle;

  AtlasButtonSharedStyle({required this.textStyle});
}

class AtlasButtonStyles {
  static Style<AtlasButtonStyle, AtlasButtonSharedStyle> standard() =>
      Style<AtlasButtonStyle, AtlasButtonSharedStyle>(
        regular: AtlasButtonStyle(
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        loading: AtlasButtonStyle(
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        disabled: AtlasButtonStyle(
          backgroundColor: AtlasTheme.t().color.danger,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        error: AtlasButtonStyle(
          backgroundColor: AtlasTheme.t().color.warning,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        shared: AtlasButtonSharedStyle(
          textStyle: AtlasTextStyles.bodyStyle,
        ),
      );
}

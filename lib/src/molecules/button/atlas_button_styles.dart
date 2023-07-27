import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/atoms/text/atlas_text_styles.dart';
import 'package:atlas/src/molecules/button/component/atlas_button_style.dart';
import 'package:atlas/src/tokens/atlas_theme.dart';
import 'package:flutter/material.dart';

class AtlasButtonStyles {
  static ComponentStyle<AtlasButtonStyle, AtlasButtonSharedStyle> standard() =>
      ComponentStyle<AtlasButtonStyle, AtlasButtonSharedStyle>(
        regular: AtlasButtonStyle(
          backgroundColor: AtlasTheme.t().color.primary,
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
          backgroundColor: AtlasTheme.t().color.grey1,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        error: AtlasButtonStyle(
          backgroundColor: AtlasTheme.t().color.danger,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        shared: AtlasButtonSharedStyle(
          textStyle: AtlasTextStyles.bodyStyle,
        ),
      );

  static ComponentStyle<AtlasButtonStyle, AtlasButtonSharedStyle> danger() =>
      ComponentStyle<AtlasButtonStyle, AtlasButtonSharedStyle>(
        regular: AtlasButtonStyle(
          backgroundColor: AtlasTheme.t().color.danger,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        loading: AtlasButtonStyle(
          backgroundColor: AtlasTheme.t().color.danger,
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
          backgroundColor: AtlasTheme.t().color.danger,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        shared: AtlasButtonSharedStyle(
          textStyle: AtlasTextStyles.bodyStyle,
        ),
      );
}

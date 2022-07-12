import 'package:atlas/core/component/style.dart';
import 'package:atlas/src/atoms/text/atlas_text_style.dart';
import 'package:atlas/src/shared/styles/atlas_color.dart';
import 'package:flutter/material.dart';

class AtlasButtonStyle {
  final TextStyle textStyle;
  final Color? backgroundColor;
  final BoxDecoration boxDecoration;

  AtlasButtonStyle(
      {required this.textStyle,
      this.backgroundColor,
      required this.boxDecoration});
}

class AtlasButtonSharedStyle {
  final Style<AtlasTextStyle, AtlasTextSharedStyle>? textStyle;

  AtlasButtonSharedStyle({this.textStyle});
}

class AtlasButtonStyles {
  static Style<AtlasButtonStyle, AtlasButtonSharedStyle> standard() =>
      Style<AtlasButtonStyle, AtlasButtonSharedStyle>(
        regular: AtlasButtonStyle(
          textStyle: const TextStyle(fontSize: 16),
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        loading: AtlasButtonStyle(
          textStyle: const TextStyle(fontSize: 22),
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        disabled: AtlasButtonStyle(
          textStyle: const TextStyle(fontSize: 14, color: Colors.black),
          backgroundColor: AtlasColor.thirdColor,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        shared: AtlasButtonSharedStyle(
          textStyle: AtlasTextStyles.bodyStyle,
        ),
      );
}

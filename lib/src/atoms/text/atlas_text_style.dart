import 'package:atlas/core/component/style.dart';
import 'package:flutter/material.dart';

class AtlasTextStyle {
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;

  AtlasTextStyle({
    this.fontSize,
    this.fontColor,
    this.fontWeight,
  });
}

class AtlasTextSharedStyle {}

class AtlasTextStyles {
  static Style<AtlasTextStyle, AtlasTextSharedStyle> get bodyStyle =>
      Style<AtlasTextStyle, AtlasTextSharedStyle>(
        regular: AtlasTextStyle(
          fontColor: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      );

  static Style<AtlasTextStyle, AtlasTextSharedStyle> get headingStyle =>
      Style<AtlasTextStyle, AtlasTextSharedStyle>(
        regular: AtlasTextStyle(
          fontColor: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      );
}

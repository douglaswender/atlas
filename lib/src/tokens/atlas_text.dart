import 'package:atlas/src/tokens/tokens.dart';
import 'package:flutter/material.dart';

class DefaultTextStyles {
  //FONT WEITH
  static const medium = FontWeight.w500;
  static const regular = FontWeight.w400;
  static const bold = FontWeight.w700;
  //FONT FAMILY
  static const poppins = 'Poppins';

  //TEXT STYLES
  TextStyle get headlineBold => TextStyle(
        fontFamily: poppins,
        fontWeight: bold,
        fontSize: AtlasTheme.sizes.s32,
      );

  TextStyle get headlineRegular => TextStyle(
        fontFamily: poppins,
        fontWeight: regular,
        fontSize: AtlasTheme.sizes.s32,
      );

  TextStyle get headlineMedium => TextStyle(
        fontFamily: poppins,
        fontWeight: medium,
        fontSize: AtlasTheme.sizes.s32,
      );

  TextStyle get bodyBold => TextStyle(
        fontFamily: poppins,
        fontWeight: bold,
        fontSize: AtlasTheme.sizes.s16,
      );

  TextStyle get bodyRegular => TextStyle(
        fontFamily: poppins,
        fontWeight: regular,
        fontSize: AtlasTheme.sizes.s16,
      );

  TextStyle get bodyMedium => TextStyle(
        fontFamily: poppins,
        fontWeight: medium,
        fontSize: AtlasTheme.sizes.s16,
      );

  TextStyle get captionBold => TextStyle(
        fontFamily: poppins,
        fontWeight: bold,
        fontSize: AtlasTheme.sizes.s12,
      );

  TextStyle get captionRegular => TextStyle(
        fontFamily: poppins,
        fontWeight: regular,
        fontSize: AtlasTheme.sizes.s12,
      );

  TextStyle get captionMedium => TextStyle(
        fontFamily: poppins,
        fontWeight: medium,
        fontSize: AtlasTheme.sizes.s12,
      );
}

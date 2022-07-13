import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/atoms/text/component/atlas_text_style.dart';
import 'package:flutter/material.dart';

class AtlasButtonStyle {
  final Color? backgroundColor;
  final BoxDecoration boxDecoration;

  AtlasButtonStyle({this.backgroundColor, required this.boxDecoration});
}

class AtlasButtonSharedStyle {
  final ComponentStyle<AtlasTextStyle, AtlasTextSharedStyle> textStyle;

  AtlasButtonSharedStyle({required this.textStyle});
}

import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/atoms/text/component/atlas_text_style.dart';
import 'package:atlas/src/tokens/atlas_text.dart';
import 'package:flutter/material.dart';

class AtlasTextStyles {
  static ComponentStyle<AtlasTextStyle, AtlasTextSharedStyle> get bodyStyle =>
      ComponentStyle<AtlasTextStyle, AtlasTextSharedStyle>(
        regular: AtlasTextStyle(
          fontColor: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          textStyle: DefaultTextStyles().bodyRegular,
        ),
        error: AtlasTextStyle(
            fontColor: Colors.red, fontSize: 16, fontWeight: FontWeight.w400),
      );

  static ComponentStyle<AtlasTextStyle, AtlasTextSharedStyle>
      get headingStyle => ComponentStyle<AtlasTextStyle, AtlasTextSharedStyle>(
            regular: AtlasTextStyle(
              fontColor: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              textStyle: DefaultTextStyles().headlineBold,
            ),
          );
}

import 'package:atlas/atlas.dart';
import 'package:atlas/src/atoms/text/component/atlas_text_component.dart';
import 'package:atlas/src/tokens/atlas_text.dart';
import 'package:flutter/material.dart';

class AtlasText extends AtlasTextComponent {
  AtlasText.heading({
    super.key,
    required super.text,
    super.state,
  }) : super(
          color: AtlasTheme.t().color.textPrimary,
          style: DefaultTextStyles().headlineBold.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
        );

  AtlasText.body({
    super.key,
    required super.text,
    super.state,
  }) : super(
          color: AtlasTheme.t().color.textPrimary,
          style: DefaultTextStyles().bodyRegular.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
        );

  AtlasText.button({
    super.key,
    required super.text,
    super.state,
  }) : super(
          color: AtlasTheme.t().color.white,
          style: DefaultTextStyles().bodyRegular.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
        );
}

import 'package:flutter/material.dart';

abstract class AtlasColor {
  //SYSTEM DEFAULT COLORS
  Color get primary;
  Color get secondary;
  Color get warning;
  Color get danger;
  List<Color> get grandient;

  //SYSTEM ACESSIBLE COLORS
  Color get black;
  Color get white;
  Color get background;
  Color get grey1;
  Color get grey2;

  // static const standard = Color(0xff9933ff);
  // static const secondaryColor = Color(0xff34c759);
  // static const dangerColor = Color(0xffff3b30);
  // static const warningColor = Color(0xffff9500);
  // static const gradientColor = [
  //   Color(0xffc13fef),
  //   Color(0xff8439ff),
  //   Color(0xff4845da)
  // ];
}

class DefaultColors extends AtlasColor {
  @override
  Color get danger => const Color(0xffff3b30);

  @override
  List<Color> get grandient =>
      const [Color(0xffc13fef), Color(0xff8439ff), Color(0xff4845da)];

  @override
  Color get primary => const Color(0xff9933ff);

  @override
  Color get secondary => const Color(0xff34c759);

  @override
  Color get warning => const Color(0xffff9500);

  @override
  Color get background => const Color(0xfff1f1f1);

  @override
  Color get black => const Color(0xff000000);

  @override
  Color get grey1 => const Color(0xff8E8E93);

  @override
  Color get grey2 => const Color(0xffE5E5EA);

  @override
  Color get white => const Color(0xffffffff);
}

class DarkColors extends AtlasColor {
  @override
  Color get danger => const Color(0xffff3b30);

  @override
  List<Color> get grandient =>
      const [Color(0xffc13fef), Color(0xff8439ff), Color(0xff4845da)];

  @override
  Color get primary => const Color(0xff000000);

  @override
  Color get secondary => const Color(0xff34c759);

  @override
  Color get warning => const Color(0xff34c759);

  @override
  Color get background => const Color(0xff34c759);

  @override
  Color get black => const Color(0xff34c759);

  @override
  Color get grey1 => const Color(0xff34c759);

  @override
  Color get grey2 => const Color(0xff34c759);

  @override
  Color get white => const Color(0xffffffff);
}

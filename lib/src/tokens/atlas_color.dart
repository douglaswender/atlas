import 'package:flutter/material.dart';

abstract class AtlasColor {
  Color get primary;
  Color get secondary;
  Color get warning;
  Color get danger;
  List<Color> get grandient;
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

class CrecheColors implements AtlasColor {
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
}

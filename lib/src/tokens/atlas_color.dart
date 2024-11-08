import 'package:flutter/material.dart';

abstract class AtlasColor {
  //SYSTEM DEFAULT COLORS
  Color get primary;
  Color get backgroundBase;
  Color get backgroundSurface;
  Color get backgroundShading;
  Color get backgroundFrosted;
  Color get constrastLow;
  Color get constrastMedium;
  Color get constrastHigh;
  Color get success;
  Color get successSoft;
  Color get warning;
  Color get warningSoft;
  Color get error;
  Color get errorSoft;
  Color get info;
  Color get infoSoft;
  Color get hover;
  Color get active;
  Color get focus;
  Color get disabled;

  //SYSTEM ACESSIBLE COLORS
  List<Color> get grandient;
  Color get textPrimary;
  Color get black;
  Color get white;
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
  List<Color> get grandient =>
      const [Color(0xffc13fef), Color(0xff8439ff), Color(0xff4845da)];

  @override
  Color get primary => const Color(0xff010205);

  @override
  Color get backgroundBase => const Color(0xffffffff);

  @override
  Color get black => const Color(0xff000000);

  @override
  Color get textPrimary => const Color(0xff000000);

  @override
  Color get grey1 => const Color(0xff8E8E93);

  @override
  Color get grey2 => const Color(0xffE5E5EA);

  @override
  Color get white => const Color(0xffffffff);

  @override
  Color get active => const Color(0xffeaeaea);

  @override
  Color get backgroundFrosted => const Color(0xFFf1f1f2);

  @override
  Color get backgroundShading => const Color(0xff555557);

  @override
  Color get backgroundSurface => const Color(0xffeeeff2);

  @override
  Color get constrastHigh => const Color(0xff535457);

  @override
  Color get constrastLow => const Color(0xFFd8d8db);

  @override
  Color get constrastMedium => const Color(0xff6a6d70);

  @override
  Color get disabled => const Color(0xff949598);

  @override
  Color get error => const Color(0xffcc1921);

  @override
  Color get errorSoft => const Color(0xffffe2e3);

  @override
  Color get focus => const Color(0xff1944ea);

  @override
  Color get hover => const Color(0xffececec);

  @override
  Color get info => const Color(0xff2662ec);

  @override
  Color get infoSoft => const Color(0xffd3e1fe);

  @override
  Color get success => const Color(0xff197e11);

  @override
  Color get successSoft => const Color(0xffe4ffeb);

  @override
  Color get warning => const Color(0xfff3be00);

  @override
  Color get warningSoft => const Color(0xfffff3d2);
}

class DarkColors extends AtlasColor {
  @override
  Color get active => const Color(0xff242428);

  @override
  Color get backgroundBase => const Color(0xff0e0e13);

  @override
  Color get backgroundFrosted => const Color(0xff1f1f23);

  @override
  Color get backgroundShading => const Color(0xff1e1e21);

  @override
  Color get backgroundSurface => const Color(0xff0e0e13);

  @override
  Color get black => const Color(0xffeaeaea);

  @override
  Color get constrastHigh => const Color(0xffafb0b3);

  @override
  Color get constrastLow => const Color(0xff404044);

  @override
  Color get constrastMedium => const Color(0xff88898c);

  @override
  Color get disabled => const Color(0xff7e7f82);

  @override
  Color get error => const Color(0xfffb4040);

  @override
  Color get errorSoft => const Color(0xff3a0f10);

  @override
  Color get focus => const Color(0xff1944ea);

  @override
  List<Color> get grandient =>
      const [Color(0xffc13fef), Color(0xff8439ff), Color(0xff4845da)];

  @override
  Color get grey1 => const Color(0xffeaeaea);

  @override
  Color get grey2 => const Color(0xffeaeaea);

  @override
  Color get hover => const Color(0xff26262a);

  @override
  Color get info => const Color(0xff168bff);

  @override
  Color get infoSoft => const Color(0xff04294d);

  @override
  Color get primary => const Color(0xfffbfcff);

  @override
  Color get success => const Color(0xff08d087);

  @override
  Color get successSoft => const Color(0xff01331f);

  @override
  Color get textPrimary => const Color(0xffeaeaea);

  @override
  Color get warning => const Color(0xfff7cb47);

  @override
  Color get warningSoft => const Color(0xff362a0b);

  @override
  Color get white => const Color(0xffeaeaea);
}

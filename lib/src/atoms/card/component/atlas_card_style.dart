import 'package:flutter/material.dart';

class AtlasCardStyle {
  final double height;
  final Alignment? begin;
  final Alignment? end;
  final List<Color> colors;

  AtlasCardStyle({
    required this.height,
    this.begin,
    this.end,
    required this.colors,
  });
}

class AtlasCardSharedStyle {}

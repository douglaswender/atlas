import 'package:flutter/material.dart';

class AtlasAccordionStep {
  final String title;
  final Widget body;
  bool isExpanded;

  AtlasAccordionStep({
    required this.title,
    required this.body,
    this.isExpanded = false,
  });
}

import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: AtlasText)
Widget defaultText(BuildContext context) {
  return AtlasText.heading(
    text: 'Hello World',
    behaviour: Behaviour.regular,
  );
}

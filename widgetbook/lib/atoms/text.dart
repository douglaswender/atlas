import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/core/default_scaffold.dart';

@widgetbook.UseCase(name: 'Default', type: AtlasText)
Widget defaultText(BuildContext context) {
  return DefaultScaffold(
    child: AtlasText.heading(
      text: 'Hello World',
      state: AtlasState.regular,
    ),
  );
}

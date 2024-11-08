import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/core/atlas_state_controller.dart';
import 'package:widgetbook_workspace/core/default_scaffold.dart';

@widgetbook.UseCase(name: 'Heading', type: AtlasText)
Widget heading(BuildContext context) {
  return DefaultScaffold(
    child: AtlasText.heading(
      text: 'Hello World',
      state: AtlasStateController.of(context).currentState,
    ),
  );
}

@widgetbook.UseCase(name: 'Body', type: AtlasText)
Widget body(BuildContext context) {
  return DefaultScaffold(
    child: AtlasText.body(
      text: 'Hello World',
      state: AtlasState.regular,
    ),
  );
}

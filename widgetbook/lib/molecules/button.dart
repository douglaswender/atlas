import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/core/atlas_state_controller.dart';
import 'package:widgetbook_workspace/core/default_scaffold.dart';

@widgetbook.UseCase(name: 'Default', type: AtlasButton)
Widget defaultText(BuildContext context) {
  return DefaultScaffold(
    child: AtlasButton.standard(
      text: context.knobs.string(label: 'Text', initialValue: 'Hello World'),
      onPressed: () {
        print('Button pressed');
      },
      state: Provider.of<AtlasStateController>(context).currentState,
    ),
  );
}

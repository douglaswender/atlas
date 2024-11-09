import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/addon/atlas_theme_addon.dart';
import 'package:widgetbook_workspace/core/atlas_state_controller.dart';
import 'package:widgetbook_workspace/core/default_scaffold.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';
import 'package:widgetbook_workspace/molecules/button.dart';

@widgetbook.UseCase(name: 'Without label', type: AtlasCheckbox)
Widget withoutLabel(BuildContext context) {
  return DefaultScaffold(
    child: AtlasCheckbox.standard(
      state: Provider.of<AtlasStateController>(context).currentState,
    ),
  );
}

@widgetbook.UseCase(name: 'With label', type: AtlasCheckbox)
Widget withLabel(BuildContext context) {
  return DefaultScaffold(
    child: AtlasCheckbox.standard(
      state: Provider.of<AtlasStateController>(context).currentState,
      label: 'Label',
      onChanged: (value) => print('Checkbox value: $value'),
    ),
  );
}

import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/core/default_scaffold.dart';

@widgetbook.UseCase(name: 'Default', type: AtlasButton)
Widget defaultText(BuildContext context) {
  return DefaultScaffold(
    child: AtlasButton.standard(
      text: context.knobs.string(label: 'Text', initialValue: 'Hello World'),
      onPressed: () {
        print('Button pressed');
      },
      state: context.knobs.list(label: 'state', options: [
        AtlasState.regular,
        AtlasState.error,
        AtlasState.disabled,
        AtlasState.loading,
        AtlasState.empty
      ]),
    ),
  );
}

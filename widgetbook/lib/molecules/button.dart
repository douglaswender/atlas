import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: AtlasButton)
Widget defaultText(BuildContext context) {
  return AtlasButton.standard(
    text: context.knobs.string(label: 'Text', initialValue: 'Hello World'),
    behaviour: context.knobs.list(label: 'behaviour', options: [
      Behaviour.regular,
      Behaviour.error,
      Behaviour.disabled,
      Behaviour.loading,
      Behaviour.empty
    ]),
  );
}

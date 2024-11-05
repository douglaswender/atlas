import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Accordion', type: AtlasAccordion)
Widget defaultText(BuildContext context) {
  return AtlasAccordion(
    steps: [
      AtlasAccordionStep(
        title: 'teste',
        body: AtlasButton.danger(
          text: 'text',
          behaviour: Behaviour.regular,
        ),
        isExpanded: true,
      ),
      AtlasAccordionStep(
        title: 'teste2',
        body: AtlasButton.danger(
          text: 'text2',
          behaviour: Behaviour.regular,
        ),
        isExpanded: true,
      ),
    ],
  );
}

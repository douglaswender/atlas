import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/core/default_scaffold.dart';

@widgetbook.UseCase(name: 'Accordion', type: AtlasAccordion)
Widget defaultText(BuildContext context) {
  return DefaultScaffold(
    child: AtlasAccordion.standard(
      steps: [
        AtlasAccordionStep(
          title: 'teste',
          body: AtlasButton.danger(
            text: 'text',
          ),
          isExpanded: true,
        ),
        AtlasAccordionStep(
          title: 'teste2',
          body: Column(
            children: [
              AtlasText.body(
                  text:
                      'Atenção POVO da Terra, estamos com novidadades para contemplar a todos.'),
              AtlasButton.danger(
                text: 'text2',
              ),
            ],
          ),
          isExpanded: true,
        ),
      ],
    ),
  );
}

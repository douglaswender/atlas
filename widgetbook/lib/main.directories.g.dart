// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/atoms/accordion.dart' as _i2;
import 'package:widgetbook_workspace/atoms/text.dart' as _i3;
import 'package:widgetbook_workspace/molecules/button.dart' as _i4;
import 'package:widgetbook_workspace/molecules/checkbox.dart' as _i5;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'atoms',
    children: [
      _i1.WidgetbookFolder(
        name: 'accordion',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AtlasAccordion',
            useCase: _i1.WidgetbookUseCase(
              name: 'Accordion',
              builder: _i2.defaultText,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'text',
        children: [
          _i1.WidgetbookComponent(
            name: 'AtlasText',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Body',
                builder: _i3.body,
              ),
              _i1.WidgetbookUseCase(
                name: 'Heading',
                builder: _i3.heading,
              ),
            ],
          )
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'molecules',
    children: [
      _i1.WidgetbookFolder(
        name: 'button',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AtlasButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'Default',
              builder: _i4.defaultText,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'checkbox',
        children: [
          _i1.WidgetbookComponent(
            name: 'AtlasCheckbox',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'With label',
                builder: _i5.withLabel,
              ),
              _i1.WidgetbookUseCase(
                name: 'Without label',
                builder: _i5.withoutLabel,
              ),
            ],
          )
        ],
      ),
    ],
  ),
];

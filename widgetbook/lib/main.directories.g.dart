// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/atoms/text.dart' as _i2;
import 'package:widgetbook_workspace/molecules/button.dart' as _i3;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'atoms',
    children: [
      _i1.WidgetbookFolder(
        name: 'text',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AtlasText',
            useCase: _i1.WidgetbookUseCase(
              name: 'Default',
              builder: _i2.defaultText,
            ),
          )
        ],
      )
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
              builder: _i3.defaultText,
            ),
          )
        ],
      )
    ],
  ),
];

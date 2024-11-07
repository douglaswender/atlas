import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_workspace/core/atlas_state_controller.dart';

class AtlasStateAddon extends WidgetbookAddon<AtlasState> {
  AtlasStateAddon({required this.context}) : super(name: 'state');

  final BuildContext context;

  @override
  List<Field> get fields => [
        ListField(
          name: 'state',
          values: AtlasState.values,
          initialValue: AtlasState.regular,
        )
      ];

  @override
  AtlasState valueFromQueryGroup(Map<String, String> group) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AtlasStateController>(context, listen: false)
          .updateState(valueOf('state', group));
    });

    return valueOf('state', group);
  }
}

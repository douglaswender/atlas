import 'package:atlas/atlas.dart';
import 'package:widgetbook/widgetbook.dart';

class AtlasThemeAddon extends WidgetbookAddon<String> {
  AtlasThemeAddon({required this.theme})
      : super(
          name: theme,
        );

  final String theme;

  @override
  List<Field> get fields => [
        ListField(
          name: 'theme',
          values: ['default', 'dark'],
          initialValue: 'default',
        )
      ];

  @override
  String valueFromQueryGroup(Map<String, String> group) {
    AtlasTheme.t(brand: group['theme']);
    return valueOf('theme', group);
  }
}

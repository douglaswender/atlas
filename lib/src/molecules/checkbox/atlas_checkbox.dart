import 'package:atlas/core/state/atlas_state.dart';
import 'package:atlas/src/molecules/checkbox/atlas_checkbox_component.dart';

class AtlasCheckbox extends AtlasCheckboxComponent {
  const AtlasCheckbox.standard({
    super.key,
    required AtlasState state,
    bool? value,
    void Function(bool? value)? onChanged,
    String? label,
  }) : super(
          state: state,
          value: value,
          onChanged: onChanged,
          label: label,
        );
}

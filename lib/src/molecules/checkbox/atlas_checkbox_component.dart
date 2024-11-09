import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

import 'package:atlas/core/component/component.dart';

class AtlasCheckboxComponent extends StatefulWidget with Component {
  const AtlasCheckboxComponent({
    Key? key,
    required this.state,
    this.value,
    this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  State<AtlasCheckboxComponent> createState() => _AtlasCheckboxComponentState();

  @override
  final AtlasState state;

  final bool? value;

  final void Function(bool?)? onChanged;

  final String? label;
}

class _AtlasCheckboxComponentState extends State<AtlasCheckboxComponent> {
  late bool value;

  @override
  void initState() {
    super.initState();
    value = widget.value ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          value = !value;
        });
        widget.onChanged?.call(value);
      },
      child: Row(
        mainAxisSize:
            widget.label == null ? MainAxisSize.min : MainAxisSize.max,
        children: [
          Checkbox(
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value!;
              });
              widget.onChanged?.call(value);
            },
            activeColor: AtlasTheme.t().color.primary,
            checkColor: AtlasTheme.t().color.backgroundBase,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: BorderSide(
                color: AtlasTheme.t().color.grey1,
              ),
            ),
          ),
          if (widget.label != null) AtlasText.body(text: widget.label!)
        ],
      ),
    );
  }
}

import 'package:atlas/atlas.dart';
import 'package:atlas/src/shared/styles/atlas_color.dart';
import 'package:flutter/material.dart';

class AtlasButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final bool busy;
  const AtlasButton({
    Key? key,
    required this.text,
    this.disabled = false,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: disabled ? AtlasColor.secondaryColor : AtlasColor.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: !busy
            ? AtlasText.body(
                text,
                color: Colors.white,
              )
            : const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
      ),
    );
  }
}

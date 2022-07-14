import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/component_style.dart';
import 'package:atlas/src/atoms/button/component/atlas_button_style.dart';
import 'package:flutter/material.dart';

class AtlasButtonComponent extends StatelessWidget
    with Component<AtlasButtonStyle, AtlasButtonSharedStyle> {
  final String text;
  final Behaviour behaviour;
  final ComponentStyle<AtlasButtonStyle, AtlasButtonSharedStyle> styles;
  final Function()? onPressed;

  const AtlasButtonComponent({
    super.key,
    required this.text,
    this.onPressed,
    required this.behaviour,
    required this.styles,
  });

  @override
  Widget build(BuildContext context) {
    return render(behaviour, context, styles);
  }

  @override
  Widget whenDisabled(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: AtlasTheme.sizes.s48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: styles.backgroundColor ?? AtlasTheme.t().color.primary,
          borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
        ),
        child: AtlasText(
          behaviour: behaviour,
          text: text,
          styles: otherStyles!.textStyle,
        ),
      ),
    );
  }

  @override
  Widget whenLoading(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    return GestureDetector(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: MediaQuery.of(context).size.width,
          height: AtlasTheme.sizes.s48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AtlasTheme.t().color.primary,
            borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
          ),
          child: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )),
    );
  }

  @override
  Widget whenRegular(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: AtlasTheme.sizes.s48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AtlasTheme.t().color.primary,
          borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
        ),
        child: AtlasText(
          behaviour: behaviour,
          text: text,
          styles: otherStyles!.textStyle,
        ),
      ),
    );
  }

  @override
  Widget whenError(AtlasButtonStyle styles, AtlasButtonSharedStyle? otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: AtlasTheme.sizes.s48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: styles.backgroundColor ?? AtlasTheme.t().color.warning,
          borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
        ),
        child: AtlasText(
          behaviour: behaviour,
          text: text,
          styles: otherStyles!.textStyle,
        ),
      ),
    );
  }
}

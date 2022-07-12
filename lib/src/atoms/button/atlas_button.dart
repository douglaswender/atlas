import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/style.dart';
import 'package:atlas/src/atoms/button/atlas_button_style.dart';
import 'package:atlas/src/shared/styles/atlas_color.dart';
import 'package:flutter/material.dart';

class AtlasButton extends StatelessWidget
    with Component<AtlasButtonStyle, AtlasButtonSharedStyle> {
  final String text;
  final Behaviour behaviour;
  final Style<AtlasButtonStyle, AtlasButtonSharedStyle> styles;
  final Function? onPressed;

  const AtlasButton({
    super.key,
    required this.text,
    this.onPressed,
    this.behaviour = Behaviour.regular,
    required this.styles,
  });

  AtlasButton.standard({
    super.key,
    required this.text,
    required this.behaviour,
    this.onPressed,
  }) : styles = AtlasButtonStyles.standard();

  //vantagem: não precisa da "key" dos widgets
  //desvantagem: um pouco mais difícil de implementar
  factory AtlasButton.factory({
    required String text,
    required Behaviour behaviour,
    Function? onPressed,
  }) {
    return AtlasButton(
      text: text,
      styles: AtlasButtonStyles.standard(),
      behaviour: behaviour,
      onPressed: onPressed,
    );
  }

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
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: styles.backgroundColor ?? AtlasColor.fourthColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: AtlasText.body(
            behaviour: behaviour,
            text: text,
          )),
    );
  }

  @override
  Widget whenLoading(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    return GestureDetector(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: MediaQuery.of(context).size.width,
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AtlasColor.secondaryColor,
            borderRadius: BorderRadius.circular(8),
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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AtlasColor.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: AtlasText.body(
          behaviour: behaviour,
          text: text,
        ),
      ),
      onTap: () => onPressed,
    );
  }
}

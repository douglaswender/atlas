import 'package:atlas/atlas.dart';
import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component.dart';
import 'package:atlas/core/component/style.dart';
import 'package:atlas/src/atoms/button/atlas_button_style.dart';
import 'package:atlas/src/shared/styles/atlas_color.dart';
import 'package:flutter/material.dart';

class AtlasButton extends StatelessWidget with Component {
  final String text;
  final Behaviour behaviour;
  final Style<AtlasButtonStyle, AtlasButtonSharedStyle> styles;
  const AtlasButton({
    super.key,
    required this.text,
    this.behaviour = Behaviour.regular,
    required this.styles,
  });

  AtlasButton.standard({
    super.key,
    required this.text,
    required this.behaviour,
  }) : styles = AtlasButtonStyles.standard();

  //vantagem: não precisa da "key" dos widgets
  //desvantagem: um pouco mais difícil de implementar
  factory AtlasButton.factory(
      {required String text, required Behaviour behaviour}) {
    return AtlasButton(
      text: text,
      styles: AtlasButtonStyles.standard(),
      behaviour: behaviour,
    );
  }

  @override
  Widget build(BuildContext context) {
    return render(behaviour, context, styles);
  }

  @override
  Widget whenDisabled(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    // TODO: implement whenDisabled
    throw UnimplementedError();
  }

  @override
  Widget whenEmpty(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    // TODO: implement whenEmpty
    throw UnimplementedError();
  }

  @override
  Widget whenError(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    // TODO: implement whenError
    throw UnimplementedError();
  }

  @override
  Widget whenLoading(
      styles, otherStyles, BuildContext context, Behaviour childBehaviour) {
    // TODO: implement whenLoading
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
            color: AtlasColor.secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: AtlasText.body(
            text,
            color: Colors.white,
          )),
    );
  }
}

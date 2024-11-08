import 'package:atlas/atlas.dart';
import 'package:atlas/core/component/component.dart';
import 'package:flutter/material.dart';

class AtlasButtonComponent extends StatelessWidget with Component {
  final String text;
  @override
  final AtlasState state;
  final Function()? onPressed;
  final Color? color;

  const AtlasButtonComponent({
    super.key,
    required this.text,
    this.onPressed,
    this.state = AtlasState.regular,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return render(state, context);
  }

  @override
  Widget whenEmpty(BuildContext context, AtlasState? state) {
    return whenDisabled(context, AtlasState.regular);
  }

  @override
  Widget whenDisabled(BuildContext context, AtlasState childBehaviour) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: AtlasTheme.sizes.s48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AtlasTheme.t().color.grey1,
          borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
        ),
        child: AtlasText.button(
          state: AtlasState.regular,
          text: text,
        ),
      ),
    );
  }

  @override
  Widget whenLoading(BuildContext context, AtlasState childBehaviour) {
    return GestureDetector(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: MediaQuery.of(context).size.width,
          height: AtlasTheme.sizes.s48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
          ),
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                AtlasTheme.t().color.backgroundSurface),
          )),
    );
  }

  @override
  Widget whenRegular(BuildContext context, AtlasState childBehaviour) {
    return InkWell(
      borderRadius: BorderRadius.circular(AtlasTheme.sizes.s32),
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: AtlasTheme.sizes.s48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
        ),
        child: AtlasText.button(
          state: AtlasState.regular,
          text: text,
        ),
      ),
    );
  }

  @override
  Widget whenError(BuildContext context, AtlasState childBehaviour) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: MediaQuery.of(context).size.width,
        height: AtlasTheme.sizes.s48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? AtlasTheme.t().color.warning,
          borderRadius: BorderRadius.circular(AtlasTheme.sizes.s8),
        ),
        child: AtlasText.button(
          state: AtlasState.regular,
          text: text,
        ),
      ),
    );
  }
}

import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/component/component_style.dart';
import 'package:flutter/material.dart';

import 'base_component.dart';

mixin Component<T, U> implements BaseComponent<T, U> {
  @override
  Widget whenDisabled(T styles, U? otherStyles, BuildContext context,
      Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.disabled";
  }

  @override
  Widget whenEmpty(T styles, U? otherStyles, BuildContext context,
      Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.empty";
  }

  @override
  Widget whenError(T styles, U? otherStyles, BuildContext context,
      Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.error";
  }

  @override
  Widget whenLoading(T styles, U? otherStyles, BuildContext context,
      Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.loading";
  }

  @override
  Widget whenRegular(T styles, U? otherStyles, BuildContext context,
      Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.regular";
  }

  @override
  Widget render(
      Behaviour behaviour, BuildContext context, ComponentStyle<T, U> styles) {
    switch (behaviour) {
      case Behaviour.regular:
        if (styles.regular == null) {
          throw "$this uses $behaviour but it does not have $behaviour style defined";
        }
        return whenRegular(
          styles.regular,
          styles.shared,
          context,
          behaviour,
        );
      case Behaviour.loading:
        if (styles.loading == null) {
          return whenRegular(
            styles.regular,
            styles.shared,
            context,
            behaviour,
          );
        }
        return whenLoading(
          styles.loading ?? styles.regular,
          styles.shared,
          context,
          behaviour,
        );

      case Behaviour.error:
        if (styles.error == null) {
          return whenRegular(
            styles.regular,
            styles.shared,
            context,
            behaviour,
          );
        } else {
          return whenError(
            styles.error ?? styles.regular,
            styles.shared,
            context,
            behaviour,
          );
        }

      case Behaviour.empty:
        if (styles.empty == null) {
          return whenRegular(
            styles.regular,
            styles.shared,
            context,
            behaviour,
          );
        }

        return whenEmpty(
          styles.empty ?? styles.regular,
          styles.shared,
          context,
          behaviour,
        );

      case Behaviour.disabled:
        if (styles.disabled == null) {
          return whenRegular(
            styles.regular,
            styles.shared,
            context,
            behaviour,
          );
        }

        return whenDisabled(
          styles.disabled ?? styles.regular,
          styles.shared,
          context,
          behaviour,
        );
      default:
        return whenRegular(styles.regular, styles.shared, context, behaviour);
    }
  }
}

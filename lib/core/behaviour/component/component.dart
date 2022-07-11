import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:atlas/core/behaviour/component/base_component.dart';
import 'package:atlas/core/behaviour/component/style.dart';
import 'package:flutter/material.dart';

abstract class Component<T, U> implements BaseComponent<T, U> {
  @override
  Widget whenDisabled(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.disabled";
  }

  @override
  Widget whenEmpty(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.empty";
  }

  @override
  Widget whenError(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.error";
  }

  @override
  Widget whenLoading(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.loading";
  }

  @override
  Widget whenRegular(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour) {
    throw "$this does not implements Behaviour.regular";
  }

  @override
  Widget render(Behaviour behaviour, BuildContext context, Style<T, U> styles) {
    switch (behaviour) {
      case Behaviour.regular:
        if (styles.regular == null) {
          throw "$this uses $behaviour but it does not have $behaviour style defined";
        }
        return whenRegular(styles.regular, styles.shared, context, behaviour);
      case Behaviour.loading:
        if (styles.loading == null) {
          return whenRegular(styles.regular, styles.shared, context, behaviour);
        }
        return whenLoading(styles.loading!, styles.shared, context, behaviour);

      case Behaviour.error:
        if (styles.error == null) {
          return whenRegular(styles.regular, styles.shared, context, behaviour);
        }
        return whenError(
          styles.error!,
          styles.shared!,
          context,
          behaviour,
        );

      case Behaviour.empty:
        if (styles.empty == null) {
          return whenRegular(styles.regular, styles.shared, context, behaviour);
        }

        return whenEmpty(
          styles.empty!,
          styles.shared!,
          context,
          behaviour,
        );

      case Behaviour.disabled:
        if (styles.disabled == null) {
          return whenRegular(styles.regular, styles.shared, context, behaviour);
        }

        return whenDisabled(
          styles.disabled!,
          styles.shared!,
          context,
          behaviour,
        );
      default:
        return whenRegular(styles.regular, styles.shared, context, behaviour);
    }
  }
}

import 'package:atlas/core/behaviour/behaviour.dart';
import 'package:flutter/material.dart';

import 'component_style.dart';

abstract class BaseComponent<T, U> {
  Widget whenRegular(
    T styles,
    U otherStyles,
    BuildContext context,
    Behaviour childBehaviour,
  );

  Widget whenLoading(
    T styles,
    U otherStyles,
    BuildContext context,
    Behaviour childBehaviour,
  );

  Widget whenError(
    T styles,
    U otherStyles,
    BuildContext context,
    Behaviour childBehaviour,
  );

  Widget whenDisabled(
    T styles,
    U otherStyles,
    BuildContext context,
    Behaviour childBehaviour,
  );

  Widget whenEmpty(
    T styles,
    U otherStyles,
    BuildContext context,
    Behaviour childBehaviour,
  );

  Widget render(
    Behaviour behaviour,
    BuildContext context,
    ComponentStyle<T, U> styles,
  );
}

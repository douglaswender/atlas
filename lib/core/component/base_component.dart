import 'package:atlas/core/state/atlas_state.dart';
import 'package:flutter/material.dart';

import 'component_style.dart';

abstract class BaseComponent<T, U> {
  Widget whenRegular(
    T styles,
    U otherStyles,
    BuildContext context,
    AtlasState childState,
  );

  Widget whenLoading(
    T styles,
    U otherStyles,
    BuildContext context,
    AtlasState childState,
  );

  Widget whenError(
    T styles,
    U otherStyles,
    BuildContext context,
    AtlasState childState,
  );

  Widget whenDisabled(
    T styles,
    U otherStyles,
    BuildContext context,
    AtlasState childState,
  );

  Widget whenEmpty(
    T styles,
    U otherStyles,
    BuildContext context,
    AtlasState childState,
  );

  Widget render(
    AtlasState state,
    BuildContext context,
    ComponentStyle<T, U> styles,
  );
}

import 'package:atlas/core/state/atlas_state.dart';
import 'package:flutter/material.dart';

import 'base_component.dart';

mixin Component<T, U> implements BaseComponent {
  AtlasState get state;
  @override
  Widget whenDisabled(BuildContext context, AtlasState childBehaviour) {
    throw "$this does not implements Behaviour.disabled";
  }

  @override
  Widget whenEmpty(BuildContext context, AtlasState state) {
    throw "$this does not implements Behaviour.empty";
  }

  @override
  Widget whenError(BuildContext context, AtlasState childBehaviour) {
    throw "$this does not implements Behaviour.error";
  }

  @override
  Widget whenLoading(BuildContext context, AtlasState childBehaviour) {
    throw "$this does not implements Behaviour.loading";
  }

  @override
  Widget whenRegular(BuildContext context, AtlasState childBehaviour) {
    throw "$this does not implements Behaviour.regular";
  }

  @override
  Widget render(
    AtlasState state,
    BuildContext context,
  ) {
    switch (state) {
      case AtlasState.regular:
        return whenRegular(
          context,
          state,
        );
      case AtlasState.loading:
        return whenLoading(
          context,
          state,
        );

      case AtlasState.error:
        return whenError(
          context,
          state,
        );

      case AtlasState.empty:
        return whenEmpty(
          context,
          state,
        );

      case AtlasState.disabled:
        return whenDisabled(
          context,
          state,
        );
      default:
        return whenRegular(context, state);
    }
  }
}

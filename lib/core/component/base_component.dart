import 'package:atlas/core/state/atlas_state.dart';
import 'package:flutter/material.dart';

abstract class BaseComponent {
  Widget whenRegular(
    BuildContext context,
    AtlasState childState,
  );

  Widget whenLoading(
    BuildContext context,
    AtlasState childState,
  );

  Widget whenError(
    BuildContext context,
    AtlasState childState,
  );

  Widget whenDisabled(
    BuildContext context,
    AtlasState childState,
  );

  Widget whenEmpty(
    BuildContext context,
    AtlasState childState,
  );

  Widget render(
    AtlasState state,
    BuildContext context,
  );
}

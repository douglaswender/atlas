import 'package:atlas/core/state/atlas_state.dart';
import 'package:flutter/material.dart';

class AtlasStateController extends ChangeNotifier {
  AtlasState _currentState;

  AtlasStateController({
    AtlasState currentState = AtlasState.regular,
  }) : _currentState = currentState;

  AtlasState get currentState => _currentState;

  void updateState(AtlasState state) {
    if (state != _currentState) {
      _currentState = state;
      notifyListeners();
    }
  }
}

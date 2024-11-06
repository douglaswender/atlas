enum AtlasState {
  regular,
  loading,
  error,
  empty,
  disabled,
}

class StateHelper {
  static AtlasState childBehaviour(
          AtlasState state, Map<AtlasState, AtlasState>? delegate) =>
      delegate != null ? delegate[state] ?? state : state;
}

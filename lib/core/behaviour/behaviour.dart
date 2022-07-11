enum Behaviour {
  regular,
  loading,
  error,
  empty,
  disabled,
}

class BehaviourHelper {
  static Behaviour childBehaviour(
          Behaviour behaviour, Map<Behaviour, Behaviour>? delegate) =>
      delegate != null ? delegate[behaviour] ?? behaviour : behaviour;
}

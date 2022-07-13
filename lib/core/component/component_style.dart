///Configura o estilo do componente baseado no style
class ComponentStyle<T, U> {
  final T regular;
  final T? loading;
  final T? error;
  final T? disabled;
  final T? empty;
  final U? shared;

  const ComponentStyle({
    required this.regular,
    this.loading,
    this.error,
    this.disabled,
    this.empty,
    this.shared,
  });

  T create(T Function() creator) => creator();
}

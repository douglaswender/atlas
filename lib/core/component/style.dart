///Configura o estilo do componente baseado no style
class Style<T, U> {
  final T regular;
  final T? loading;
  final T? error;
  final T? disabled;
  final T? empty;
  final U? shared;

  const Style({
    required this.regular,
    this.loading,
    this.error,
    this.disabled,
    this.empty,
    this.shared,
  });

  T create(T Function() creator) => creator();
}

import 'style.dart';
export 'type.dart';

typedef Loading<T> = Function(T? style);
typedef Empty<T> = Function(T? style);
typedef Error<T> = Function(T? style);
typedef Regular<T> = Function(T? style);
typedef OrElse<T> = Function();

mixin _Status<T> {
  dynamic when({
    Style<T>? style,
    Loading<T>? loading,
    Empty<T>? empty,
    Error<T>? error,
    Regular<T>? regular,
    required OrElse orElse,
  }) {}
}

abstract class Status<T> with _Status<T> {
  Status._();
  factory Status.loading() => StatusLoading<T>();
  factory Status.empty() => StatusEmpty<T>();
  factory Status.error() => StatusError<T>();
  factory Status.regular() => StatusRegular<T>();
}

/// TODO: verificar tratamento de tipo e style nulos e como exibir
class StatusLoading<T> extends Status<T> {
  StatusLoading() : super._();
  @override
  dynamic when({
    Style<T>? style,
    Loading<T>? loading,
    Empty<T>? empty,
    Error<T>? error,
    Regular<T>? regular,
    required OrElse orElse,
  }) {
    if (loading != null && style != null) {
      return loading(style.loading);
    } else {
      return orElse();
    }
  }
}

class StatusEmpty<T> extends Status<T> {
  StatusEmpty() : super._();
  @override
  dynamic when({
    Style<T>? style,
    Loading<T>? loading,
    Empty<T>? empty,
    Error<T>? error,
    Regular<T>? regular,
    required OrElse orElse,
  }) {
    if (empty != null && style != null) {
      return empty(style.empty);
    } else {
      return orElse();
    }
  }
}

class StatusError<T> extends Status<T> {
  StatusError() : super._();
  @override
  dynamic when({
    Style<T>? style,
    Loading<T>? loading,
    Empty<T>? empty,
    Error<T>? error,
    Regular<T>? regular,
    required OrElse orElse,
  }) {
    if (error != null && style != null) {
      return error(style.error);
    } else {
      return orElse();
    }
  }
}

class StatusRegular<T> extends Status<T> {
  StatusRegular() : super._();
  @override
  dynamic when({
    Style<T>? style,
    Loading<T>? loading,
    Empty<T>? empty,
    Error<T>? error,
    Regular<T>? regular,
    required OrElse orElse,
  }) {
    if (regular != null && style != null) {
      return regular(style.regular);
    } else {
      return orElse();
    }
  }
}

import 'package:flutter/material.dart';
import 'status.dart';
import 'style.dart';

typedef WidgetBuild<T> = Widget Function(T style);

@immutable
// ignore: must_be_immutable
abstract class Component<T> extends StatelessWidget {
  final TypeComponent type;
  late Status<T> status;
  final Style<T>? styles;

  Component({
    Key? key,
    this.styles,
    required this.type,
  }) : super(key: key) {
    status = type.fromStatus<T>();
  }

  Widget createComponent({
    WidgetBuild<T>? empty,
    WidgetBuild<T>? loading,
    WidgetBuild<T>? regular,
    WidgetBuild<T>? error,
    required OrElse orElse,
  }) {
    return status.when(
      style: styles,

      /// TODO: verificar tratamento de tipo e style nulos e como exibir
      empty: (style) =>
          (style != null && empty != null) ? empty(style) : orElse(),
      loading: (style) =>
          (style != null && loading != null) ? loading(style) : orElse(),
      regular: (style) =>
          (style != null && regular != null) ? regular(style) : orElse(),
      error: (style) =>
          (style != null && error != null) ? error(style) : orElse(),
      orElse: () => orElse(),
    );
  }
}

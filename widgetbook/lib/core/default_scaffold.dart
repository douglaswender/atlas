import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AtlasTheme.t().color.background,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: child,
      )),
    );
  }
}

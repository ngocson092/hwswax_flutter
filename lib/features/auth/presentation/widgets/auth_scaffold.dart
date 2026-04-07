import 'package:flutter/material.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({required this.child, required this.minHeight, super.key});

  final Widget child;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    const verticalPadding = 40.0;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final totalHeight = constraints.maxHeight < minHeight + 80
                ? minHeight + 80
                : constraints.maxHeight;
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 448),
                    child: SizedBox(
                      width: double.infinity,
                      height: totalHeight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: verticalPadding,
                        ),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

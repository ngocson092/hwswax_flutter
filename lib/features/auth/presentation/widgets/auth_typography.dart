import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle(this.text, {this.weight = FontWeight.w300, super.key});

  final String text;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.ink,
        fontSize: 48,
        fontWeight: weight,
        height: 1,
        letterSpacing: -2.4,
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  const SectionLabel(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: const TextStyle(
        color: AppColors.muted,
        fontSize: 10,
        height: 1.5,
        letterSpacing: 3,
      ),
    );
  }
}

class AuthChip extends StatelessWidget {
  const AuthChip(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColors.chip),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Color(0xFF474747),
            fontSize: 10,
            height: 1.5,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}

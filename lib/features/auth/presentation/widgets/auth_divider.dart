import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.border, thickness: 0.6)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.muted,
              fontSize: 10,
              letterSpacing: 1,
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.border, thickness: 0.6)),
      ],
    );
  }
}

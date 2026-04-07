import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';

class PrimaryAuthButton extends StatelessWidget {
  const PrimaryAuthButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.ink,
          foregroundColor: AppColors.chip,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 4.2,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}

class SecondaryAuthButton extends StatelessWidget {
  const SecondaryAuthButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        iconAlignment: IconAlignment.end,
        icon: const Icon(Icons.arrow_forward, size: 14),
        label: Text(label.toUpperCase()),
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF1A1C1C),
          side: const BorderSide(color: AppColors.border),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          textStyle: const TextStyle(fontSize: 12, letterSpacing: 1.2),
        ),
      ),
    );
  }
}

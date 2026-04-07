import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';
import 'package:wax_app/features/auth/presentation/widgets/auth_typography.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    required this.label,
    required this.hintText,
    required this.controller,
    this.trailingLabel,
    this.keyboardType,
    this.obscureText = false,
    super.key,
  });

  final String label;
  final String? trailingLabel;
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: SectionLabel(label)),
            if (trailingLabel != null)
              Text(
                trailingLabel!.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.muted,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.placeholder,
                  fontSize: 10,
                  letterSpacing: 1,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          cursorColor: AppColors.ink,
          style: const TextStyle(
            color: AppColors.ink,
            fontSize: 18,
            height: 1.25,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.placeholder,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: const EdgeInsets.fromLTRB(0, 12, 0, 16),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.border),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.ink),
            ),
          ),
        ),
      ],
    );
  }
}

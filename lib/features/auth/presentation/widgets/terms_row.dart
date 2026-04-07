import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';

class TermsRow extends StatelessWidget {
  const TermsRow({required this.value, required this.onChanged, super.key});

  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.ink,
            side: const BorderSide(color: AppColors.muted),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: AppColors.muted,
                fontFamily: 'Inter',
                fontSize: 11,
                height: 1.62,
                letterSpacing: -0.275,
              ),
              children: [
                TextSpan(text: 'BY SIGNING UP YOU AGREE TO '),
                TextSpan(
                  text: 'TERMS OF PRACTICE',
                  style: TextStyle(
                    color: AppColors.ink,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: ' AND\n'),
                TextSpan(
                  text: 'STUDIO GUIDELINES',
                  style: TextStyle(
                    color: AppColors.ink,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: '.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

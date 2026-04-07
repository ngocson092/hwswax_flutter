import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';

class DraftingNote extends StatelessWidget {
  const DraftingNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.fromLTRB(18, 15, 16, 16),
      decoration: const BoxDecoration(
        color: AppColors.note,
        border: Border(left: BorderSide(color: AppColors.ink, width: 2)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: const Text(
        'NOTE: SESSION TIMEOUTS ARE\nENFORCED AFTER 45 MINUTES OF\nINACTIVITY FOR SECURITY\nPROTOCOL.',
        style: TextStyle(color: Color(0xFF474747), fontSize: 10, height: 1.25),
      ),
    );
  }
}

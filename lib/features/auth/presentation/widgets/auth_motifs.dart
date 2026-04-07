import 'package:flutter/material.dart';
import 'package:wax_app/app/app_theme.dart';

class CrossMotif extends StatelessWidget {
  const CrossMotif({required this.size, required this.opacity, super.key});

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: CustomPaint(
        size: Size.square(size),
        painter: _CrossMotifPainter(),
      ),
    );
  }
}

class DotMotif extends StatelessWidget {
  const DotMotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.03,
      child: CustomPaint(
        painter: _DotMotifPainter(),
        child: const SizedBox.expand(),
      ),
    );
  }
}

class _CrossMotifPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.border
      ..strokeWidth = 1;
    canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _DotMotifPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppColors.ink;
    const spacing = 28.0;
    for (double y = 0; y < size.height; y += spacing) {
      for (double x = 0; x < size.width; x += spacing) {
        canvas.drawCircle(Offset(x, y), 1.2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

import 'package:flutter/material.dart';

class HexagonShape extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  final bool isFirstStep;

  const HexagonShape({
    Key? key,
    required this.size,
    required this.color,
    required this.text,
    required this.isFirstStep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size * (2/3)),
      painter: _HexagonPainter(color, isFirstStep),
      child: SizedBox(
        width: size,
        height: size * (2/3),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: isFirstStep ? Colors.white : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class _HexagonPainter extends CustomPainter {
  final Color color;
  final bool isFirstStep;

  _HexagonPainter(this.color, this.isFirstStep);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final height = size.height;
    final width = size.width;

    final horizontalOffset = width / 4;

    path.moveTo(0, 0);
    path.lineTo(width - horizontalOffset + 10, 0);
    path.lineTo(width, height / 2);
    path.lineTo(width - horizontalOffset + 10, height);
    if (isFirstStep) {
      path.lineTo(0, height);
    } else {
      path.lineTo(0, height);
      path.lineTo(horizontalOffset - 10, height / 2);
    }
    path.close();

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HexagonPainter oldPainter) => false;
}
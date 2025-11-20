import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

class TodoGlassWidget extends StatelessWidget {
  const TodoGlassWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.1),
                ],
              ),
            ),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'To-Do',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.visibility_outlined,
                          color: Colors.white.withOpacity(0.9),
                          size: 20,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'View All To-Do',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Pie Chart and Legend
                Row(
                  children: [
                    // Pie Chart
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: CustomPaint(painter: PieChartPainter()),
                    ),
                    const SizedBox(width: 40),

                    // Legend
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLegendItem(Colors.green, 'Completed', false),
                          const SizedBox(height: 20),
                          _buildLegendItem(Colors.orange, 'In Progress', true),
                          const SizedBox(height: 20),
                          _buildLegendItem(
                            const Color(0xFF4DBFDB),
                            'Yet to Start',
                            false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Pending To-Do's Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Pending To-Do',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View Details',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.9),
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Todo Items
                _buildTodoItem('ABD Assessm...', 'Sep 30'),
                const SizedBox(height: 12),
                _buildTodoItem('ABD Assessm...', 'Sep 30'),
                const SizedBox(height: 12),
                _buildTodoItem('ABD Assessm...', 'Sep 30'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String label, bool hasButton) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        if (hasButton)
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withOpacity(0.3),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 18),
          ),
        if (hasButton) const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildTodoItem(String title, String dueDate) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.15),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Due by',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    dueDate,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Icon(
                Icons.arrow_forward,
                color: Colors.white.withOpacity(0.7),
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;

    // Define the data
    final completed = 0.60; // 60%
    final inProgress = 0.35; // 35%
    final yetToStart = 0.05; // 5%

    // Colors
    final completedColor = Colors.green;
    final inProgressColor = Colors.orange;
    final yetToStartColor = const Color(0xFF4DBFDB);

    // Shadow for 3D effect
    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    canvas.drawCircle(
      Offset(center.dx + 3, center.dy + 6),
      radius,
      shadowPaint,
    );

    // Calculate angles (starting from top, going clockwise)
    double startAngle = -math.pi / 2;

    // Draw Completed (Green) - 60% - starts from top
    final completedPaint = Paint()
      ..color = completedColor
      ..style = PaintingStyle.fill;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi * completed,
      true,
      completedPaint,
    );

    // Add gradient overlay for completed section
    final completedGradient = Paint()
      ..shader = RadialGradient(
        colors: [completedColor.withOpacity(0.8), completedColor],
        stops: const [0.5, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..blendMode = BlendMode.overlay;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi * completed,
      true,
      completedGradient,
    );

    startAngle += 2 * math.pi * completed;

    // Draw In Progress (Orange) - 35%
    final inProgressPaint = Paint()
      ..color = inProgressColor
      ..style = PaintingStyle.fill;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi * inProgress,
      true,
      inProgressPaint,
    );

    // Add gradient overlay for in progress section
    final inProgressGradient = Paint()
      ..shader = RadialGradient(
        colors: [inProgressColor.withOpacity(0.8), inProgressColor],
        stops: const [0.5, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..blendMode = BlendMode.overlay;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi * inProgress,
      true,
      inProgressGradient,
    );

    startAngle += 2 * math.pi * inProgress;

    // Draw Yet to Start (Blue) - 5%
    final yetToStartPaint = Paint()
      ..color = yetToStartColor
      ..style = PaintingStyle.fill;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi * yetToStart,
      true,
      yetToStartPaint,
    );

    // Add gradient overlay for yet to start section
    final yetToStartGradient = Paint()
      ..shader = RadialGradient(
        colors: [yetToStartColor.withOpacity(0.8), yetToStartColor],
        stops: const [0.5, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..blendMode = BlendMode.overlay;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      2 * math.pi * yetToStart,
      true,
      yetToStartGradient,
    );

    // Draw percentage texts
    _drawText(canvas, '60%', center.dx - 30, center.dy + 50, Colors.white, 28);
    _drawText(canvas, '35%', center.dx + 10, center.dy - 45, Colors.white, 24);
    _drawText(canvas, '5%', center.dx + 45, center.dy + 10, Colors.white, 18);
  }

  void _drawText(
    Canvas canvas,
    String text,
    double x,
    double y,
    Color color,
    double fontSize,
  ) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(x, y));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

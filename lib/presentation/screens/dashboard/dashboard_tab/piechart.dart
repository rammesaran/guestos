import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

import 'package:guestos/core/widgets/glass_container.dart';

class FiresPieChart extends StatelessWidget {
  final int yetToStart;
  final int inProgress;
  final int completed;
  final VoidCallback? onAddFires;

  const FiresPieChart({
    Key? key,
    required this.yetToStart,
    required this.inProgress,
    required this.completed,
    this.onAddFires,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final total = yetToStart + inProgress + completed;

    return GlassContainer(
      padding: const EdgeInsets.all(24),
      borderRadius: BorderRadius.circular(20),
      blurIntensity: 15.0,
      opacity: 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Fires',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  _buildDropdown('Short Term'),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: onAddFires,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.25),
                                Colors.white.withOpacity(0.10),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: Colors.white.withOpacity(0.8),
                                size: 16,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'Add Fires',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Pie Chart
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: CustomPaint(
                  painter: PieChartPainter(
                    yetToStart: yetToStart,
                    inProgress: inProgress,
                    completed: completed,
                  ),
                ),
              ),
              const SizedBox(width: 32),

              // Legend
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLegendItem(
                      'Yet to Start',
                      const Color(0xFF4FC3F7),
                      yetToStart,
                      total,
                    ),
                    const SizedBox(height: 16),
                    _buildLegendItem(
                      'In-Progress',
                      const Color(0xFFFFA726),
                      inProgress,
                      total,
                    ),
                    const SizedBox(height: 16),
                    _buildLegendItem(
                      'Completed',
                      const Color(0xFF66BB6A),
                      completed,
                      total,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String value) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.25),
                Colors.white.withOpacity(0.10),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white.withOpacity(0.3)),
          ),
          child: Row(
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 6),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white.withOpacity(0.8),
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color, int count, int total) {
    final percentage = total > 0 ? (count / total * 100).round() : 0;

    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          '$percentage% ($count)',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class PieChartPainter extends CustomPainter {
  final int yetToStart;
  final int inProgress;
  final int completed;

  PieChartPainter({
    required this.yetToStart,
    required this.inProgress,
    required this.completed,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final total = yetToStart + inProgress + completed;
    if (total == 0) return;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;

    double startAngle = -math.pi / 2;

    // Completed (Green) - 50%
    if (completed > 0) {
      final sweepAngle = (completed / total) * 2 * math.pi;
      final paint = Paint()
        ..color = const Color(0xFF66BB6A)
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      startAngle += sweepAngle;
    }

    // In Progress (Orange) - 35%
    if (inProgress > 0) {
      final sweepAngle = (inProgress / total) * 2 * math.pi;
      final paint = Paint()
        ..color = const Color(0xFFFFA726)
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      startAngle += sweepAngle;
    }

    // Yet to Start (Blue) - 5%
    if (yetToStart > 0) {
      final sweepAngle = (yetToStart / total) * 2 * math.pi;
      final paint = Paint()
        ..color = const Color(0xFF4FC3F7)
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

import 'package:guestos/presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';
import 'package:guestos/core/widgets/glass_container.dart';

class OverviewChart extends StatelessWidget {
  final List<OverviewDataPoint> data;
  final String selectedView;
  final String selectedPeriod;
  final Function(String) onViewChanged;
  final Function(String) onPeriodChanged;

  const OverviewChart({
    Key? key,
    required this.data,
    required this.selectedView,
    required this.selectedPeriod,
    required this.onViewChanged,
    required this.onPeriodChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      padding: const EdgeInsets.all(24),
      borderRadius: BorderRadius.circular(20),
      blurIntensity: 15.0,
      opacity: 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header - Fixed to match mockup
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side - Title with Avatars
              Row(
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              // Right side - Controls
              Row(
                children: [
                  _buildDropdown(
                      selectedView,
                      [
                        'Rocks',
                        'To-Dos',
                        'Fires',
                      ],
                      onViewChanged),
                  const SizedBox(width: 12),
                  _buildDropdown(
                      selectedPeriod,
                      [
                        'Quarterly',
                        'Monthly',
                        'Yearly',
                      ],
                      onPeriodChanged),
                  const SizedBox(width: 12),
                  _buildIconButton(Icons.download),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Chart
          SizedBox(
            height: 300,
            child: CustomPaint(
              painter: BarChartPainter(data: data),
              child: Container(),
            ),
          ),
          const SizedBox(height: 24),

          // Legend
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendItem('Task Assigned', const Color(0xFFFFA726)),
              const SizedBox(width: 24),
              _buildLegendItem('Overdue', const Color(0xFF7A9FAD)),
              const SizedBox(width: 24),
              _buildLegendItem('Completed', const Color(0xFF4FC3F7)),
            ],
          ),
        ],
      ),
    );
  }

  // Avatar Stack Widget - Matching mockup design
  Widget _buildAvatarStack() {
    return SizedBox(
      width: 80,
      height: 40,
      child: Stack(
        children: [
          // First avatar with 'G' initial
          Positioned(
            left: 0,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF5A7C8A),
                border: Border.all(
                  color: const Color(0xFF0D3B52),
                  width: 2.5,
                ),
              ),
              child: const Center(
                child: Text(
                  'G',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          // Second avatar with icon/logo
          Positioned(
            left: 30,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF0D3B52),
                  width: 2.5,
                ),
              ),
              child: Center(
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Center(
                    child: Text(
                      'B',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(
    String value,
    List<String> items,
    Function(String) onChanged,
  ) {
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
          child: DropdownButton<String>(
            value: value,
            dropdownColor: const Color(0xFF1A4F66),
            underline: const SizedBox(),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 18,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            items: items
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: (val) {
              if (val != null) onChanged(val);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(10),
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
          child: Icon(icon, color: Colors.white, size: 18),
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),
        ),
      ],
    );
  }
}

class BarChartPainter extends CustomPainter {
  final List<OverviewDataPoint> data;

  BarChartPainter({required this.data});

  @override
  void paint(Canvas canvas, Size size) {
    if (data.isEmpty) return;

    // Calculate max value including negative values for proper scaling
    double maxPositive = 0;
    double maxNegative = 0;

    for (var point in data) {
      maxPositive = math.max(maxPositive, point.taskAssigned);
      maxPositive = math.max(maxPositive, point.completed);
      maxNegative = math.min(maxNegative, -point.overdue);
    }

    final maxValue = math.max(maxPositive, maxNegative.abs());
    final barWidth = (size.width / data.length) * 0.25;
    final chartHeight = size.height - 40;
    final zeroY = chartHeight / 2; // Middle line for zero
    final spacing = barWidth * 0.15;

    // Draw Y-axis labels and grid lines
    final yAxisPaint = Paint()
      ..color = Colors.white.withOpacity(0.08)
      ..strokeWidth = 1;

    final yAxisTextPainter = TextPainter(textDirection: TextDirection.ltr);

    // Draw horizontal grid lines (from 200 to -200)
    for (int i = -4; i <= 4; i++) {
      final y = zeroY - (i * chartHeight / 8);

      // Stronger line at zero
      if (i == 0) {
        canvas.drawLine(
          Offset(0, y),
          Offset(size.width, y),
          Paint()
            ..color = Colors.white.withOpacity(0.15)
            ..strokeWidth = 1.5,
        );
      } else {
        canvas.drawLine(Offset(0, y), Offset(size.width, y), yAxisPaint);
      }

      // Y-axis labels
      final value = (50 * i).round();
      yAxisTextPainter.text = TextSpan(
        text: value.toString(),
        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 10),
      );
      yAxisTextPainter.layout();
      yAxisTextPainter.paint(
        canvas,
        Offset(-35, y - yAxisTextPainter.height / 2),
      );
    }

    // Draw bars for each data point
    for (int i = 0; i < data.length; i++) {
      final point = data[i];
      final centerX = (i + 0.5) * (size.width / data.length);
      final x = centerX - (barWidth * 1.5 + spacing);

      // Draw Task Assigned (Orange) - positive
      _drawBar(
        canvas,
        x,
        zeroY,
        barWidth,
        point.taskAssigned,
        maxValue,
        chartHeight / 2,
        const Color(0xFFFFA726),
        isPositive: true,
      );

      // Draw Overdue (Gray-blue) - negative
      _drawBar(
        canvas,
        x + barWidth + spacing,
        zeroY,
        barWidth,
        point.overdue,
        maxValue,
        chartHeight / 2,
        const Color(0xFF7A9FAD),
        isPositive: false,
      );

      // Draw Completed (Cyan) - positive
      _drawBar(
        canvas,
        x + (barWidth + spacing) * 2,
        zeroY,
        barWidth,
        point.completed,
        maxValue,
        chartHeight / 2,
        const Color(0xFF4FC3F7),
        isPositive: true,
      );

      // X-axis labels
      final labelPainter = TextPainter(
        text: TextSpan(
          text: point.label,
          style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 9),
        ),
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
      );
      labelPainter.layout();
      labelPainter.paint(
        canvas,
        Offset(
          centerX - (labelPainter.width / 2),
          chartHeight + 10,
        ),
      );
    }
  }

  void _drawBar(Canvas canvas, double x, double zeroY, double width,
      double value, double maxValue, double maxHeight, Color color,
      {required bool isPositive}) {
    if (value == 0) return;

    final barHeight = (value.abs() / maxValue) * maxHeight;

    RRect rect;
    if (isPositive) {
      // Positive bars grow upward from zero line
      rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(x, zeroY - barHeight, width, barHeight),
        const Radius.circular(3),
      );
    } else {
      // Negative bars grow downward from zero line
      rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(x, zeroY, width, barHeight),
        const Radius.circular(3),
      );
    }

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawRRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

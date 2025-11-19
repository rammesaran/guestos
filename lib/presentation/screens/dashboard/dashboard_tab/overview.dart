import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:guestos/presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';

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
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Overview',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  _buildDropdown(selectedView, [
                    'Rocks',
                    'To-Dos',
                    'Fires',
                  ], onViewChanged),
                  const SizedBox(width: 12),
                  _buildDropdown(selectedPeriod, [
                    'Quarterly',
                    'Monthly',
                    'Yearly',
                  ], onPeriodChanged),
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
              _buildLegendItem('Task Assigned', const Color(0xFF4FC3F7)),
              const SizedBox(width: 24),
              _buildLegendItem('Overdue', const Color(0xFF5C6BC0)),
              const SizedBox(width: 24),
              _buildLegendItem('Completed', const Color(0xFF66BB6A)),
            ],
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
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
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Icon(icon, color: Colors.white, size: 18),
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

    final maxValue = data.fold<double>(0, (max, point) {
      final pointMax = math.max(
        point.taskAssigned,
        math.max(point.overdue, point.completed),
      );
      return math.max(max, pointMax);
    });

    final barWidth = size.width / (data.length * 3.5);
    final chartHeight = size.height - 40;
    final spacing = barWidth * 0.3;

    // Draw Y-axis labels and grid lines
    final yAxisPaint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..strokeWidth = 1;

    final yAxisTextPainter = TextPainter(textDirection: TextDirection.ltr);

    for (int i = 0; i <= 4; i++) {
      final y = chartHeight - (i * chartHeight / 4);
      canvas.drawLine(Offset(0, y), Offset(size.width, y), yAxisPaint);

      // Y-axis labels
      final value = (maxValue * i / 4).round();
      yAxisTextPainter.text = TextSpan(
        text: value.toString(),
        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 10),
      );
      yAxisTextPainter.layout();
      yAxisTextPainter.paint(
        canvas,
        Offset(-30, y - yAxisTextPainter.height / 2),
      );
    }

    // Draw bars
    for (int i = 0; i < data.length; i++) {
      final point = data[i];
      final x = i * (barWidth * 3 + spacing * 4) + spacing;

      _drawBar(
        canvas,
        x,
        chartHeight,
        barWidth,
        point.taskAssigned,
        maxValue,
        const Color(0xFF4FC3F7),
      );

      _drawBar(
        canvas,
        x + barWidth + spacing,
        chartHeight,
        barWidth,
        point.overdue,
        maxValue,
        const Color(0xFF5C6BC0),
      );

      _drawBar(
        canvas,
        x + (barWidth + spacing) * 2,
        chartHeight,
        barWidth,
        point.completed,
        maxValue,
        const Color(0xFF66BB6A),
      );

      // X-axis labels
      final labelPainter = TextPainter(
        text: TextSpan(
          text: point.label,
          style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 10),
        ),
        textDirection: TextDirection.ltr,
      );
      labelPainter.layout();
      labelPainter.paint(
        canvas,
        Offset(
          x + (barWidth * 1.5) - (labelPainter.width / 2),
          chartHeight + 10,
        ),
      );
    }
  }

  void _drawBar(
    Canvas canvas,
    double x,
    double chartHeight,
    double width,
    double value,
    double maxValue,
    Color color,
  ) {
    final barHeight = (value / maxValue) * chartHeight;
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(x, chartHeight - barHeight, width, barHeight),
      const Radius.circular(4),
    );

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawRRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

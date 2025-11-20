import 'package:flutter/material.dart';
import 'package:guestos/presentation/screens/dashboard/dashboarddata.dart';
import 'dart:math' as math;

class TodoChartCard extends StatelessWidget {
  final int completed;
  final int inProgress;
  final int yetToStart;
  final List<TodoItem> pendingTodos;
  final VoidCallback? onViewAll;
  final Function(String)? onTodoTap;
  final VoidCallback? onViewDetails;

  const TodoChartCard({
    Key? key,
    required this.completed,
    required this.inProgress,
    required this.yetToStart,
    required this.pendingTodos,
    this.onViewAll,
    this.onTodoTap,
    this.onViewDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'To-Do',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: onViewAll,
                child: Row(
                  children: [
                    Icon(
                      Icons.visibility_outlined,
                      color: Colors.white.withOpacity(0.9),
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'View All To-Do',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Pie Chart and Legend
          Row(
            children: [
              // Pie Chart
              SizedBox(
                width: 180,
                height: 180,
                child: CustomPaint(
                  painter: PieChartPainter(
                    completed: completed,
                    inProgress: inProgress,
                    yetToStart: yetToStart,
                  ),
                ),
              ),
              const SizedBox(width: 24),

              // Legend
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLegendItem(
                      'Completed',
                      const Color(0xFF8BC34A),
                      completed,
                    ),
                    const SizedBox(height: 12),
                    _buildLegendItem(
                      'In Progress',
                      const Color(0xFFFFA726),
                      inProgress,
                    ),
                    const SizedBox(height: 12),
                    _buildLegendItem(
                      'Yet to Start',
                      const Color(0xFF4FC3F7),
                      yetToStart,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Pending To-Do's Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pending To-Do\'s',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.95),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: onViewDetails,
                child: Text(
                  'View Details',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Todo List
          ...pendingTodos.map((todo) => _buildTodoItem(todo)).toList(),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color, int count) {
    final total = completed + inProgress + yetToStart;
    final percentage = total > 0 ? (count / total * 100).round() : 0;

    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          '$percentage%',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildTodoItem(TodoItem todo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.15), width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  todo.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Due by',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                todo.dueDate,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white.withOpacity(0.7),
            size: 16,
          ),
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  final int completed;
  final int inProgress;
  final int yetToStart;

  PieChartPainter({
    required this.completed,
    required this.inProgress,
    required this.yetToStart,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final total = completed + inProgress + yetToStart;
    if (total == 0) return;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    double startAngle = -math.pi / 2; // Start from top

    // Completed (Green)
    if (completed > 0) {
      final sweepAngle = (completed / total) * 2 * math.pi;
      final paint = Paint()
        ..color = const Color(0xFF8BC34A)
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

    // In Progress (Orange)
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

    // Yet to Start (Blue)
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

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:guestos/core/widgets/glass_container.dart';

class MetricSummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final double change;
  final String changeLabel;
  final IconData icon;
  final Color color;

  const MetricSummaryCard({
    Key? key,
    required this.title,
    required this.value,
    required this.change,
    required this.changeLabel,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPositive = change >= 0;

    return GlassContainer(
      padding: const EdgeInsets.all(20),
      borderRadius: BorderRadius.circular(20),
      blurIntensity: 15.0,
      opacity: 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.withOpacity(0.3),
                          color.withOpacity(0.15),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: color.withOpacity(0.4)),
                    ),
                    child: Icon(icon, color: color, size: 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          (isPositive
                                  ? const Color(0xFF66BB6A)
                                  : const Color(0xFFFF5252))
                              .withOpacity(0.3),
                          (isPositive
                                  ? const Color(0xFF66BB6A)
                                  : const Color(0xFFFF5252))
                              .withOpacity(0.15),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: (isPositive
                                ? const Color(0xFF66BB6A)
                                : const Color(0xFFFF5252))
                            .withOpacity(0.4),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          isPositive
                              ? Icons.arrow_upward
                              : Icons.arrow_downward,
                          color: isPositive
                              ? const Color(0xFF66BB6A)
                              : const Color(0xFFFF5252),
                          size: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${change.abs().toStringAsFixed(2)}%',
                          style: TextStyle(
                            color: isPositive
                                ? const Color(0xFF66BB6A)
                                : const Color(0xFFFF5252),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                changeLabel,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

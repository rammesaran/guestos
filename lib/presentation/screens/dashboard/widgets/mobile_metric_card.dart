import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/glass_container.dart';

class MobileMetricCard extends StatelessWidget {
  final String title;
  final int count;
  final double change;
  final Color color;

  const MobileMetricCard({
    Key? key,
    required this.title,
    required this.count,
    required this.change,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPositive = change >= 0;

    return GlassCard(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: 10.w,
                height: 10.w,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                    size: 12.sp,
                    color: isPositive ? AppColors.success : AppColors.error,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '${change.abs().toStringAsFixed(2)}%',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: isPositive ? AppColors.success : AppColors.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Text(
                'From last quarter',
                style: TextStyle(
                  fontSize: 9.sp,
                  color: AppColors.textTertiary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/glass_container.dart';
import '../../../../domain/entities/dashboard_entity.dart';

class MobileOverviewCard extends StatelessWidget {
  final OverviewEntity overview;

  const MobileOverviewCard({Key? key, required this.overview})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Overview',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'Report',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textSecondary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.file_download_outlined,
                      size: 16.w,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildProgressBars(),
        ],
      ),
    );
  }

  Widget _buildProgressBars() {
    return Column(
      children: [
        _buildProgressBar(
          'Rocks',
          overview.stats.completedPercentage,
          AppColors.chartYellow,
        ),
        SizedBox(height: 8.h),
        _buildProgressBar(
          'Fires',
          overview.stats.inProgressPercentage,
          AppColors.chartBlue,
        ),
        SizedBox(height: 8.h),
        _buildProgressBar(
          'To-Do',
          overview.stats.yetToStartPercentage,
          AppColors.chartGreen,
        ),
      ],
    );
  }

  Widget _buildProgressBar(String label, double percentage, Color color) {
    return Row(
      children: [
        SizedBox(
          width: 40.w,
          child: Text(
            label,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textSecondary),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Container(
            height: 6.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.r),
              color: AppColors.surfaceSecondary,
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: percentage / 100,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r),
                  color: color,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChart() {
    return SizedBox(
      height: 120.h,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: _generateChartData(),
              isCurved: true,
              color: AppColors.chartGreen,
              barWidth: 3,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: AppColors.chartGreen.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> _generateChartData() {
    final dataPoints = overview.dataPoints.take(10).toList();
    return dataPoints.asMap().entries.map((entry) {
      return FlSpot(entry.key.toDouble(), entry.value.completed / 10);
    }).toList();
  }
}

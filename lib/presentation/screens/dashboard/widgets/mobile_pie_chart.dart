import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart' as fl_chart;
import '../../../../core/constants/app_colors.dart';
import '../mobile_dashboard_screen.dart';

class MobilePieChart extends StatelessWidget {
  final List<PieChartData> data;

  const MobilePieChart({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120.w,
          height: 120.w,
          child: fl_chart.PieChart(
            fl_chart.PieChartData(
              sections: _buildPieChartSections(),
              centerSpaceRadius: 30.w,
              sectionsSpace: 2,
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...data.map((item) => _buildLegendItem(item)).toList(),
            ],
          ),
        ),
      ],
    );
  }

  List<fl_chart.PieChartSectionData> _buildPieChartSections() {
    final total = data.fold<double>(0, (sum, item) => sum + item.value);

    return data.map((item) {
      final percentage = (item.value / total) * 100;
      return fl_chart.PieChartSectionData(
        color: item.color,
        value: item.value,
        title: '${percentage.toInt()}%',
        radius: 35.w,
        titleStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      );
    }).toList();
  }

  Widget _buildLegendItem(PieChartData item) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
              color: item.color,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              item.label,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Text(
            '${item.value.toInt()}',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

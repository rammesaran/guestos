import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/glass_container.dart';
import '../../../../domain/entities/dashboard_entity.dart';

class MobileTodoCard extends StatelessWidget {
  final TodoEntity todo;

  const MobileTodoCard({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      padding: EdgeInsets.all(12.w),
      margin: EdgeInsets.only(bottom: 8.h),
      borderRadius: BorderRadius.circular(12.r),
      child: Row(
        children: [
          Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: todo.isCompleted
                    ? AppColors.success
                    : AppColors.glassBorder,
                width: 2,
              ),
              color: todo.isCompleted ? AppColors.success : Colors.transparent,
            ),
            child: todo.isCompleted
                ? Icon(
                    Icons.check,
                    size: 12.sp,
                    color: AppColors.textPrimary,
                  )
                : null,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.textPrimary,
                    decoration:
                        todo.isCompleted ? TextDecoration.lineThrough : null,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  todo.date,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.textSecondary,
            size: 20.sp,
          ),
        ],
      ),
    );
  }
}

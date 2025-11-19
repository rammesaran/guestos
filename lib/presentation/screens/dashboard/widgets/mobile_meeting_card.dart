import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/glass_container.dart';
import '../../../../domain/entities/dashboard_entity.dart';

class MobileMeetingCard extends StatelessWidget {
  final MeetingEntity meeting;

  const MobileMeetingCard({
    Key? key,
    required this.meeting,
  }) : super(key: key);

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
                'Upcoming Meeting in 10 Min',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              _buildMeetingTypeIcon(),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              CircleAvatar(
                radius: 20.w,
                backgroundColor: AppColors.primaryBlue,
                child: Text(
                  meeting.title.substring(0, 1),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meeting.title,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      meeting.subtitle,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              GlassButton(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                child: Text(
                  'Join',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                onPressed: () {
                  // Handle join meeting
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMeetingTypeIcon() {
    IconData iconData;
    switch (meeting.type) {
      case MeetingType.video:
        iconData = Icons.videocam;
        break;
      case MeetingType.audio:
        iconData = Icons.mic;
        break;
      case MeetingType.team:
        iconData = Icons.groups;
        break;
      case MeetingType.call:
        iconData = Icons.call;
        break;
    }

    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.surfacePrimary,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Icon(
        iconData,
        size: 20.w,
        color: AppColors.textPrimary,
      ),
    );
  }
}

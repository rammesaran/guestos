import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entity.freezed.dart';

@freezed
class DashboardEntity with _$DashboardEntity {
  const factory DashboardEntity({
    required String id,
    required String userInitials,
    required String userName,
    required MetricsEntity metrics,
    required List<MeetingEntity> upcomingMeetings,
    required List<TodoEntity> todos,
    required List<FireEntity> fires,
    required List<RockEntity> rocks,
    required OverviewEntity overview,
  }) = _DashboardEntity;
}

@freezed
class MetricsEntity with _$MetricsEntity {
  const factory MetricsEntity({
    required int rocksCount,
    required double rocksChange,
    required int todosCount,
    required double todosChange,
    required int firesCount,
    required double firesChange,
  }) = _MetricsEntity;
}

@freezed
class MeetingEntity with _$MeetingEntity {
  const factory MeetingEntity({
    required String id,
    required String title,
    required String subtitle,
    required String time,
    required MeetingType type,
    required MeetingStatus status,
    required bool isCompleted,
  }) = _MeetingEntity;
}

@freezed
class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    required String id,
    required String title,
    required String date,
    required bool isCompleted,
    required TodoPriority priority,
  }) = _TodoEntity;
}

@freezed
class FireEntity with _$FireEntity {
  const factory FireEntity({
    required String id,
    required String title,
    required String description,
    required FireStatus status,
    required double progress,
  }) = _FireEntity;
}

@freezed
class RockEntity with _$RockEntity {
  const factory RockEntity({
    required String id,
    required String title,
    required String description,
    required RockStatus status,
    required double progress,
  }) = _RockEntity;
}

@freezed
class OverviewEntity with _$OverviewEntity {
  const factory OverviewEntity({
    required List<OverviewDataPointEntity> dataPoints,
    required String selectedPeriod,
    required OverviewStats stats,
  }) = _OverviewEntity;
}

@freezed
class OverviewDataPointEntity with _$OverviewDataPointEntity {
  const factory OverviewDataPointEntity({
    required String label,
    required double taskAssigned,
    required double overdue,
    required double completed,
  }) = _OverviewDataPointEntity;
}

@freezed
class OverviewStats with _$OverviewStats {
  const factory OverviewStats({
    required double completedPercentage,
    required double inProgressPercentage,
    required double yetToStartPercentage,
  }) = _OverviewStats;
}

enum MeetingType { video, audio, team, call }

enum MeetingStatus { scheduled, inProgress, completed, cancelled }

enum TodoPriority { low, medium, high, urgent }

enum FireStatus { yetToStart, inProgress, completed }

enum RockStatus { yetToStart, inProgress, completed }

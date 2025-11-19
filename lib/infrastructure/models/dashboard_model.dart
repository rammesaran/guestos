import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';

part 'dashboard_model.g.dart';

@JsonSerializable()
class DashboardModel {
  final String id;
  final String userInitials;
  final String userName;
  final MetricsModel metrics;
  final List<MeetingModel> upcomingMeetings;
  final List<TodoModel> todos;
  final List<FireModel> fires;
  final List<RockModel> rocks;
  final OverviewModel overview;

  const DashboardModel({
    required this.id,
    required this.userInitials,
    required this.userName,
    required this.metrics,
    required this.upcomingMeetings,
    required this.todos,
    required this.fires,
    required this.rocks,
    required this.overview,
  });

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardModelToJson(this);

  DashboardEntity toEntity() => DashboardEntity(
        id: id,
        userInitials: userInitials,
        userName: userName,
        metrics: metrics.toEntity(),
        upcomingMeetings: upcomingMeetings.map((e) => e.toEntity()).toList(),
        todos: todos.map((e) => e.toEntity()).toList(),
        fires: fires.map((e) => e.toEntity()).toList(),
        rocks: rocks.map((e) => e.toEntity()).toList(),
        overview: overview.toEntity(),
      );

  factory DashboardModel.fromEntity(DashboardEntity entity) => DashboardModel(
        id: entity.id,
        userInitials: entity.userInitials,
        userName: entity.userName,
        metrics: MetricsModel.fromEntity(entity.metrics),
        upcomingMeetings: entity.upcomingMeetings
            .map((e) => MeetingModel.fromEntity(e))
            .toList(),
        todos: entity.todos.map((e) => TodoModel.fromEntity(e)).toList(),
        fires: entity.fires.map((e) => FireModel.fromEntity(e)).toList(),
        rocks: entity.rocks.map((e) => RockModel.fromEntity(e)).toList(),
        overview: OverviewModel.fromEntity(entity.overview),
      );
}

@JsonSerializable()
class MetricsModel {
  final int rocksCount;
  final double rocksChange;
  final int todosCount;
  final double todosChange;
  final int firesCount;
  final double firesChange;

  const MetricsModel({
    required this.rocksCount,
    required this.rocksChange,
    required this.todosCount,
    required this.todosChange,
    required this.firesCount,
    required this.firesChange,
  });

  factory MetricsModel.fromJson(Map<String, dynamic> json) =>
      _$MetricsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MetricsModelToJson(this);

  MetricsEntity toEntity() => MetricsEntity(
        rocksCount: rocksCount,
        rocksChange: rocksChange,
        todosCount: todosCount,
        todosChange: todosChange,
        firesCount: firesCount,
        firesChange: firesChange,
      );

  factory MetricsModel.fromEntity(MetricsEntity entity) => MetricsModel(
        rocksCount: entity.rocksCount,
        rocksChange: entity.rocksChange,
        todosCount: entity.todosCount,
        todosChange: entity.todosChange,
        firesCount: entity.firesCount,
        firesChange: entity.firesChange,
      );
}

@JsonSerializable()
class MeetingModel {
  final String id;
  final String title;
  final String subtitle;
  final String time;
  @JsonKey(name: 'type')
  final String typeString;
  @JsonKey(name: 'status')
  final String statusString;
  final bool isCompleted;

  const MeetingModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.typeString,
    required this.statusString,
    required this.isCompleted,
  });

  factory MeetingModel.fromJson(Map<String, dynamic> json) =>
      _$MeetingModelFromJson(json);

  Map<String, dynamic> toJson() => _$MeetingModelToJson(this);

  MeetingEntity toEntity() => MeetingEntity(
        id: id,
        title: title,
        subtitle: subtitle,
        time: time,
        type: _stringToMeetingType(typeString),
        status: _stringToMeetingStatus(statusString),
        isCompleted: isCompleted,
      );

  factory MeetingModel.fromEntity(MeetingEntity entity) => MeetingModel(
        id: entity.id,
        title: entity.title,
        subtitle: entity.subtitle,
        time: entity.time,
        typeString: _meetingTypeToString(entity.type),
        statusString: _meetingStatusToString(entity.status),
        isCompleted: entity.isCompleted,
      );

  MeetingType _stringToMeetingType(String type) {
    switch (type) {
      case 'video':
        return MeetingType.video;
      case 'audio':
        return MeetingType.audio;
      case 'team':
        return MeetingType.team;
      case 'call':
        return MeetingType.call;
      default:
        return MeetingType.video;
    }
  }

  static String _meetingTypeToString(MeetingType type) {
    switch (type) {
      case MeetingType.video:
        return 'video';
      case MeetingType.audio:
        return 'audio';
      case MeetingType.team:
        return 'team';
      case MeetingType.call:
        return 'call';
    }
  }

  MeetingStatus _stringToMeetingStatus(String status) {
    switch (status) {
      case 'scheduled':
        return MeetingStatus.scheduled;
      case 'inProgress':
        return MeetingStatus.inProgress;
      case 'completed':
        return MeetingStatus.completed;
      case 'cancelled':
        return MeetingStatus.cancelled;
      default:
        return MeetingStatus.scheduled;
    }
  }

  static String _meetingStatusToString(MeetingStatus status) {
    switch (status) {
      case MeetingStatus.scheduled:
        return 'scheduled';
      case MeetingStatus.inProgress:
        return 'inProgress';
      case MeetingStatus.completed:
        return 'completed';
      case MeetingStatus.cancelled:
        return 'cancelled';
    }
  }
}

@JsonSerializable()
class TodoModel {
  final String id;
  final String title;
  final String date;
  final bool isCompleted;
  @JsonKey(name: 'priority')
  final String priorityString;

  const TodoModel({
    required this.id,
    required this.title,
    required this.date,
    required this.isCompleted,
    required this.priorityString,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);

  TodoEntity toEntity() => TodoEntity(
        id: id,
        title: title,
        date: date,
        isCompleted: isCompleted,
        priority: _stringToTodoPriority(priorityString),
      );

  factory TodoModel.fromEntity(TodoEntity entity) => TodoModel(
        id: entity.id,
        title: entity.title,
        date: entity.date,
        isCompleted: entity.isCompleted,
        priorityString: _todoPriorityToString(entity.priority),
      );

  TodoPriority _stringToTodoPriority(String priority) {
    switch (priority) {
      case 'low':
        return TodoPriority.low;
      case 'medium':
        return TodoPriority.medium;
      case 'high':
        return TodoPriority.high;
      case 'urgent':
        return TodoPriority.urgent;
      default:
        return TodoPriority.medium;
    }
  }

  static String _todoPriorityToString(TodoPriority priority) {
    switch (priority) {
      case TodoPriority.low:
        return 'low';
      case TodoPriority.medium:
        return 'medium';
      case TodoPriority.high:
        return 'high';
      case TodoPriority.urgent:
        return 'urgent';
    }
  }
}

@JsonSerializable()
class FireModel {
  final String id;
  final String title;
  final String description;
  @JsonKey(name: 'status')
  final String statusString;
  final double progress;

  const FireModel({
    required this.id,
    required this.title,
    required this.description,
    required this.statusString,
    required this.progress,
  });

  factory FireModel.fromJson(Map<String, dynamic> json) =>
      _$FireModelFromJson(json);

  Map<String, dynamic> toJson() => _$FireModelToJson(this);

  FireEntity toEntity() => FireEntity(
        id: id,
        title: title,
        description: description,
        status: _stringToFireStatus(statusString),
        progress: progress,
      );

  factory FireModel.fromEntity(FireEntity entity) => FireModel(
        id: entity.id,
        title: entity.title,
        description: entity.description,
        statusString: _fireStatusToString(entity.status),
        progress: entity.progress,
      );

  FireStatus _stringToFireStatus(String status) {
    switch (status) {
      case 'yetToStart':
        return FireStatus.yetToStart;
      case 'inProgress':
        return FireStatus.inProgress;
      case 'completed':
        return FireStatus.completed;
      default:
        return FireStatus.yetToStart;
    }
  }

  static String _fireStatusToString(FireStatus status) {
    switch (status) {
      case FireStatus.yetToStart:
        return 'yetToStart';
      case FireStatus.inProgress:
        return 'inProgress';
      case FireStatus.completed:
        return 'completed';
    }
  }
}

@JsonSerializable()
class RockModel {
  final String id;
  final String title;
  final String description;
  @JsonKey(name: 'status')
  final String statusString;
  final double progress;

  const RockModel({
    required this.id,
    required this.title,
    required this.description,
    required this.statusString,
    required this.progress,
  });

  factory RockModel.fromJson(Map<String, dynamic> json) =>
      _$RockModelFromJson(json);

  Map<String, dynamic> toJson() => _$RockModelToJson(this);

  RockEntity toEntity() => RockEntity(
        id: id,
        title: title,
        description: description,
        status: _stringToRockStatus(statusString),
        progress: progress,
      );

  factory RockModel.fromEntity(RockEntity entity) => RockModel(
        id: entity.id,
        title: entity.title,
        description: entity.description,
        statusString: _rockStatusToString(entity.status),
        progress: entity.progress,
      );

  RockStatus _stringToRockStatus(String status) {
    switch (status) {
      case 'yetToStart':
        return RockStatus.yetToStart;
      case 'inProgress':
        return RockStatus.inProgress;
      case 'completed':
        return RockStatus.completed;
      default:
        return RockStatus.yetToStart;
    }
  }

  static String _rockStatusToString(RockStatus status) {
    switch (status) {
      case RockStatus.yetToStart:
        return 'yetToStart';
      case RockStatus.inProgress:
        return 'inProgress';
      case RockStatus.completed:
        return 'completed';
    }
  }
}

@JsonSerializable()
class OverviewModel {
  final List<OverviewDataPointModel> dataPoints;
  final String selectedPeriod;
  final OverviewStatsModel stats;

  const OverviewModel({
    required this.dataPoints,
    required this.selectedPeriod,
    required this.stats,
  });

  factory OverviewModel.fromJson(Map<String, dynamic> json) =>
      _$OverviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewModelToJson(this);

  OverviewEntity toEntity() => OverviewEntity(
        dataPoints: dataPoints.map((e) => e.toEntity()).toList(),
        selectedPeriod: selectedPeriod,
        stats: stats.toEntity(),
      );

  factory OverviewModel.fromEntity(OverviewEntity entity) => OverviewModel(
        dataPoints: entity.dataPoints
            .map((e) => OverviewDataPointModel.fromEntity(e))
            .toList(),
        selectedPeriod: entity.selectedPeriod,
        stats: OverviewStatsModel.fromEntity(entity.stats),
      );
}

@JsonSerializable()
class OverviewDataPointModel {
  final String label;
  final double taskAssigned;
  final double overdue;
  final double completed;

  const OverviewDataPointModel({
    required this.label,
    required this.taskAssigned,
    required this.overdue,
    required this.completed,
  });

  factory OverviewDataPointModel.fromJson(Map<String, dynamic> json) =>
      _$OverviewDataPointModelFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewDataPointModelToJson(this);

  OverviewDataPointEntity toEntity() => OverviewDataPointEntity(
        label: label,
        taskAssigned: taskAssigned,
        overdue: overdue,
        completed: completed,
      );

  factory OverviewDataPointModel.fromEntity(OverviewDataPointEntity entity) =>
      OverviewDataPointModel(
        label: entity.label,
        taskAssigned: entity.taskAssigned,
        overdue: entity.overdue,
        completed: entity.completed,
      );
}

@JsonSerializable()
class OverviewStatsModel {
  final double completedPercentage;
  final double inProgressPercentage;
  final double yetToStartPercentage;

  const OverviewStatsModel({
    required this.completedPercentage,
    required this.inProgressPercentage,
    required this.yetToStartPercentage,
  });

  factory OverviewStatsModel.fromJson(Map<String, dynamic> json) =>
      _$OverviewStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewStatsModelToJson(this);

  OverviewStats toEntity() => OverviewStats(
        completedPercentage: completedPercentage,
        inProgressPercentage: inProgressPercentage,
        yetToStartPercentage: yetToStartPercentage,
      );

  factory OverviewStatsModel.fromEntity(OverviewStats entity) =>
      OverviewStatsModel(
        completedPercentage: entity.completedPercentage,
        inProgressPercentage: entity.inProgressPercentage,
        yetToStartPercentage: entity.yetToStartPercentage,
      );
}

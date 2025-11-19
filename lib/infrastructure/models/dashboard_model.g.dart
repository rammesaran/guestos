// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    DashboardModel(
      id: json['id'] as String,
      userInitials: json['userInitials'] as String,
      userName: json['userName'] as String,
      metrics: MetricsModel.fromJson(json['metrics'] as Map<String, dynamic>),
      upcomingMeetings: (json['upcomingMeetings'] as List<dynamic>)
          .map((e) => MeetingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fires: (json['fires'] as List<dynamic>)
          .map((e) => FireModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rocks: (json['rocks'] as List<dynamic>)
          .map((e) => RockModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: OverviewModel.fromJson(
        json['overview'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DashboardModelToJson(DashboardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userInitials': instance.userInitials,
      'userName': instance.userName,
      'metrics': instance.metrics,
      'upcomingMeetings': instance.upcomingMeetings,
      'todos': instance.todos,
      'fires': instance.fires,
      'rocks': instance.rocks,
      'overview': instance.overview,
    };

MetricsModel _$MetricsModelFromJson(Map<String, dynamic> json) => MetricsModel(
  rocksCount: (json['rocksCount'] as num).toInt(),
  rocksChange: (json['rocksChange'] as num).toDouble(),
  todosCount: (json['todosCount'] as num).toInt(),
  todosChange: (json['todosChange'] as num).toDouble(),
  firesCount: (json['firesCount'] as num).toInt(),
  firesChange: (json['firesChange'] as num).toDouble(),
);

Map<String, dynamic> _$MetricsModelToJson(MetricsModel instance) =>
    <String, dynamic>{
      'rocksCount': instance.rocksCount,
      'rocksChange': instance.rocksChange,
      'todosCount': instance.todosCount,
      'todosChange': instance.todosChange,
      'firesCount': instance.firesCount,
      'firesChange': instance.firesChange,
    };

MeetingModel _$MeetingModelFromJson(Map<String, dynamic> json) => MeetingModel(
  id: json['id'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  time: json['time'] as String,
  typeString: json['type'] as String,
  statusString: json['status'] as String,
  isCompleted: json['isCompleted'] as bool,
);

Map<String, dynamic> _$MeetingModelToJson(MeetingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'time': instance.time,
      'type': instance.typeString,
      'status': instance.statusString,
      'isCompleted': instance.isCompleted,
    };

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
  id: json['id'] as String,
  title: json['title'] as String,
  date: json['date'] as String,
  isCompleted: json['isCompleted'] as bool,
  priorityString: json['priority'] as String,
);

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'date': instance.date,
  'isCompleted': instance.isCompleted,
  'priority': instance.priorityString,
};

FireModel _$FireModelFromJson(Map<String, dynamic> json) => FireModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  statusString: json['status'] as String,
  progress: (json['progress'] as num).toDouble(),
);

Map<String, dynamic> _$FireModelToJson(FireModel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'status': instance.statusString,
  'progress': instance.progress,
};

RockModel _$RockModelFromJson(Map<String, dynamic> json) => RockModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  statusString: json['status'] as String,
  progress: (json['progress'] as num).toDouble(),
);

Map<String, dynamic> _$RockModelToJson(RockModel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'status': instance.statusString,
  'progress': instance.progress,
};

OverviewModel _$OverviewModelFromJson(Map<String, dynamic> json) =>
    OverviewModel(
      dataPoints: (json['dataPoints'] as List<dynamic>)
          .map(
            (e) => OverviewDataPointModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      selectedPeriod: json['selectedPeriod'] as String,
      stats: OverviewStatsModel.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OverviewModelToJson(OverviewModel instance) =>
    <String, dynamic>{
      'dataPoints': instance.dataPoints,
      'selectedPeriod': instance.selectedPeriod,
      'stats': instance.stats,
    };

OverviewDataPointModel _$OverviewDataPointModelFromJson(
  Map<String, dynamic> json,
) => OverviewDataPointModel(
  label: json['label'] as String,
  taskAssigned: (json['taskAssigned'] as num).toDouble(),
  overdue: (json['overdue'] as num).toDouble(),
  completed: (json['completed'] as num).toDouble(),
);

Map<String, dynamic> _$OverviewDataPointModelToJson(
  OverviewDataPointModel instance,
) => <String, dynamic>{
  'label': instance.label,
  'taskAssigned': instance.taskAssigned,
  'overdue': instance.overdue,
  'completed': instance.completed,
};

OverviewStatsModel _$OverviewStatsModelFromJson(Map<String, dynamic> json) =>
    OverviewStatsModel(
      completedPercentage: (json['completedPercentage'] as num).toDouble(),
      inProgressPercentage: (json['inProgressPercentage'] as num).toDouble(),
      yetToStartPercentage: (json['yetToStartPercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$OverviewStatsModelToJson(OverviewStatsModel instance) =>
    <String, dynamic>{
      'completedPercentage': instance.completedPercentage,
      'inProgressPercentage': instance.inProgressPercentage,
      'yetToStartPercentage': instance.yetToStartPercentage,
    };

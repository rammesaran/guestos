/// Data models for Tablet Dashboard

class DashboardTabletData {
  final String userInitials;
  final int rocksCount;
  final double rocksChange;
  final int todosCount;
  final double todosChange;
  final int firesCount;
  final double firesChange;
  final List<Meeting> upcomingMeetings;
  final List<Meeting> meetingsList;
  final List<OverviewDataPoint> overviewData;
  final int firesYetToStart;
  final int firesInProgress;
  final int firesCompleted;
  final List<TodoItemData> todosList;

  DashboardTabletData({
    required this.userInitials,
    required this.rocksCount,
    required this.rocksChange,
    required this.todosCount,
    required this.todosChange,
    required this.firesCount,
    required this.firesChange,
    required this.upcomingMeetings,
    required this.meetingsList,
    required this.overviewData,
    required this.firesYetToStart,
    required this.firesInProgress,
    required this.firesCompleted,
    required this.todosList,
  });

  int get totalFires => firesYetToStart + firesInProgress + firesCompleted;

  double get firesYetToStartPercentage =>
      totalFires > 0 ? (firesYetToStart / totalFires * 100) : 0;

  double get firesInProgressPercentage =>
      totalFires > 0 ? (firesInProgress / totalFires * 100) : 0;

  double get firesCompletedPercentage =>
      totalFires > 0 ? (firesCompleted / totalFires * 100) : 0;
}

class Meeting {
  final String id;
  final String title;
  final String subtitle;
  final String time;
  final String? avatarUrl;
  final String type; // video, audio, team, call
  final bool isCompleted;
  final String status; // Lead, 11:06 am, 11:18 am, Created

  Meeting({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.time,
    this.avatarUrl,
    this.type = 'video',
    this.isCompleted = false,
    this.status = 'Lead',
  });
}

class OverviewDataPoint {
  final String label; // "1/ Jan"
  final double taskAssigned;
  final double overdue;
  final double completed;

  OverviewDataPoint({
    required this.label,
    required this.taskAssigned,
    required this.overdue,
    required this.completed,
  });
}

class TodoItemData {
  final String id;
  final String date;
  final String title;
  final bool isCompleted;
  final bool hasMenu;

  TodoItemData({
    required this.id,
    required this.date,
    required this.title,
    this.isCompleted = false,
    this.hasMenu = true,
  });
}

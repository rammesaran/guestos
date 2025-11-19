/// Data models for Dashboard

class DashboardData {
  final String userName;
  final String subtitle;
  final String? userProfileImage;
  final MeetingData? upcomingMeeting;
  final double rocksProgress;
  final double firesProgress;
  final double todosProgress;
  final int todoCompleted;
  final int todoInProgress;
  final int todoYetToStart;
  final List<TodoItem> pendingTodos;
  final double firePercentage;
  final double rocksPercentage;

  DashboardData({
    required this.userName,
    this.subtitle = "This is your current To-Dos, Rock & Fires",
    this.userProfileImage,
    this.upcomingMeeting,
    this.rocksProgress = 0.0,
    this.firesProgress = 0.0,
    this.todosProgress = 0.0,
    this.todoCompleted = 0,
    this.todoInProgress = 0,
    this.todoYetToStart = 0,
    this.pendingTodos = const [],
    this.firePercentage = 0.0,
    this.rocksPercentage = 0.0,
  });

  int get totalTodos => todoCompleted + todoInProgress + todoYetToStart;

  double get completedPercentage =>
      totalTodos > 0 ? (todoCompleted / totalTodos * 100) : 0;

  double get inProgressPercentage =>
      totalTodos > 0 ? (todoInProgress / totalTodos * 100) : 0;

  double get yetToStartPercentage =>
      totalTodos > 0 ? (todoYetToStart / totalTodos * 100) : 0;
}

class MeetingData {
  final String title;
  final String subtitle;
  final String timeRemaining;
  final String? participantImage;
  final String meetingId;

  MeetingData({
    required this.title,
    required this.subtitle,
    required this.timeRemaining,
    this.participantImage,
    required this.meetingId,
  });
}

class TodoItem {
  final String id;
  final String title;
  final String dueDate;
  final TodoStatus status;

  TodoItem({
    required this.id,
    required this.title,
    required this.dueDate,
    this.status = TodoStatus.pending,
  });
}

enum TodoStatus { pending, inProgress, completed }

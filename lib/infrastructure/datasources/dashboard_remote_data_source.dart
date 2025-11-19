import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/dashboard_model.dart';
import '../../domain/entities/dashboard_entity.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardModel> getDashboardData({String? userId});
  Future<List<MeetingModel>> getUpcomingMeetings(
      {String? userId, int limit = 10});
  Future<List<TodoModel>> getTodos({String? userId, bool? isCompleted});
  Future<List<FireModel>> getFires({String? userId, FireStatus? status});
  Future<List<RockModel>> getRocks({String? userId, RockStatus? status});
  Future<OverviewModel> getOverviewData({String? userId, String? period});
  Future<MetricsModel> getMetrics({String? userId});
  Future<void> joinMeeting(String meetingId);
  Future<void> createMeeting(MeetingModel meeting);
  Future<void> updateTodo(TodoModel todo);
  Future<void> createTodo(TodoModel todo);
  Future<void> updateFire(FireModel fire);
  Future<void> createFire(FireModel fire);
  Future<void> updateRock(RockModel rock);
  Future<void> createRock(RockModel rock);
}

@LazySingleton(as: DashboardRemoteDataSource)
class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final Dio dio;

  DashboardRemoteDataSourceImpl(this.dio);

  @override
  Future<DashboardModel> getDashboardData({String? userId}) async {
    // Mock data for now - replace with actual API call
    await Future.delayed(const Duration(milliseconds: 500));
    return _getMockDashboardData();
  }

  @override
  Future<List<MeetingModel>> getUpcomingMeetings({
    String? userId,
    int limit = 10,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _getMockMeetings().take(limit).toList();
  }

  @override
  Future<List<TodoModel>> getTodos({String? userId, bool? isCompleted}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    var todos = _getMockTodos();
    if (isCompleted != null) {
      todos = todos.where((todo) => todo.isCompleted == isCompleted).toList();
    }
    return todos;
  }

  @override
  Future<List<FireModel>> getFires({String? userId, FireStatus? status}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    var fires = _getMockFires();
    if (status != null) {
      fires = fires.where((fire) => fire.toEntity().status == status).toList();
    }
    return fires;
  }

  @override
  Future<List<RockModel>> getRocks({String? userId, RockStatus? status}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    var rocks = _getMockRocks();
    if (status != null) {
      rocks = rocks.where((rock) => rock.toEntity().status == status).toList();
    }
    return rocks;
  }

  @override
  Future<OverviewModel> getOverviewData(
      {String? userId, String? period}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _getMockOverviewData();
  }

  @override
  Future<MetricsModel> getMetrics({String? userId}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _getMockMetrics();
  }

  @override
  Future<void> joinMeeting(String meetingId) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock join meeting implementation
  }

  @override
  Future<void> createMeeting(MeetingModel meeting) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock create meeting implementation
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock update todo implementation
  }

  @override
  Future<void> createTodo(TodoModel todo) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock create todo implementation
  }

  @override
  Future<void> updateFire(FireModel fire) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock update fire implementation
  }

  @override
  Future<void> createFire(FireModel fire) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock create fire implementation
  }

  @override
  Future<void> updateRock(RockModel rock) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock update rock implementation
  }

  @override
  Future<void> createRock(RockModel rock) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Mock create rock implementation
  }

  // Mock data methods
  DashboardModel _getMockDashboardData() {
    return DashboardModel(
      id: '1',
      userInitials: 'GT',
      userName: 'Daniel',
      metrics: _getMockMetrics(),
      upcomingMeetings: _getMockMeetings(),
      todos: _getMockTodos(),
      fires: _getMockFires(),
      rocks: _getMockRocks(),
      overview: _getMockOverviewData(),
    );
  }

  MetricsModel _getMockMetrics() {
    return const MetricsModel(
      rocksCount: 360,
      rocksChange: 9.70,
      todosCount: 280,
      todosChange: 8.45,
      firesCount: 200,
      firesChange: -7.45,
    );
  }

  List<MeetingModel> _getMockMeetings() {
    return const [
      MeetingModel(
        id: '1',
        title: 'Weekly 1-on-1',
        subtitle: 'Team strategy',
        time: 'Tue 02:09',
        typeString: 'video',
        statusString: 'scheduled',
        isCompleted: false,
      ),
      MeetingModel(
        id: '2',
        title: 'Weekly Team Meeting',
        subtitle: 'Leadership meeting',
        time: '1:23 pm',
        typeString: 'team',
        statusString: 'scheduled',
        isCompleted: false,
      ),
      MeetingModel(
        id: '3',
        title: 'Vision Session',
        subtitle: 'First Customer Call',
        time: '1:23 pm',
        typeString: 'call',
        statusString: 'scheduled',
        isCompleted: false,
      ),
    ];
  }

  List<TodoModel> _getMockTodos() {
    return const [
      TodoModel(
        id: '1',
        title: 'Set Up Conference Room B for 10 AM Meeting',
        date: 'Aug 16, 2025',
        isCompleted: true,
        priorityString: 'high',
      ),
      TodoModel(
        id: '2',
        title: 'Restock Housekeeping Supplies on 3rd Floor',
        date: 'Aug 20, 2025',
        isCompleted: false,
        priorityString: 'medium',
      ),
      TodoModel(
        id: '3',
        title: 'Inspect and Clean the Pool Area',
        date: 'Sep 04, 2025',
        isCompleted: false,
        priorityString: 'high',
      ),
      TodoModel(
        id: '4',
        title: 'Check-In Assistance During Peak Hours',
        date: 'Sep 06, 2025',
        isCompleted: false,
        priorityString: 'urgent',
      ),
    ];
  }

  List<FireModel> _getMockFires() {
    return const [
      FireModel(
        id: '1',
        title: 'Server Downtime Issue',
        description:
            'Identify and organize pressing issues to resolve them with ease.',
        statusString: 'inProgress',
        progress: 47.5,
      ),
      FireModel(
        id: '2',
        title: 'Security Vulnerability',
        description: 'Critical security patch needed immediately.',
        statusString: 'yetToStart',
        progress: 0.0,
      ),
    ];
  }

  List<RockModel> _getMockRocks() {
    return const [
      RockModel(
        id: '1',
        title: 'Quarterly Goals',
        description:
            'Set and track quarterly goals to help your team consistently hit their targets.',
        statusString: 'inProgress',
        progress: 47.5,
      ),
      RockModel(
        id: '2',
        title: 'Team Development',
        description: 'Focus on team skill development and training.',
        statusString: 'completed',
        progress: 100.0,
      ),
    ];
  }

  OverviewModel _getMockOverviewData() {
    final dataPoints = List.generate(31, (index) {
      final month = index + 1;
      final baseValue = 50 + (index % 10) * 15;
      return OverviewDataPointModel(
        label: '$month/ ${_getMonthName(index % 12)}',
        taskAssigned: (baseValue + 30 + (index % 5) * 10).toDouble(),
        overdue: (baseValue - 20 - (index % 4) * 5).toDouble(),
        completed: (baseValue + 50 + (index % 6) * 8).toDouble(),
      );
    });

    return OverviewModel(
      dataPoints: dataPoints,
      selectedPeriod: 'Last 30 Days',
      stats: const OverviewStatsModel(
        completedPercentage: 60.0,
        inProgressPercentage: 35.0,
        yetToStartPercentage: 5.0,
      ),
    );
  }

  String _getMonthName(int monthIndex) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[monthIndex];
  }
}

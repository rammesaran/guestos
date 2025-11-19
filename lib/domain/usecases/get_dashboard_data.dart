import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../entities/dashboard_entity.dart';
import '../repositories/dashboard_repository.dart';
import '../../core/error/failures.dart';

@injectable
class GetDashboardData {
  final DashboardRepository repository;

  GetDashboardData(this.repository);

  Future<Either<Failure, DashboardEntity>> call({
    String? userId,
  }) async {
    return await repository.getDashboardData(userId: userId);
  }
}

@injectable
class GetUpcomingMeetings {
  final DashboardRepository repository;

  GetUpcomingMeetings(this.repository);

  Future<Either<Failure, List<MeetingEntity>>> call({
    String? userId,
    int limit = 10,
  }) async {
    return await repository.getUpcomingMeetings(
      userId: userId,
      limit: limit,
    );
  }
}

@injectable
class JoinMeeting {
  final DashboardRepository repository;

  JoinMeeting(this.repository);

  Future<Either<Failure, Unit>> call(String meetingId) async {
    return await repository.joinMeeting(meetingId);
  }
}

@injectable
class CreateMeeting {
  final DashboardRepository repository;

  CreateMeeting(this.repository);

  Future<Either<Failure, Unit>> call(MeetingEntity meeting) async {
    return await repository.createMeeting(meeting);
  }
}

@injectable
class GetTodos {
  final DashboardRepository repository;

  GetTodos(this.repository);

  Future<Either<Failure, List<TodoEntity>>> call({
    String? userId,
    bool? isCompleted,
  }) async {
    return await repository.getTodos(
      userId: userId,
      isCompleted: isCompleted,
    );
  }
}

@injectable
class UpdateTodo {
  final DashboardRepository repository;

  UpdateTodo(this.repository);

  Future<Either<Failure, Unit>> call(TodoEntity todo) async {
    return await repository.updateTodo(todo);
  }
}

@injectable
class CreateTodo {
  final DashboardRepository repository;

  CreateTodo(this.repository);

  Future<Either<Failure, Unit>> call(TodoEntity todo) async {
    return await repository.createTodo(todo);
  }
}

@injectable
class GetMetrics {
  final DashboardRepository repository;

  GetMetrics(this.repository);

  Future<Either<Failure, MetricsEntity>> call({
    String? userId,
  }) async {
    return await repository.getMetrics(userId: userId);
  }
}

@injectable
class GetOverviewData {
  final DashboardRepository repository;

  GetOverviewData(this.repository);

  Future<Either<Failure, OverviewEntity>> call({
    String? userId,
    String? period,
  }) async {
    return await repository.getOverviewData(
      userId: userId,
      period: period,
    );
  }
}

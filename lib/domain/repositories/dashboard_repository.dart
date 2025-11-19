import 'package:dartz/dartz.dart';
import '../entities/dashboard_entity.dart';
import '../../core/error/failures.dart';

abstract class DashboardRepository {
  Future<Either<Failure, DashboardEntity>> getDashboardData({
    String? userId,
  });

  Future<Either<Failure, List<MeetingEntity>>> getUpcomingMeetings({
    String? userId,
    int limit = 10,
  });

  Future<Either<Failure, List<TodoEntity>>> getTodos({
    String? userId,
    bool? isCompleted,
  });

  Future<Either<Failure, List<FireEntity>>> getFires({
    String? userId,
    FireStatus? status,
  });

  Future<Either<Failure, List<RockEntity>>> getRocks({
    String? userId,
    RockStatus? status,
  });

  Future<Either<Failure, OverviewEntity>> getOverviewData({
    String? userId,
    String? period,
  });

  Future<Either<Failure, MetricsEntity>> getMetrics({
    String? userId,
  });

  // Action methods
  Future<Either<Failure, Unit>> joinMeeting(String meetingId);
  Future<Either<Failure, Unit>> createMeeting(MeetingEntity meeting);
  Future<Either<Failure, Unit>> updateTodo(TodoEntity todo);
  Future<Either<Failure, Unit>> createTodo(TodoEntity todo);
  Future<Either<Failure, Unit>> updateFire(FireEntity fire);
  Future<Either<Failure, Unit>> createFire(FireEntity fire);
  Future<Either<Failure, Unit>> updateRock(RockEntity rock);
  Future<Either<Failure, Unit>> createRock(RockEntity rock);
}

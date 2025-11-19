import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../../core/error/failures.dart';
import '../datasources/dashboard_remote_data_source.dart';
import '../models/dashboard_model.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource remoteDataSource;

  DashboardRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, DashboardEntity>> getDashboardData({
    String? userId,
  }) async {
    try {
      final result = await remoteDataSource.getDashboardData(userId: userId);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getUpcomingMeetings({
    String? userId,
    int limit = 10,
  }) async {
    try {
      final result = await remoteDataSource.getUpcomingMeetings(
        userId: userId,
        limit: limit,
      );
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TodoEntity>>> getTodos({
    String? userId,
    bool? isCompleted,
  }) async {
    try {
      final result = await remoteDataSource.getTodos(
        userId: userId,
        isCompleted: isCompleted,
      );
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<FireEntity>>> getFires({
    String? userId,
    FireStatus? status,
  }) async {
    try {
      final result = await remoteDataSource.getFires(
        userId: userId,
        status: status,
      );
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RockEntity>>> getRocks({
    String? userId,
    RockStatus? status,
  }) async {
    try {
      final result = await remoteDataSource.getRocks(
        userId: userId,
        status: status,
      );
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, OverviewEntity>> getOverviewData({
    String? userId,
    String? period,
  }) async {
    try {
      final result = await remoteDataSource.getOverviewData(
        userId: userId,
        period: period,
      );
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MetricsEntity>> getMetrics({
    String? userId,
  }) async {
    try {
      final result = await remoteDataSource.getMetrics(userId: userId);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> joinMeeting(String meetingId) async {
    try {
      await remoteDataSource.joinMeeting(meetingId);
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createMeeting(MeetingEntity meeting) async {
    try {
      await remoteDataSource.createMeeting(MeetingModel.fromEntity(meeting));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTodo(TodoEntity todo) async {
    try {
      await remoteDataSource.updateTodo(TodoModel.fromEntity(todo));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createTodo(TodoEntity todo) async {
    try {
      await remoteDataSource.createTodo(TodoModel.fromEntity(todo));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateFire(FireEntity fire) async {
    try {
      await remoteDataSource.updateFire(FireModel.fromEntity(fire));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createFire(FireEntity fire) async {
    try {
      await remoteDataSource.createFire(FireModel.fromEntity(fire));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateRock(RockEntity rock) async {
    try {
      await remoteDataSource.updateRock(RockModel.fromEntity(rock));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createRock(RockEntity rock) async {
    try {
      await remoteDataSource.createRock(RockModel.fromEntity(rock));
      return const Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }
}

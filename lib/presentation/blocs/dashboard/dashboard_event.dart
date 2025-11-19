import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/dashboard_entity.dart';

part 'dashboard_event.freezed.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.loadDashboard({
    String? userId,
  }) = _LoadDashboard;

  const factory DashboardEvent.refreshDashboard({
    String? userId,
  }) = _RefreshDashboard;

  const factory DashboardEvent.joinMeeting({
    required String meetingId,
  }) = _JoinMeeting;

  const factory DashboardEvent.createMeeting({
    required MeetingEntity meeting,
  }) = _CreateMeeting;

  const factory DashboardEvent.updateTodo({
    required TodoEntity todo,
  }) = _UpdateTodo;

  const factory DashboardEvent.createTodo({
    required TodoEntity todo,
  }) = _CreateTodo;

  const factory DashboardEvent.updateFire({
    required FireEntity fire,
  }) = _UpdateFire;

  const factory DashboardEvent.createFire({
    required FireEntity fire,
  }) = _CreateFire;

  const factory DashboardEvent.updateRock({
    required RockEntity rock,
  }) = _UpdateRock;

  const factory DashboardEvent.createRock({
    required RockEntity rock,
  }) = _CreateRock;
}

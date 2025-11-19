import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/dashboard_entity.dart';
import '../../../core/error/failures.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;

  const factory DashboardState.loading() = _Loading;

  const factory DashboardState.loaded({
    required DashboardEntity dashboard,
    required bool isRefreshing,
  }) = _Loaded;

  const factory DashboardState.error({
    required Failure failure,
    DashboardEntity? lastDashboard,
  }) = _Error;
}

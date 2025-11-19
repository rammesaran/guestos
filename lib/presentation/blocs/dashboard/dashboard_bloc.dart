import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_dashboard_data.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetDashboardData _getDashboardData;
  final JoinMeeting _joinMeeting;
  final CreateMeeting _createMeeting;
  final UpdateTodo _updateTodo;
  final CreateTodo _createTodo;

  DashboardBloc(
    this._getDashboardData,
    this._joinMeeting,
    this._createMeeting,
    this._updateTodo,
    this._createTodo,
  ) : super(const DashboardState.initial()) {
    on<DashboardEvent>(_onDashboardEvent);
  }

  Future<void> _onDashboardEvent(
    DashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await event.when(
      loadDashboard: (userId) => _onLoadDashboard(emit, userId),
      refreshDashboard: (userId) => _onRefreshDashboard(emit, userId),
      joinMeeting: (meetingId) => _onJoinMeeting(emit, meetingId),
      createMeeting: (meeting) => _onCreateMeeting(emit, meeting),
      updateTodo: (todo) => _onUpdateTodo(emit, todo),
      createTodo: (todo) => _onCreateTodo(emit, todo),
      updateFire: (fire) => _onUpdateFire(emit, fire),
      createFire: (fire) => _onCreateFire(emit, fire),
      updateRock: (rock) => _onUpdateRock(emit, rock),
      createRock: (rock) => _onCreateRock(emit, rock),
    );
  }

  Future<void> _onLoadDashboard(
    Emitter<DashboardState> emit,
    String? userId,
  ) async {
    emit(const DashboardState.loading());

    final result = await _getDashboardData(userId: userId);

    result.fold(
      (failure) => emit(DashboardState.error(failure: failure)),
      (dashboard) => emit(DashboardState.loaded(
        dashboard: dashboard,
        isRefreshing: false,
      )),
    );
  }

  Future<void> _onRefreshDashboard(
    Emitter<DashboardState> emit,
    String? userId,
  ) async {
    final currentState = state;

    // Show refreshing state only if we have loaded data
    currentState.maybeWhen(
      loaded: (dashboard, _) {
        emit(DashboardState.loaded(
          dashboard: dashboard,
          isRefreshing: true,
        ));
      },
      orElse: () {
        emit(const DashboardState.loading());
      },
    );

    final result = await _getDashboardData(userId: userId);

    result.fold(
      (failure) => emit(DashboardState.error(
        failure: failure,
        lastDashboard: currentState.maybeWhen(
          loaded: (dashboard, _) => dashboard,
          orElse: () => null,
        ),
      )),
      (dashboard) => emit(DashboardState.loaded(
        dashboard: dashboard,
        isRefreshing: false,
      )),
    );
  }

  Future<void> _onJoinMeeting(
    Emitter<DashboardState> emit,
    String meetingId,
  ) async {
    final result = await _joinMeeting(meetingId);

    result.fold(
      (failure) {
        // Handle join meeting error - could show a snackbar in UI
      },
      (_) {
        // Successfully joined meeting - could refresh dashboard if needed
        add(const DashboardEvent.refreshDashboard());
      },
    );
  }

  Future<void> _onCreateMeeting(
    Emitter<DashboardState> emit,
    meeting,
  ) async {
    final result = await _createMeeting(meeting);

    result.fold(
      (failure) {
        // Handle create meeting error
      },
      (_) {
        add(const DashboardEvent.refreshDashboard());
      },
    );
  }

  Future<void> _onUpdateTodo(
    Emitter<DashboardState> emit,
    todo,
  ) async {
    final result = await _updateTodo(todo);

    result.fold(
      (failure) {
        // Handle update todo error
      },
      (_) {
        add(const DashboardEvent.refreshDashboard());
      },
    );
  }

  Future<void> _onCreateTodo(
    Emitter<DashboardState> emit,
    todo,
  ) async {
    final result = await _createTodo(todo);

    result.fold(
      (failure) {
        // Handle create todo error
      },
      (_) {
        add(const DashboardEvent.refreshDashboard());
      },
    );
  }

  Future<void> _onUpdateFire(
    Emitter<DashboardState> emit,
    fire,
  ) async {
    // Mock implementation for fire update
    add(const DashboardEvent.refreshDashboard());
  }

  Future<void> _onCreateFire(
    Emitter<DashboardState> emit,
    fire,
  ) async {
    // Mock implementation for fire creation
    add(const DashboardEvent.refreshDashboard());
  }

  Future<void> _onUpdateRock(
    Emitter<DashboardState> emit,
    rock,
  ) async {
    // Mock implementation for rock update
    add(const DashboardEvent.refreshDashboard());
  }

  Future<void> _onCreateRock(
    Emitter<DashboardState> emit,
    rock,
  ) async {
    // Mock implementation for rock creation
    add(const DashboardEvent.refreshDashboard());
  }
}

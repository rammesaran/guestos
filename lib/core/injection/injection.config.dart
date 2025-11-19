// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:guestos/domain/repositories/dashboard_repository.dart' as _i170;
import 'package:guestos/domain/usecases/get_dashboard_data.dart' as _i846;
import 'package:guestos/infrastructure/datasources/dashboard_remote_data_source.dart'
    as _i779;
import 'package:guestos/infrastructure/repositories/dashboard_repository_impl.dart'
    as _i228;
import 'package:guestos/presentation/blocs/dashboard/dashboard_bloc.dart'
    as _i1008;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i779.DashboardRemoteDataSource>(
      () => _i779.DashboardRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i170.DashboardRepository>(
      () =>
          _i228.DashboardRepositoryImpl(gh<_i779.DashboardRemoteDataSource>()),
    );
    gh.factory<_i846.GetDashboardData>(
      () => _i846.GetDashboardData(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.GetUpcomingMeetings>(
      () => _i846.GetUpcomingMeetings(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.JoinMeeting>(
      () => _i846.JoinMeeting(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.CreateMeeting>(
      () => _i846.CreateMeeting(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.GetTodos>(
      () => _i846.GetTodos(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.UpdateTodo>(
      () => _i846.UpdateTodo(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.CreateTodo>(
      () => _i846.CreateTodo(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.GetMetrics>(
      () => _i846.GetMetrics(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i846.GetOverviewData>(
      () => _i846.GetOverviewData(gh<_i170.DashboardRepository>()),
    );
    gh.factory<_i1008.DashboardBloc>(
      () => _i1008.DashboardBloc(
        gh<_i846.GetDashboardData>(),
        gh<_i846.JoinMeeting>(),
        gh<_i846.CreateMeeting>(),
        gh<_i846.UpdateTodo>(),
        gh<_i846.CreateTodo>(),
      ),
    );
    return this;
  }
}

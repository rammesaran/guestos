// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
    DashboardEvent value,
    $Res Function(DashboardEvent) then,
  ) = _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadDashboardImplCopyWith<$Res> {
  factory _$$LoadDashboardImplCopyWith(
    _$LoadDashboardImpl value,
    $Res Function(_$LoadDashboardImpl) then,
  ) = __$$LoadDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$LoadDashboardImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$LoadDashboardImpl>
    implements _$$LoadDashboardImplCopyWith<$Res> {
  __$$LoadDashboardImplCopyWithImpl(
    _$LoadDashboardImpl _value,
    $Res Function(_$LoadDashboardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = freezed}) {
    return _then(
      _$LoadDashboardImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoadDashboardImpl implements _LoadDashboard {
  const _$LoadDashboardImpl({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'DashboardEvent.loadDashboard(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDashboardImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDashboardImplCopyWith<_$LoadDashboardImpl> get copyWith =>
      __$$LoadDashboardImplCopyWithImpl<_$LoadDashboardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return loadDashboard(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return loadDashboard?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (loadDashboard != null) {
      return loadDashboard(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return loadDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return loadDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (loadDashboard != null) {
      return loadDashboard(this);
    }
    return orElse();
  }
}

abstract class _LoadDashboard implements DashboardEvent {
  const factory _LoadDashboard({final String? userId}) = _$LoadDashboardImpl;

  String? get userId;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDashboardImplCopyWith<_$LoadDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshDashboardImplCopyWith<$Res> {
  factory _$$RefreshDashboardImplCopyWith(
    _$RefreshDashboardImpl value,
    $Res Function(_$RefreshDashboardImpl) then,
  ) = __$$RefreshDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$RefreshDashboardImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$RefreshDashboardImpl>
    implements _$$RefreshDashboardImplCopyWith<$Res> {
  __$$RefreshDashboardImplCopyWithImpl(
    _$RefreshDashboardImpl _value,
    $Res Function(_$RefreshDashboardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = freezed}) {
    return _then(
      _$RefreshDashboardImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$RefreshDashboardImpl implements _RefreshDashboard {
  const _$RefreshDashboardImpl({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'DashboardEvent.refreshDashboard(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshDashboardImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshDashboardImplCopyWith<_$RefreshDashboardImpl> get copyWith =>
      __$$RefreshDashboardImplCopyWithImpl<_$RefreshDashboardImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return refreshDashboard(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return refreshDashboard?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (refreshDashboard != null) {
      return refreshDashboard(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return refreshDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return refreshDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (refreshDashboard != null) {
      return refreshDashboard(this);
    }
    return orElse();
  }
}

abstract class _RefreshDashboard implements DashboardEvent {
  const factory _RefreshDashboard({final String? userId}) =
      _$RefreshDashboardImpl;

  String? get userId;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshDashboardImplCopyWith<_$RefreshDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinMeetingImplCopyWith<$Res> {
  factory _$$JoinMeetingImplCopyWith(
    _$JoinMeetingImpl value,
    $Res Function(_$JoinMeetingImpl) then,
  ) = __$$JoinMeetingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String meetingId});
}

/// @nodoc
class __$$JoinMeetingImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$JoinMeetingImpl>
    implements _$$JoinMeetingImplCopyWith<$Res> {
  __$$JoinMeetingImplCopyWithImpl(
    _$JoinMeetingImpl _value,
    $Res Function(_$JoinMeetingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? meetingId = null}) {
    return _then(
      _$JoinMeetingImpl(
        meetingId: null == meetingId
            ? _value.meetingId
            : meetingId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$JoinMeetingImpl implements _JoinMeeting {
  const _$JoinMeetingImpl({required this.meetingId});

  @override
  final String meetingId;

  @override
  String toString() {
    return 'DashboardEvent.joinMeeting(meetingId: $meetingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinMeetingImpl &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetingId);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinMeetingImplCopyWith<_$JoinMeetingImpl> get copyWith =>
      __$$JoinMeetingImplCopyWithImpl<_$JoinMeetingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return joinMeeting(meetingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return joinMeeting?.call(meetingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (joinMeeting != null) {
      return joinMeeting(meetingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return joinMeeting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return joinMeeting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (joinMeeting != null) {
      return joinMeeting(this);
    }
    return orElse();
  }
}

abstract class _JoinMeeting implements DashboardEvent {
  const factory _JoinMeeting({required final String meetingId}) =
      _$JoinMeetingImpl;

  String get meetingId;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinMeetingImplCopyWith<_$JoinMeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateMeetingImplCopyWith<$Res> {
  factory _$$CreateMeetingImplCopyWith(
    _$CreateMeetingImpl value,
    $Res Function(_$CreateMeetingImpl) then,
  ) = __$$CreateMeetingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MeetingEntity meeting});

  $MeetingEntityCopyWith<$Res> get meeting;
}

/// @nodoc
class __$$CreateMeetingImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$CreateMeetingImpl>
    implements _$$CreateMeetingImplCopyWith<$Res> {
  __$$CreateMeetingImplCopyWithImpl(
    _$CreateMeetingImpl _value,
    $Res Function(_$CreateMeetingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? meeting = null}) {
    return _then(
      _$CreateMeetingImpl(
        meeting: null == meeting
            ? _value.meeting
            : meeting // ignore: cast_nullable_to_non_nullable
                  as MeetingEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingEntityCopyWith<$Res> get meeting {
    return $MeetingEntityCopyWith<$Res>(_value.meeting, (value) {
      return _then(_value.copyWith(meeting: value));
    });
  }
}

/// @nodoc

class _$CreateMeetingImpl implements _CreateMeeting {
  const _$CreateMeetingImpl({required this.meeting});

  @override
  final MeetingEntity meeting;

  @override
  String toString() {
    return 'DashboardEvent.createMeeting(meeting: $meeting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMeetingImpl &&
            (identical(other.meeting, meeting) || other.meeting == meeting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meeting);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMeetingImplCopyWith<_$CreateMeetingImpl> get copyWith =>
      __$$CreateMeetingImplCopyWithImpl<_$CreateMeetingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return createMeeting(meeting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return createMeeting?.call(meeting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (createMeeting != null) {
      return createMeeting(meeting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return createMeeting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return createMeeting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (createMeeting != null) {
      return createMeeting(this);
    }
    return orElse();
  }
}

abstract class _CreateMeeting implements DashboardEvent {
  const factory _CreateMeeting({required final MeetingEntity meeting}) =
      _$CreateMeetingImpl;

  MeetingEntity get meeting;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMeetingImplCopyWith<_$CreateMeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTodoImplCopyWith<$Res> {
  factory _$$UpdateTodoImplCopyWith(
    _$UpdateTodoImpl value,
    $Res Function(_$UpdateTodoImpl) then,
  ) = __$$UpdateTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});

  $TodoEntityCopyWith<$Res> get todo;
}

/// @nodoc
class __$$UpdateTodoImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$UpdateTodoImpl>
    implements _$$UpdateTodoImplCopyWith<$Res> {
  __$$UpdateTodoImplCopyWithImpl(
    _$UpdateTodoImpl _value,
    $Res Function(_$UpdateTodoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todo = null}) {
    return _then(
      _$UpdateTodoImpl(
        todo: null == todo
            ? _value.todo
            : todo // ignore: cast_nullable_to_non_nullable
                  as TodoEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res> get todo {
    return $TodoEntityCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$UpdateTodoImpl implements _UpdateTodo {
  const _$UpdateTodoImpl({required this.todo});

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'DashboardEvent.updateTodo(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoImplCopyWith<_$UpdateTodoImpl> get copyWith =>
      __$$UpdateTodoImplCopyWithImpl<_$UpdateTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return updateTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodo implements DashboardEvent {
  const factory _UpdateTodo({required final TodoEntity todo}) =
      _$UpdateTodoImpl;

  TodoEntity get todo;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTodoImplCopyWith<_$UpdateTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTodoImplCopyWith<$Res> {
  factory _$$CreateTodoImplCopyWith(
    _$CreateTodoImpl value,
    $Res Function(_$CreateTodoImpl) then,
  ) = __$$CreateTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});

  $TodoEntityCopyWith<$Res> get todo;
}

/// @nodoc
class __$$CreateTodoImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$CreateTodoImpl>
    implements _$$CreateTodoImplCopyWith<$Res> {
  __$$CreateTodoImplCopyWithImpl(
    _$CreateTodoImpl _value,
    $Res Function(_$CreateTodoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todo = null}) {
    return _then(
      _$CreateTodoImpl(
        todo: null == todo
            ? _value.todo
            : todo // ignore: cast_nullable_to_non_nullable
                  as TodoEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res> get todo {
    return $TodoEntityCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$CreateTodoImpl implements _CreateTodo {
  const _$CreateTodoImpl({required this.todo});

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'DashboardEvent.createTodo(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoImplCopyWith<_$CreateTodoImpl> get copyWith =>
      __$$CreateTodoImplCopyWithImpl<_$CreateTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return createTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return createTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return createTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return createTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (createTodo != null) {
      return createTodo(this);
    }
    return orElse();
  }
}

abstract class _CreateTodo implements DashboardEvent {
  const factory _CreateTodo({required final TodoEntity todo}) =
      _$CreateTodoImpl;

  TodoEntity get todo;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTodoImplCopyWith<_$CreateTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFireImplCopyWith<$Res> {
  factory _$$UpdateFireImplCopyWith(
    _$UpdateFireImpl value,
    $Res Function(_$UpdateFireImpl) then,
  ) = __$$UpdateFireImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FireEntity fire});

  $FireEntityCopyWith<$Res> get fire;
}

/// @nodoc
class __$$UpdateFireImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$UpdateFireImpl>
    implements _$$UpdateFireImplCopyWith<$Res> {
  __$$UpdateFireImplCopyWithImpl(
    _$UpdateFireImpl _value,
    $Res Function(_$UpdateFireImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fire = null}) {
    return _then(
      _$UpdateFireImpl(
        fire: null == fire
            ? _value.fire
            : fire // ignore: cast_nullable_to_non_nullable
                  as FireEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FireEntityCopyWith<$Res> get fire {
    return $FireEntityCopyWith<$Res>(_value.fire, (value) {
      return _then(_value.copyWith(fire: value));
    });
  }
}

/// @nodoc

class _$UpdateFireImpl implements _UpdateFire {
  const _$UpdateFireImpl({required this.fire});

  @override
  final FireEntity fire;

  @override
  String toString() {
    return 'DashboardEvent.updateFire(fire: $fire)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFireImpl &&
            (identical(other.fire, fire) || other.fire == fire));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fire);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFireImplCopyWith<_$UpdateFireImpl> get copyWith =>
      __$$UpdateFireImplCopyWithImpl<_$UpdateFireImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return updateFire(fire);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return updateFire?.call(fire);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (updateFire != null) {
      return updateFire(fire);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return updateFire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return updateFire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (updateFire != null) {
      return updateFire(this);
    }
    return orElse();
  }
}

abstract class _UpdateFire implements DashboardEvent {
  const factory _UpdateFire({required final FireEntity fire}) =
      _$UpdateFireImpl;

  FireEntity get fire;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFireImplCopyWith<_$UpdateFireImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateFireImplCopyWith<$Res> {
  factory _$$CreateFireImplCopyWith(
    _$CreateFireImpl value,
    $Res Function(_$CreateFireImpl) then,
  ) = __$$CreateFireImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FireEntity fire});

  $FireEntityCopyWith<$Res> get fire;
}

/// @nodoc
class __$$CreateFireImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$CreateFireImpl>
    implements _$$CreateFireImplCopyWith<$Res> {
  __$$CreateFireImplCopyWithImpl(
    _$CreateFireImpl _value,
    $Res Function(_$CreateFireImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fire = null}) {
    return _then(
      _$CreateFireImpl(
        fire: null == fire
            ? _value.fire
            : fire // ignore: cast_nullable_to_non_nullable
                  as FireEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FireEntityCopyWith<$Res> get fire {
    return $FireEntityCopyWith<$Res>(_value.fire, (value) {
      return _then(_value.copyWith(fire: value));
    });
  }
}

/// @nodoc

class _$CreateFireImpl implements _CreateFire {
  const _$CreateFireImpl({required this.fire});

  @override
  final FireEntity fire;

  @override
  String toString() {
    return 'DashboardEvent.createFire(fire: $fire)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFireImpl &&
            (identical(other.fire, fire) || other.fire == fire));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fire);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFireImplCopyWith<_$CreateFireImpl> get copyWith =>
      __$$CreateFireImplCopyWithImpl<_$CreateFireImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return createFire(fire);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return createFire?.call(fire);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (createFire != null) {
      return createFire(fire);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return createFire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return createFire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (createFire != null) {
      return createFire(this);
    }
    return orElse();
  }
}

abstract class _CreateFire implements DashboardEvent {
  const factory _CreateFire({required final FireEntity fire}) =
      _$CreateFireImpl;

  FireEntity get fire;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFireImplCopyWith<_$CreateFireImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRockImplCopyWith<$Res> {
  factory _$$UpdateRockImplCopyWith(
    _$UpdateRockImpl value,
    $Res Function(_$UpdateRockImpl) then,
  ) = __$$UpdateRockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$$UpdateRockImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$UpdateRockImpl>
    implements _$$UpdateRockImplCopyWith<$Res> {
  __$$UpdateRockImplCopyWithImpl(
    _$UpdateRockImpl _value,
    $Res Function(_$UpdateRockImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rock = null}) {
    return _then(
      _$UpdateRockImpl(
        rock: null == rock
            ? _value.rock
            : rock // ignore: cast_nullable_to_non_nullable
                  as RockEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RockEntityCopyWith<$Res> get rock {
    return $RockEntityCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$UpdateRockImpl implements _UpdateRock {
  const _$UpdateRockImpl({required this.rock});

  @override
  final RockEntity rock;

  @override
  String toString() {
    return 'DashboardEvent.updateRock(rock: $rock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRockImpl &&
            (identical(other.rock, rock) || other.rock == rock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRockImplCopyWith<_$UpdateRockImpl> get copyWith =>
      __$$UpdateRockImplCopyWithImpl<_$UpdateRockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return updateRock(rock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return updateRock?.call(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (updateRock != null) {
      return updateRock(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return updateRock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return updateRock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (updateRock != null) {
      return updateRock(this);
    }
    return orElse();
  }
}

abstract class _UpdateRock implements DashboardEvent {
  const factory _UpdateRock({required final RockEntity rock}) =
      _$UpdateRockImpl;

  RockEntity get rock;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRockImplCopyWith<_$UpdateRockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRockImplCopyWith<$Res> {
  factory _$$CreateRockImplCopyWith(
    _$CreateRockImpl value,
    $Res Function(_$CreateRockImpl) then,
  ) = __$$CreateRockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$$CreateRockImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$CreateRockImpl>
    implements _$$CreateRockImplCopyWith<$Res> {
  __$$CreateRockImplCopyWithImpl(
    _$CreateRockImpl _value,
    $Res Function(_$CreateRockImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rock = null}) {
    return _then(
      _$CreateRockImpl(
        rock: null == rock
            ? _value.rock
            : rock // ignore: cast_nullable_to_non_nullable
                  as RockEntity,
      ),
    );
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RockEntityCopyWith<$Res> get rock {
    return $RockEntityCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$CreateRockImpl implements _CreateRock {
  const _$CreateRockImpl({required this.rock});

  @override
  final RockEntity rock;

  @override
  String toString() {
    return 'DashboardEvent.createRock(rock: $rock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRockImpl &&
            (identical(other.rock, rock) || other.rock == rock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRockImplCopyWith<_$CreateRockImpl> get copyWith =>
      __$$CreateRockImplCopyWithImpl<_$CreateRockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) loadDashboard,
    required TResult Function(String? userId) refreshDashboard,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function(MeetingEntity meeting) createMeeting,
    required TResult Function(TodoEntity todo) updateTodo,
    required TResult Function(TodoEntity todo) createTodo,
    required TResult Function(FireEntity fire) updateFire,
    required TResult Function(FireEntity fire) createFire,
    required TResult Function(RockEntity rock) updateRock,
    required TResult Function(RockEntity rock) createRock,
  }) {
    return createRock(rock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? loadDashboard,
    TResult? Function(String? userId)? refreshDashboard,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function(MeetingEntity meeting)? createMeeting,
    TResult? Function(TodoEntity todo)? updateTodo,
    TResult? Function(TodoEntity todo)? createTodo,
    TResult? Function(FireEntity fire)? updateFire,
    TResult? Function(FireEntity fire)? createFire,
    TResult? Function(RockEntity rock)? updateRock,
    TResult? Function(RockEntity rock)? createRock,
  }) {
    return createRock?.call(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? loadDashboard,
    TResult Function(String? userId)? refreshDashboard,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function(MeetingEntity meeting)? createMeeting,
    TResult Function(TodoEntity todo)? updateTodo,
    TResult Function(TodoEntity todo)? createTodo,
    TResult Function(FireEntity fire)? updateFire,
    TResult Function(FireEntity fire)? createFire,
    TResult Function(RockEntity rock)? updateRock,
    TResult Function(RockEntity rock)? createRock,
    required TResult orElse(),
  }) {
    if (createRock != null) {
      return createRock(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboard value) loadDashboard,
    required TResult Function(_RefreshDashboard value) refreshDashboard,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_CreateMeeting value) createMeeting,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_CreateTodo value) createTodo,
    required TResult Function(_UpdateFire value) updateFire,
    required TResult Function(_CreateFire value) createFire,
    required TResult Function(_UpdateRock value) updateRock,
    required TResult Function(_CreateRock value) createRock,
  }) {
    return createRock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboard value)? loadDashboard,
    TResult? Function(_RefreshDashboard value)? refreshDashboard,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_CreateMeeting value)? createMeeting,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_CreateTodo value)? createTodo,
    TResult? Function(_UpdateFire value)? updateFire,
    TResult? Function(_CreateFire value)? createFire,
    TResult? Function(_UpdateRock value)? updateRock,
    TResult? Function(_CreateRock value)? createRock,
  }) {
    return createRock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboard value)? loadDashboard,
    TResult Function(_RefreshDashboard value)? refreshDashboard,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_CreateMeeting value)? createMeeting,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_CreateTodo value)? createTodo,
    TResult Function(_UpdateFire value)? updateFire,
    TResult Function(_CreateFire value)? createFire,
    TResult Function(_UpdateRock value)? updateRock,
    TResult Function(_CreateRock value)? createRock,
    required TResult orElse(),
  }) {
    if (createRock != null) {
      return createRock(this);
    }
    return orElse();
  }
}

abstract class _CreateRock implements DashboardEvent {
  const factory _CreateRock({required final RockEntity rock}) =
      _$CreateRockImpl;

  RockEntity get rock;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRockImplCopyWith<_$CreateRockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

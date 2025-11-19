// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DashboardEntity {
  String get id => throw _privateConstructorUsedError;
  String get userInitials => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  MetricsEntity get metrics => throw _privateConstructorUsedError;
  List<MeetingEntity> get upcomingMeetings =>
      throw _privateConstructorUsedError;
  List<TodoEntity> get todos => throw _privateConstructorUsedError;
  List<FireEntity> get fires => throw _privateConstructorUsedError;
  List<RockEntity> get rocks => throw _privateConstructorUsedError;
  OverviewEntity get overview => throw _privateConstructorUsedError;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardEntityCopyWith<DashboardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEntityCopyWith<$Res> {
  factory $DashboardEntityCopyWith(
    DashboardEntity value,
    $Res Function(DashboardEntity) then,
  ) = _$DashboardEntityCopyWithImpl<$Res, DashboardEntity>;
  @useResult
  $Res call({
    String id,
    String userInitials,
    String userName,
    MetricsEntity metrics,
    List<MeetingEntity> upcomingMeetings,
    List<TodoEntity> todos,
    List<FireEntity> fires,
    List<RockEntity> rocks,
    OverviewEntity overview,
  });

  $MetricsEntityCopyWith<$Res> get metrics;
  $OverviewEntityCopyWith<$Res> get overview;
}

/// @nodoc
class _$DashboardEntityCopyWithImpl<$Res, $Val extends DashboardEntity>
    implements $DashboardEntityCopyWith<$Res> {
  _$DashboardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInitials = null,
    Object? userName = null,
    Object? metrics = null,
    Object? upcomingMeetings = null,
    Object? todos = null,
    Object? fires = null,
    Object? rocks = null,
    Object? overview = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userInitials: null == userInitials
                ? _value.userInitials
                : userInitials // ignore: cast_nullable_to_non_nullable
                      as String,
            userName: null == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String,
            metrics: null == metrics
                ? _value.metrics
                : metrics // ignore: cast_nullable_to_non_nullable
                      as MetricsEntity,
            upcomingMeetings: null == upcomingMeetings
                ? _value.upcomingMeetings
                : upcomingMeetings // ignore: cast_nullable_to_non_nullable
                      as List<MeetingEntity>,
            todos: null == todos
                ? _value.todos
                : todos // ignore: cast_nullable_to_non_nullable
                      as List<TodoEntity>,
            fires: null == fires
                ? _value.fires
                : fires // ignore: cast_nullable_to_non_nullable
                      as List<FireEntity>,
            rocks: null == rocks
                ? _value.rocks
                : rocks // ignore: cast_nullable_to_non_nullable
                      as List<RockEntity>,
            overview: null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as OverviewEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetricsEntityCopyWith<$Res> get metrics {
    return $MetricsEntityCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverviewEntityCopyWith<$Res> get overview {
    return $OverviewEntityCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardEntityImplCopyWith<$Res>
    implements $DashboardEntityCopyWith<$Res> {
  factory _$$DashboardEntityImplCopyWith(
    _$DashboardEntityImpl value,
    $Res Function(_$DashboardEntityImpl) then,
  ) = __$$DashboardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userInitials,
    String userName,
    MetricsEntity metrics,
    List<MeetingEntity> upcomingMeetings,
    List<TodoEntity> todos,
    List<FireEntity> fires,
    List<RockEntity> rocks,
    OverviewEntity overview,
  });

  @override
  $MetricsEntityCopyWith<$Res> get metrics;
  @override
  $OverviewEntityCopyWith<$Res> get overview;
}

/// @nodoc
class __$$DashboardEntityImplCopyWithImpl<$Res>
    extends _$DashboardEntityCopyWithImpl<$Res, _$DashboardEntityImpl>
    implements _$$DashboardEntityImplCopyWith<$Res> {
  __$$DashboardEntityImplCopyWithImpl(
    _$DashboardEntityImpl _value,
    $Res Function(_$DashboardEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInitials = null,
    Object? userName = null,
    Object? metrics = null,
    Object? upcomingMeetings = null,
    Object? todos = null,
    Object? fires = null,
    Object? rocks = null,
    Object? overview = null,
  }) {
    return _then(
      _$DashboardEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userInitials: null == userInitials
            ? _value.userInitials
            : userInitials // ignore: cast_nullable_to_non_nullable
                  as String,
        userName: null == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String,
        metrics: null == metrics
            ? _value.metrics
            : metrics // ignore: cast_nullable_to_non_nullable
                  as MetricsEntity,
        upcomingMeetings: null == upcomingMeetings
            ? _value._upcomingMeetings
            : upcomingMeetings // ignore: cast_nullable_to_non_nullable
                  as List<MeetingEntity>,
        todos: null == todos
            ? _value._todos
            : todos // ignore: cast_nullable_to_non_nullable
                  as List<TodoEntity>,
        fires: null == fires
            ? _value._fires
            : fires // ignore: cast_nullable_to_non_nullable
                  as List<FireEntity>,
        rocks: null == rocks
            ? _value._rocks
            : rocks // ignore: cast_nullable_to_non_nullable
                  as List<RockEntity>,
        overview: null == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as OverviewEntity,
      ),
    );
  }
}

/// @nodoc

class _$DashboardEntityImpl implements _DashboardEntity {
  const _$DashboardEntityImpl({
    required this.id,
    required this.userInitials,
    required this.userName,
    required this.metrics,
    required final List<MeetingEntity> upcomingMeetings,
    required final List<TodoEntity> todos,
    required final List<FireEntity> fires,
    required final List<RockEntity> rocks,
    required this.overview,
  }) : _upcomingMeetings = upcomingMeetings,
       _todos = todos,
       _fires = fires,
       _rocks = rocks;

  @override
  final String id;
  @override
  final String userInitials;
  @override
  final String userName;
  @override
  final MetricsEntity metrics;
  final List<MeetingEntity> _upcomingMeetings;
  @override
  List<MeetingEntity> get upcomingMeetings {
    if (_upcomingMeetings is EqualUnmodifiableListView)
      return _upcomingMeetings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingMeetings);
  }

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  final List<FireEntity> _fires;
  @override
  List<FireEntity> get fires {
    if (_fires is EqualUnmodifiableListView) return _fires;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fires);
  }

  final List<RockEntity> _rocks;
  @override
  List<RockEntity> get rocks {
    if (_rocks is EqualUnmodifiableListView) return _rocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rocks);
  }

  @override
  final OverviewEntity overview;

  @override
  String toString() {
    return 'DashboardEntity(id: $id, userInitials: $userInitials, userName: $userName, metrics: $metrics, upcomingMeetings: $upcomingMeetings, todos: $todos, fires: $fires, rocks: $rocks, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userInitials, userInitials) ||
                other.userInitials == userInitials) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            const DeepCollectionEquality().equals(
              other._upcomingMeetings,
              _upcomingMeetings,
            ) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other._fires, _fires) &&
            const DeepCollectionEquality().equals(other._rocks, _rocks) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userInitials,
    userName,
    metrics,
    const DeepCollectionEquality().hash(_upcomingMeetings),
    const DeepCollectionEquality().hash(_todos),
    const DeepCollectionEquality().hash(_fires),
    const DeepCollectionEquality().hash(_rocks),
    overview,
  );

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardEntityImplCopyWith<_$DashboardEntityImpl> get copyWith =>
      __$$DashboardEntityImplCopyWithImpl<_$DashboardEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _DashboardEntity implements DashboardEntity {
  const factory _DashboardEntity({
    required final String id,
    required final String userInitials,
    required final String userName,
    required final MetricsEntity metrics,
    required final List<MeetingEntity> upcomingMeetings,
    required final List<TodoEntity> todos,
    required final List<FireEntity> fires,
    required final List<RockEntity> rocks,
    required final OverviewEntity overview,
  }) = _$DashboardEntityImpl;

  @override
  String get id;
  @override
  String get userInitials;
  @override
  String get userName;
  @override
  MetricsEntity get metrics;
  @override
  List<MeetingEntity> get upcomingMeetings;
  @override
  List<TodoEntity> get todos;
  @override
  List<FireEntity> get fires;
  @override
  List<RockEntity> get rocks;
  @override
  OverviewEntity get overview;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardEntityImplCopyWith<_$DashboardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetricsEntity {
  int get rocksCount => throw _privateConstructorUsedError;
  double get rocksChange => throw _privateConstructorUsedError;
  int get todosCount => throw _privateConstructorUsedError;
  double get todosChange => throw _privateConstructorUsedError;
  int get firesCount => throw _privateConstructorUsedError;
  double get firesChange => throw _privateConstructorUsedError;

  /// Create a copy of MetricsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricsEntityCopyWith<MetricsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsEntityCopyWith<$Res> {
  factory $MetricsEntityCopyWith(
    MetricsEntity value,
    $Res Function(MetricsEntity) then,
  ) = _$MetricsEntityCopyWithImpl<$Res, MetricsEntity>;
  @useResult
  $Res call({
    int rocksCount,
    double rocksChange,
    int todosCount,
    double todosChange,
    int firesCount,
    double firesChange,
  });
}

/// @nodoc
class _$MetricsEntityCopyWithImpl<$Res, $Val extends MetricsEntity>
    implements $MetricsEntityCopyWith<$Res> {
  _$MetricsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocksCount = null,
    Object? rocksChange = null,
    Object? todosCount = null,
    Object? todosChange = null,
    Object? firesCount = null,
    Object? firesChange = null,
  }) {
    return _then(
      _value.copyWith(
            rocksCount: null == rocksCount
                ? _value.rocksCount
                : rocksCount // ignore: cast_nullable_to_non_nullable
                      as int,
            rocksChange: null == rocksChange
                ? _value.rocksChange
                : rocksChange // ignore: cast_nullable_to_non_nullable
                      as double,
            todosCount: null == todosCount
                ? _value.todosCount
                : todosCount // ignore: cast_nullable_to_non_nullable
                      as int,
            todosChange: null == todosChange
                ? _value.todosChange
                : todosChange // ignore: cast_nullable_to_non_nullable
                      as double,
            firesCount: null == firesCount
                ? _value.firesCount
                : firesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            firesChange: null == firesChange
                ? _value.firesChange
                : firesChange // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MetricsEntityImplCopyWith<$Res>
    implements $MetricsEntityCopyWith<$Res> {
  factory _$$MetricsEntityImplCopyWith(
    _$MetricsEntityImpl value,
    $Res Function(_$MetricsEntityImpl) then,
  ) = __$$MetricsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rocksCount,
    double rocksChange,
    int todosCount,
    double todosChange,
    int firesCount,
    double firesChange,
  });
}

/// @nodoc
class __$$MetricsEntityImplCopyWithImpl<$Res>
    extends _$MetricsEntityCopyWithImpl<$Res, _$MetricsEntityImpl>
    implements _$$MetricsEntityImplCopyWith<$Res> {
  __$$MetricsEntityImplCopyWithImpl(
    _$MetricsEntityImpl _value,
    $Res Function(_$MetricsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MetricsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocksCount = null,
    Object? rocksChange = null,
    Object? todosCount = null,
    Object? todosChange = null,
    Object? firesCount = null,
    Object? firesChange = null,
  }) {
    return _then(
      _$MetricsEntityImpl(
        rocksCount: null == rocksCount
            ? _value.rocksCount
            : rocksCount // ignore: cast_nullable_to_non_nullable
                  as int,
        rocksChange: null == rocksChange
            ? _value.rocksChange
            : rocksChange // ignore: cast_nullable_to_non_nullable
                  as double,
        todosCount: null == todosCount
            ? _value.todosCount
            : todosCount // ignore: cast_nullable_to_non_nullable
                  as int,
        todosChange: null == todosChange
            ? _value.todosChange
            : todosChange // ignore: cast_nullable_to_non_nullable
                  as double,
        firesCount: null == firesCount
            ? _value.firesCount
            : firesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        firesChange: null == firesChange
            ? _value.firesChange
            : firesChange // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$MetricsEntityImpl implements _MetricsEntity {
  const _$MetricsEntityImpl({
    required this.rocksCount,
    required this.rocksChange,
    required this.todosCount,
    required this.todosChange,
    required this.firesCount,
    required this.firesChange,
  });

  @override
  final int rocksCount;
  @override
  final double rocksChange;
  @override
  final int todosCount;
  @override
  final double todosChange;
  @override
  final int firesCount;
  @override
  final double firesChange;

  @override
  String toString() {
    return 'MetricsEntity(rocksCount: $rocksCount, rocksChange: $rocksChange, todosCount: $todosCount, todosChange: $todosChange, firesCount: $firesCount, firesChange: $firesChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricsEntityImpl &&
            (identical(other.rocksCount, rocksCount) ||
                other.rocksCount == rocksCount) &&
            (identical(other.rocksChange, rocksChange) ||
                other.rocksChange == rocksChange) &&
            (identical(other.todosCount, todosCount) ||
                other.todosCount == todosCount) &&
            (identical(other.todosChange, todosChange) ||
                other.todosChange == todosChange) &&
            (identical(other.firesCount, firesCount) ||
                other.firesCount == firesCount) &&
            (identical(other.firesChange, firesChange) ||
                other.firesChange == firesChange));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    rocksCount,
    rocksChange,
    todosCount,
    todosChange,
    firesCount,
    firesChange,
  );

  /// Create a copy of MetricsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricsEntityImplCopyWith<_$MetricsEntityImpl> get copyWith =>
      __$$MetricsEntityImplCopyWithImpl<_$MetricsEntityImpl>(this, _$identity);
}

abstract class _MetricsEntity implements MetricsEntity {
  const factory _MetricsEntity({
    required final int rocksCount,
    required final double rocksChange,
    required final int todosCount,
    required final double todosChange,
    required final int firesCount,
    required final double firesChange,
  }) = _$MetricsEntityImpl;

  @override
  int get rocksCount;
  @override
  double get rocksChange;
  @override
  int get todosCount;
  @override
  double get todosChange;
  @override
  int get firesCount;
  @override
  double get firesChange;

  /// Create a copy of MetricsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricsEntityImplCopyWith<_$MetricsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MeetingEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  MeetingType get type => throw _privateConstructorUsedError;
  MeetingStatus get status => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingEntityCopyWith<MeetingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingEntityCopyWith<$Res> {
  factory $MeetingEntityCopyWith(
    MeetingEntity value,
    $Res Function(MeetingEntity) then,
  ) = _$MeetingEntityCopyWithImpl<$Res, MeetingEntity>;
  @useResult
  $Res call({
    String id,
    String title,
    String subtitle,
    String time,
    MeetingType type,
    MeetingStatus status,
    bool isCompleted,
  });
}

/// @nodoc
class _$MeetingEntityCopyWithImpl<$Res, $Val extends MeetingEntity>
    implements $MeetingEntityCopyWith<$Res> {
  _$MeetingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? time = null,
    Object? type = null,
    Object? status = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            subtitle: null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                      as String,
            time: null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as MeetingType,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeetingStatus,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeetingEntityImplCopyWith<$Res>
    implements $MeetingEntityCopyWith<$Res> {
  factory _$$MeetingEntityImplCopyWith(
    _$MeetingEntityImpl value,
    $Res Function(_$MeetingEntityImpl) then,
  ) = __$$MeetingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String subtitle,
    String time,
    MeetingType type,
    MeetingStatus status,
    bool isCompleted,
  });
}

/// @nodoc
class __$$MeetingEntityImplCopyWithImpl<$Res>
    extends _$MeetingEntityCopyWithImpl<$Res, _$MeetingEntityImpl>
    implements _$$MeetingEntityImplCopyWith<$Res> {
  __$$MeetingEntityImplCopyWithImpl(
    _$MeetingEntityImpl _value,
    $Res Function(_$MeetingEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? time = null,
    Object? type = null,
    Object? status = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _$MeetingEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: null == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String,
        time: null == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MeetingType,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeetingStatus,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$MeetingEntityImpl implements _MeetingEntity {
  const _$MeetingEntityImpl({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.type,
    required this.status,
    required this.isCompleted,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String time;
  @override
  final MeetingType type;
  @override
  final MeetingStatus status;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'MeetingEntity(id: $id, title: $title, subtitle: $subtitle, time: $time, type: $type, status: $status, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    subtitle,
    time,
    type,
    status,
    isCompleted,
  );

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingEntityImplCopyWith<_$MeetingEntityImpl> get copyWith =>
      __$$MeetingEntityImplCopyWithImpl<_$MeetingEntityImpl>(this, _$identity);
}

abstract class _MeetingEntity implements MeetingEntity {
  const factory _MeetingEntity({
    required final String id,
    required final String title,
    required final String subtitle,
    required final String time,
    required final MeetingType type,
    required final MeetingStatus status,
    required final bool isCompleted,
  }) = _$MeetingEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get time;
  @override
  MeetingType get type;
  @override
  MeetingStatus get status;
  @override
  bool get isCompleted;

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingEntityImplCopyWith<_$MeetingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  TodoPriority get priority => throw _privateConstructorUsedError;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
    TodoEntity value,
    $Res Function(TodoEntity) then,
  ) = _$TodoEntityCopyWithImpl<$Res, TodoEntity>;
  @useResult
  $Res call({
    String id,
    String title,
    String date,
    bool isCompleted,
    TodoPriority priority,
  });
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res, $Val extends TodoEntity>
    implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? isCompleted = null,
    Object? priority = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as TodoPriority,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoEntityImplCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$$TodoEntityImplCopyWith(
    _$TodoEntityImpl value,
    $Res Function(_$TodoEntityImpl) then,
  ) = __$$TodoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String date,
    bool isCompleted,
    TodoPriority priority,
  });
}

/// @nodoc
class __$$TodoEntityImplCopyWithImpl<$Res>
    extends _$TodoEntityCopyWithImpl<$Res, _$TodoEntityImpl>
    implements _$$TodoEntityImplCopyWith<$Res> {
  __$$TodoEntityImplCopyWithImpl(
    _$TodoEntityImpl _value,
    $Res Function(_$TodoEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? isCompleted = null,
    Object? priority = null,
  }) {
    return _then(
      _$TodoEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as TodoPriority,
      ),
    );
  }
}

/// @nodoc

class _$TodoEntityImpl implements _TodoEntity {
  const _$TodoEntityImpl({
    required this.id,
    required this.title,
    required this.date,
    required this.isCompleted,
    required this.priority,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String date;
  @override
  final bool isCompleted;
  @override
  final TodoPriority priority;

  @override
  String toString() {
    return 'TodoEntity(id: $id, title: $title, date: $date, isCompleted: $isCompleted, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, date, isCompleted, priority);

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoEntityImplCopyWith<_$TodoEntityImpl> get copyWith =>
      __$$TodoEntityImplCopyWithImpl<_$TodoEntityImpl>(this, _$identity);
}

abstract class _TodoEntity implements TodoEntity {
  const factory _TodoEntity({
    required final String id,
    required final String title,
    required final String date,
    required final bool isCompleted,
    required final TodoPriority priority,
  }) = _$TodoEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get date;
  @override
  bool get isCompleted;
  @override
  TodoPriority get priority;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoEntityImplCopyWith<_$TodoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FireEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  FireStatus get status => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  /// Create a copy of FireEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FireEntityCopyWith<FireEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireEntityCopyWith<$Res> {
  factory $FireEntityCopyWith(
    FireEntity value,
    $Res Function(FireEntity) then,
  ) = _$FireEntityCopyWithImpl<$Res, FireEntity>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    FireStatus status,
    double progress,
  });
}

/// @nodoc
class _$FireEntityCopyWithImpl<$Res, $Val extends FireEntity>
    implements $FireEntityCopyWith<$Res> {
  _$FireEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FireEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as FireStatus,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FireEntityImplCopyWith<$Res>
    implements $FireEntityCopyWith<$Res> {
  factory _$$FireEntityImplCopyWith(
    _$FireEntityImpl value,
    $Res Function(_$FireEntityImpl) then,
  ) = __$$FireEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    FireStatus status,
    double progress,
  });
}

/// @nodoc
class __$$FireEntityImplCopyWithImpl<$Res>
    extends _$FireEntityCopyWithImpl<$Res, _$FireEntityImpl>
    implements _$$FireEntityImplCopyWith<$Res> {
  __$$FireEntityImplCopyWithImpl(
    _$FireEntityImpl _value,
    $Res Function(_$FireEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FireEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(
      _$FireEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as FireStatus,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$FireEntityImpl implements _FireEntity {
  const _$FireEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.progress,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final FireStatus status;
  @override
  final double progress;

  @override
  String toString() {
    return 'FireEntity(id: $id, title: $title, description: $description, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, status, progress);

  /// Create a copy of FireEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FireEntityImplCopyWith<_$FireEntityImpl> get copyWith =>
      __$$FireEntityImplCopyWithImpl<_$FireEntityImpl>(this, _$identity);
}

abstract class _FireEntity implements FireEntity {
  const factory _FireEntity({
    required final String id,
    required final String title,
    required final String description,
    required final FireStatus status,
    required final double progress,
  }) = _$FireEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  FireStatus get status;
  @override
  double get progress;

  /// Create a copy of FireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FireEntityImplCopyWith<_$FireEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RockEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  RockStatus get status => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  /// Create a copy of RockEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RockEntityCopyWith<RockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockEntityCopyWith<$Res> {
  factory $RockEntityCopyWith(
    RockEntity value,
    $Res Function(RockEntity) then,
  ) = _$RockEntityCopyWithImpl<$Res, RockEntity>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    RockStatus status,
    double progress,
  });
}

/// @nodoc
class _$RockEntityCopyWithImpl<$Res, $Val extends RockEntity>
    implements $RockEntityCopyWith<$Res> {
  _$RockEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RockEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as RockStatus,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RockEntityImplCopyWith<$Res>
    implements $RockEntityCopyWith<$Res> {
  factory _$$RockEntityImplCopyWith(
    _$RockEntityImpl value,
    $Res Function(_$RockEntityImpl) then,
  ) = __$$RockEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    RockStatus status,
    double progress,
  });
}

/// @nodoc
class __$$RockEntityImplCopyWithImpl<$Res>
    extends _$RockEntityCopyWithImpl<$Res, _$RockEntityImpl>
    implements _$$RockEntityImplCopyWith<$Res> {
  __$$RockEntityImplCopyWithImpl(
    _$RockEntityImpl _value,
    $Res Function(_$RockEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RockEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(
      _$RockEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as RockStatus,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$RockEntityImpl implements _RockEntity {
  const _$RockEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.progress,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final RockStatus status;
  @override
  final double progress;

  @override
  String toString() {
    return 'RockEntity(id: $id, title: $title, description: $description, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RockEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, status, progress);

  /// Create a copy of RockEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RockEntityImplCopyWith<_$RockEntityImpl> get copyWith =>
      __$$RockEntityImplCopyWithImpl<_$RockEntityImpl>(this, _$identity);
}

abstract class _RockEntity implements RockEntity {
  const factory _RockEntity({
    required final String id,
    required final String title,
    required final String description,
    required final RockStatus status,
    required final double progress,
  }) = _$RockEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  RockStatus get status;
  @override
  double get progress;

  /// Create a copy of RockEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RockEntityImplCopyWith<_$RockEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewEntity {
  List<OverviewDataPointEntity> get dataPoints =>
      throw _privateConstructorUsedError;
  String get selectedPeriod => throw _privateConstructorUsedError;
  OverviewStats get stats => throw _privateConstructorUsedError;

  /// Create a copy of OverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewEntityCopyWith<OverviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewEntityCopyWith<$Res> {
  factory $OverviewEntityCopyWith(
    OverviewEntity value,
    $Res Function(OverviewEntity) then,
  ) = _$OverviewEntityCopyWithImpl<$Res, OverviewEntity>;
  @useResult
  $Res call({
    List<OverviewDataPointEntity> dataPoints,
    String selectedPeriod,
    OverviewStats stats,
  });

  $OverviewStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$OverviewEntityCopyWithImpl<$Res, $Val extends OverviewEntity>
    implements $OverviewEntityCopyWith<$Res> {
  _$OverviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataPoints = null,
    Object? selectedPeriod = null,
    Object? stats = null,
  }) {
    return _then(
      _value.copyWith(
            dataPoints: null == dataPoints
                ? _value.dataPoints
                : dataPoints // ignore: cast_nullable_to_non_nullable
                      as List<OverviewDataPointEntity>,
            selectedPeriod: null == selectedPeriod
                ? _value.selectedPeriod
                : selectedPeriod // ignore: cast_nullable_to_non_nullable
                      as String,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as OverviewStats,
          )
          as $Val,
    );
  }

  /// Create a copy of OverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverviewStatsCopyWith<$Res> get stats {
    return $OverviewStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OverviewEntityImplCopyWith<$Res>
    implements $OverviewEntityCopyWith<$Res> {
  factory _$$OverviewEntityImplCopyWith(
    _$OverviewEntityImpl value,
    $Res Function(_$OverviewEntityImpl) then,
  ) = __$$OverviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<OverviewDataPointEntity> dataPoints,
    String selectedPeriod,
    OverviewStats stats,
  });

  @override
  $OverviewStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$OverviewEntityImplCopyWithImpl<$Res>
    extends _$OverviewEntityCopyWithImpl<$Res, _$OverviewEntityImpl>
    implements _$$OverviewEntityImplCopyWith<$Res> {
  __$$OverviewEntityImplCopyWithImpl(
    _$OverviewEntityImpl _value,
    $Res Function(_$OverviewEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataPoints = null,
    Object? selectedPeriod = null,
    Object? stats = null,
  }) {
    return _then(
      _$OverviewEntityImpl(
        dataPoints: null == dataPoints
            ? _value._dataPoints
            : dataPoints // ignore: cast_nullable_to_non_nullable
                  as List<OverviewDataPointEntity>,
        selectedPeriod: null == selectedPeriod
            ? _value.selectedPeriod
            : selectedPeriod // ignore: cast_nullable_to_non_nullable
                  as String,
        stats: null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as OverviewStats,
      ),
    );
  }
}

/// @nodoc

class _$OverviewEntityImpl implements _OverviewEntity {
  const _$OverviewEntityImpl({
    required final List<OverviewDataPointEntity> dataPoints,
    required this.selectedPeriod,
    required this.stats,
  }) : _dataPoints = dataPoints;

  final List<OverviewDataPointEntity> _dataPoints;
  @override
  List<OverviewDataPointEntity> get dataPoints {
    if (_dataPoints is EqualUnmodifiableListView) return _dataPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataPoints);
  }

  @override
  final String selectedPeriod;
  @override
  final OverviewStats stats;

  @override
  String toString() {
    return 'OverviewEntity(dataPoints: $dataPoints, selectedPeriod: $selectedPeriod, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewEntityImpl &&
            const DeepCollectionEquality().equals(
              other._dataPoints,
              _dataPoints,
            ) &&
            (identical(other.selectedPeriod, selectedPeriod) ||
                other.selectedPeriod == selectedPeriod) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_dataPoints),
    selectedPeriod,
    stats,
  );

  /// Create a copy of OverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewEntityImplCopyWith<_$OverviewEntityImpl> get copyWith =>
      __$$OverviewEntityImplCopyWithImpl<_$OverviewEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _OverviewEntity implements OverviewEntity {
  const factory _OverviewEntity({
    required final List<OverviewDataPointEntity> dataPoints,
    required final String selectedPeriod,
    required final OverviewStats stats,
  }) = _$OverviewEntityImpl;

  @override
  List<OverviewDataPointEntity> get dataPoints;
  @override
  String get selectedPeriod;
  @override
  OverviewStats get stats;

  /// Create a copy of OverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewEntityImplCopyWith<_$OverviewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewDataPointEntity {
  String get label => throw _privateConstructorUsedError;
  double get taskAssigned => throw _privateConstructorUsedError;
  double get overdue => throw _privateConstructorUsedError;
  double get completed => throw _privateConstructorUsedError;

  /// Create a copy of OverviewDataPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewDataPointEntityCopyWith<OverviewDataPointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewDataPointEntityCopyWith<$Res> {
  factory $OverviewDataPointEntityCopyWith(
    OverviewDataPointEntity value,
    $Res Function(OverviewDataPointEntity) then,
  ) = _$OverviewDataPointEntityCopyWithImpl<$Res, OverviewDataPointEntity>;
  @useResult
  $Res call({
    String label,
    double taskAssigned,
    double overdue,
    double completed,
  });
}

/// @nodoc
class _$OverviewDataPointEntityCopyWithImpl<
  $Res,
  $Val extends OverviewDataPointEntity
>
    implements $OverviewDataPointEntityCopyWith<$Res> {
  _$OverviewDataPointEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewDataPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? taskAssigned = null,
    Object? overdue = null,
    Object? completed = null,
  }) {
    return _then(
      _value.copyWith(
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            taskAssigned: null == taskAssigned
                ? _value.taskAssigned
                : taskAssigned // ignore: cast_nullable_to_non_nullable
                      as double,
            overdue: null == overdue
                ? _value.overdue
                : overdue // ignore: cast_nullable_to_non_nullable
                      as double,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverviewDataPointEntityImplCopyWith<$Res>
    implements $OverviewDataPointEntityCopyWith<$Res> {
  factory _$$OverviewDataPointEntityImplCopyWith(
    _$OverviewDataPointEntityImpl value,
    $Res Function(_$OverviewDataPointEntityImpl) then,
  ) = __$$OverviewDataPointEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String label,
    double taskAssigned,
    double overdue,
    double completed,
  });
}

/// @nodoc
class __$$OverviewDataPointEntityImplCopyWithImpl<$Res>
    extends
        _$OverviewDataPointEntityCopyWithImpl<
          $Res,
          _$OverviewDataPointEntityImpl
        >
    implements _$$OverviewDataPointEntityImplCopyWith<$Res> {
  __$$OverviewDataPointEntityImplCopyWithImpl(
    _$OverviewDataPointEntityImpl _value,
    $Res Function(_$OverviewDataPointEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewDataPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? taskAssigned = null,
    Object? overdue = null,
    Object? completed = null,
  }) {
    return _then(
      _$OverviewDataPointEntityImpl(
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        taskAssigned: null == taskAssigned
            ? _value.taskAssigned
            : taskAssigned // ignore: cast_nullable_to_non_nullable
                  as double,
        overdue: null == overdue
            ? _value.overdue
            : overdue // ignore: cast_nullable_to_non_nullable
                  as double,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$OverviewDataPointEntityImpl implements _OverviewDataPointEntity {
  const _$OverviewDataPointEntityImpl({
    required this.label,
    required this.taskAssigned,
    required this.overdue,
    required this.completed,
  });

  @override
  final String label;
  @override
  final double taskAssigned;
  @override
  final double overdue;
  @override
  final double completed;

  @override
  String toString() {
    return 'OverviewDataPointEntity(label: $label, taskAssigned: $taskAssigned, overdue: $overdue, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewDataPointEntityImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.taskAssigned, taskAssigned) ||
                other.taskAssigned == taskAssigned) &&
            (identical(other.overdue, overdue) || other.overdue == overdue) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, taskAssigned, overdue, completed);

  /// Create a copy of OverviewDataPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewDataPointEntityImplCopyWith<_$OverviewDataPointEntityImpl>
  get copyWith =>
      __$$OverviewDataPointEntityImplCopyWithImpl<
        _$OverviewDataPointEntityImpl
      >(this, _$identity);
}

abstract class _OverviewDataPointEntity implements OverviewDataPointEntity {
  const factory _OverviewDataPointEntity({
    required final String label,
    required final double taskAssigned,
    required final double overdue,
    required final double completed,
  }) = _$OverviewDataPointEntityImpl;

  @override
  String get label;
  @override
  double get taskAssigned;
  @override
  double get overdue;
  @override
  double get completed;

  /// Create a copy of OverviewDataPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewDataPointEntityImplCopyWith<_$OverviewDataPointEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewStats {
  double get completedPercentage => throw _privateConstructorUsedError;
  double get inProgressPercentage => throw _privateConstructorUsedError;
  double get yetToStartPercentage => throw _privateConstructorUsedError;

  /// Create a copy of OverviewStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewStatsCopyWith<OverviewStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStatsCopyWith<$Res> {
  factory $OverviewStatsCopyWith(
    OverviewStats value,
    $Res Function(OverviewStats) then,
  ) = _$OverviewStatsCopyWithImpl<$Res, OverviewStats>;
  @useResult
  $Res call({
    double completedPercentage,
    double inProgressPercentage,
    double yetToStartPercentage,
  });
}

/// @nodoc
class _$OverviewStatsCopyWithImpl<$Res, $Val extends OverviewStats>
    implements $OverviewStatsCopyWith<$Res> {
  _$OverviewStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedPercentage = null,
    Object? inProgressPercentage = null,
    Object? yetToStartPercentage = null,
  }) {
    return _then(
      _value.copyWith(
            completedPercentage: null == completedPercentage
                ? _value.completedPercentage
                : completedPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            inProgressPercentage: null == inProgressPercentage
                ? _value.inProgressPercentage
                : inProgressPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            yetToStartPercentage: null == yetToStartPercentage
                ? _value.yetToStartPercentage
                : yetToStartPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverviewStatsImplCopyWith<$Res>
    implements $OverviewStatsCopyWith<$Res> {
  factory _$$OverviewStatsImplCopyWith(
    _$OverviewStatsImpl value,
    $Res Function(_$OverviewStatsImpl) then,
  ) = __$$OverviewStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double completedPercentage,
    double inProgressPercentage,
    double yetToStartPercentage,
  });
}

/// @nodoc
class __$$OverviewStatsImplCopyWithImpl<$Res>
    extends _$OverviewStatsCopyWithImpl<$Res, _$OverviewStatsImpl>
    implements _$$OverviewStatsImplCopyWith<$Res> {
  __$$OverviewStatsImplCopyWithImpl(
    _$OverviewStatsImpl _value,
    $Res Function(_$OverviewStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedPercentage = null,
    Object? inProgressPercentage = null,
    Object? yetToStartPercentage = null,
  }) {
    return _then(
      _$OverviewStatsImpl(
        completedPercentage: null == completedPercentage
            ? _value.completedPercentage
            : completedPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        inProgressPercentage: null == inProgressPercentage
            ? _value.inProgressPercentage
            : inProgressPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        yetToStartPercentage: null == yetToStartPercentage
            ? _value.yetToStartPercentage
            : yetToStartPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$OverviewStatsImpl implements _OverviewStats {
  const _$OverviewStatsImpl({
    required this.completedPercentage,
    required this.inProgressPercentage,
    required this.yetToStartPercentage,
  });

  @override
  final double completedPercentage;
  @override
  final double inProgressPercentage;
  @override
  final double yetToStartPercentage;

  @override
  String toString() {
    return 'OverviewStats(completedPercentage: $completedPercentage, inProgressPercentage: $inProgressPercentage, yetToStartPercentage: $yetToStartPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewStatsImpl &&
            (identical(other.completedPercentage, completedPercentage) ||
                other.completedPercentage == completedPercentage) &&
            (identical(other.inProgressPercentage, inProgressPercentage) ||
                other.inProgressPercentage == inProgressPercentage) &&
            (identical(other.yetToStartPercentage, yetToStartPercentage) ||
                other.yetToStartPercentage == yetToStartPercentage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    completedPercentage,
    inProgressPercentage,
    yetToStartPercentage,
  );

  /// Create a copy of OverviewStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewStatsImplCopyWith<_$OverviewStatsImpl> get copyWith =>
      __$$OverviewStatsImplCopyWithImpl<_$OverviewStatsImpl>(this, _$identity);
}

abstract class _OverviewStats implements OverviewStats {
  const factory _OverviewStats({
    required final double completedPercentage,
    required final double inProgressPercentage,
    required final double yetToStartPercentage,
  }) = _$OverviewStatsImpl;

  @override
  double get completedPercentage;
  @override
  double get inProgressPercentage;
  @override
  double get yetToStartPercentage;

  /// Create a copy of OverviewStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewStatsImplCopyWith<_$OverviewStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

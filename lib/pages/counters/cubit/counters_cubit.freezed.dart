// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountersState {
  Map<int, Counter> get counters => throw _privateConstructorUsedError;
  Counter? get activeCounter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<int, Counter> counters, Counter? activeCounter)
        build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Counter> counters, Counter? activeCounter)?
        build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Counter> counters, Counter? activeCounter)? build,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountersStateBuild value) build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountersStateBuild value)? build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountersStateBuild value)? build,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountersStateCopyWith<CountersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountersStateCopyWith<$Res> {
  factory $CountersStateCopyWith(
          CountersState value, $Res Function(CountersState) then) =
      _$CountersStateCopyWithImpl<$Res, CountersState>;
  @useResult
  $Res call({Map<int, Counter> counters, Counter? activeCounter});

  $CounterCopyWith<$Res>? get activeCounter;
}

/// @nodoc
class _$CountersStateCopyWithImpl<$Res, $Val extends CountersState>
    implements $CountersStateCopyWith<$Res> {
  _$CountersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counters = null,
    Object? activeCounter = freezed,
  }) {
    return _then(_value.copyWith(
      counters: null == counters
          ? _value.counters
          : counters // ignore: cast_nullable_to_non_nullable
              as Map<int, Counter>,
      activeCounter: freezed == activeCounter
          ? _value.activeCounter
          : activeCounter // ignore: cast_nullable_to_non_nullable
              as Counter?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounterCopyWith<$Res>? get activeCounter {
    if (_value.activeCounter == null) {
      return null;
    }

    return $CounterCopyWith<$Res>(_value.activeCounter!, (value) {
      return _then(_value.copyWith(activeCounter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountersStateBuildImplCopyWith<$Res>
    implements $CountersStateCopyWith<$Res> {
  factory _$$CountersStateBuildImplCopyWith(_$CountersStateBuildImpl value,
          $Res Function(_$CountersStateBuildImpl) then) =
      __$$CountersStateBuildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Counter> counters, Counter? activeCounter});

  @override
  $CounterCopyWith<$Res>? get activeCounter;
}

/// @nodoc
class __$$CountersStateBuildImplCopyWithImpl<$Res>
    extends _$CountersStateCopyWithImpl<$Res, _$CountersStateBuildImpl>
    implements _$$CountersStateBuildImplCopyWith<$Res> {
  __$$CountersStateBuildImplCopyWithImpl(_$CountersStateBuildImpl _value,
      $Res Function(_$CountersStateBuildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counters = null,
    Object? activeCounter = freezed,
  }) {
    return _then(_$CountersStateBuildImpl(
      counters: null == counters
          ? _value._counters
          : counters // ignore: cast_nullable_to_non_nullable
              as Map<int, Counter>,
      activeCounter: freezed == activeCounter
          ? _value.activeCounter
          : activeCounter // ignore: cast_nullable_to_non_nullable
              as Counter?,
    ));
  }
}

/// @nodoc

class _$CountersStateBuildImpl implements _CountersStateBuild {
  const _$CountersStateBuildImpl(
      {required final Map<int, Counter> counters, required this.activeCounter})
      : _counters = counters;

  final Map<int, Counter> _counters;
  @override
  Map<int, Counter> get counters {
    if (_counters is EqualUnmodifiableMapView) return _counters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_counters);
  }

  @override
  final Counter? activeCounter;

  @override
  String toString() {
    return 'CountersState.build(counters: $counters, activeCounter: $activeCounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountersStateBuildImpl &&
            const DeepCollectionEquality().equals(other._counters, _counters) &&
            (identical(other.activeCounter, activeCounter) ||
                other.activeCounter == activeCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_counters), activeCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountersStateBuildImplCopyWith<_$CountersStateBuildImpl> get copyWith =>
      __$$CountersStateBuildImplCopyWithImpl<_$CountersStateBuildImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<int, Counter> counters, Counter? activeCounter)
        build,
  }) {
    return build(counters, activeCounter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<int, Counter> counters, Counter? activeCounter)?
        build,
  }) {
    return build?.call(counters, activeCounter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<int, Counter> counters, Counter? activeCounter)? build,
    required TResult orElse(),
  }) {
    if (build != null) {
      return build(counters, activeCounter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountersStateBuild value) build,
  }) {
    return build(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountersStateBuild value)? build,
  }) {
    return build?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountersStateBuild value)? build,
    required TResult orElse(),
  }) {
    if (build != null) {
      return build(this);
    }
    return orElse();
  }
}

abstract class _CountersStateBuild
    implements CountersState, CountersStateBuilder {
  const factory _CountersStateBuild(
      {required final Map<int, Counter> counters,
      required final Counter? activeCounter}) = _$CountersStateBuildImpl;

  @override
  Map<int, Counter> get counters;
  @override
  Counter? get activeCounter;
  @override
  @JsonKey(ignore: true)
  _$$CountersStateBuildImplCopyWith<_$CountersStateBuildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

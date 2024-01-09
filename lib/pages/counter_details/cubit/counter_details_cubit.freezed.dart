// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterDetailsState {
  Counter? get counter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Counter? counter) build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Counter? counter)? build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Counter? counter)? build,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterDetailsStateBuild value) build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterDetailsStateBuild value)? build,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterDetailsStateBuild value)? build,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterDetailsStateCopyWith<CounterDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDetailsStateCopyWith<$Res> {
  factory $CounterDetailsStateCopyWith(
          CounterDetailsState value, $Res Function(CounterDetailsState) then) =
      _$CounterDetailsStateCopyWithImpl<$Res, CounterDetailsState>;
  @useResult
  $Res call({Counter? counter});

  $CounterCopyWith<$Res>? get counter;
}

/// @nodoc
class _$CounterDetailsStateCopyWithImpl<$Res, $Val extends CounterDetailsState>
    implements $CounterDetailsStateCopyWith<$Res> {
  _$CounterDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_value.copyWith(
      counter: freezed == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as Counter?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounterCopyWith<$Res>? get counter {
    if (_value.counter == null) {
      return null;
    }

    return $CounterCopyWith<$Res>(_value.counter!, (value) {
      return _then(_value.copyWith(counter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CounterDetailsStateBuildImplCopyWith<$Res>
    implements $CounterDetailsStateCopyWith<$Res> {
  factory _$$CounterDetailsStateBuildImplCopyWith(
          _$CounterDetailsStateBuildImpl value,
          $Res Function(_$CounterDetailsStateBuildImpl) then) =
      __$$CounterDetailsStateBuildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Counter? counter});

  @override
  $CounterCopyWith<$Res>? get counter;
}

/// @nodoc
class __$$CounterDetailsStateBuildImplCopyWithImpl<$Res>
    extends _$CounterDetailsStateCopyWithImpl<$Res,
        _$CounterDetailsStateBuildImpl>
    implements _$$CounterDetailsStateBuildImplCopyWith<$Res> {
  __$$CounterDetailsStateBuildImplCopyWithImpl(
      _$CounterDetailsStateBuildImpl _value,
      $Res Function(_$CounterDetailsStateBuildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_$CounterDetailsStateBuildImpl(
      counter: freezed == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as Counter?,
    ));
  }
}

/// @nodoc

class _$CounterDetailsStateBuildImpl implements _CounterDetailsStateBuild {
  const _$CounterDetailsStateBuildImpl({required this.counter});

  @override
  final Counter? counter;

  @override
  String toString() {
    return 'CounterDetailsState.build(counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterDetailsStateBuildImpl &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterDetailsStateBuildImplCopyWith<_$CounterDetailsStateBuildImpl>
      get copyWith => __$$CounterDetailsStateBuildImplCopyWithImpl<
          _$CounterDetailsStateBuildImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Counter? counter) build,
  }) {
    return build(counter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Counter? counter)? build,
  }) {
    return build?.call(counter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Counter? counter)? build,
    required TResult orElse(),
  }) {
    if (build != null) {
      return build(counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterDetailsStateBuild value) build,
  }) {
    return build(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterDetailsStateBuild value)? build,
  }) {
    return build?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterDetailsStateBuild value)? build,
    required TResult orElse(),
  }) {
    if (build != null) {
      return build(this);
    }
    return orElse();
  }
}

abstract class _CounterDetailsStateBuild
    implements CounterDetailsState, CounterDetailsStateBuilder {
  const factory _CounterDetailsStateBuild({required final Counter? counter}) =
      _$CounterDetailsStateBuildImpl;

  @override
  Counter? get counter;
  @override
  @JsonKey(ignore: true)
  _$$CounterDetailsStateBuildImplCopyWith<_$CounterDetailsStateBuildImpl>
      get copyWith => throw _privateConstructorUsedError;
}

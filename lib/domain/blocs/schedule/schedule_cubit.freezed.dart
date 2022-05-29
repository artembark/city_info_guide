// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ScheduleRequest scheduleRequest) citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPoint schedulePointPoint)
        resultsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CitiesSubmitting value) citiesSubmitting,
    required TResult Function(ResultsLoading value) resultsLoading,
    required TResult Function(ResultsLoaded value) resultsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ScheduleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ScheduleRequest scheduleRequest) citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPoint schedulePointPoint)
        resultsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CitiesSubmitting value) citiesSubmitting,
    required TResult Function(ResultsLoading value) resultsLoading,
    required TResult Function(ResultsLoaded value) resultsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ScheduleState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CitiesSubmittingCopyWith<$Res> {
  factory _$$CitiesSubmittingCopyWith(
          _$CitiesSubmitting value, $Res Function(_$CitiesSubmitting) then) =
      __$$CitiesSubmittingCopyWithImpl<$Res>;
  $Res call({ScheduleRequest scheduleRequest});

  $ScheduleRequestCopyWith<$Res> get scheduleRequest;
}

/// @nodoc
class __$$CitiesSubmittingCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$CitiesSubmittingCopyWith<$Res> {
  __$$CitiesSubmittingCopyWithImpl(
      _$CitiesSubmitting _value, $Res Function(_$CitiesSubmitting) _then)
      : super(_value, (v) => _then(v as _$CitiesSubmitting));

  @override
  _$CitiesSubmitting get _value => super._value as _$CitiesSubmitting;

  @override
  $Res call({
    Object? scheduleRequest = freezed,
  }) {
    return _then(_$CitiesSubmitting(
      scheduleRequest == freezed
          ? _value.scheduleRequest
          : scheduleRequest // ignore: cast_nullable_to_non_nullable
              as ScheduleRequest,
    ));
  }

  @override
  $ScheduleRequestCopyWith<$Res> get scheduleRequest {
    return $ScheduleRequestCopyWith<$Res>(_value.scheduleRequest, (value) {
      return _then(_value.copyWith(scheduleRequest: value));
    });
  }
}

/// @nodoc

class _$CitiesSubmitting implements CitiesSubmitting {
  const _$CitiesSubmitting(this.scheduleRequest);

  @override
  final ScheduleRequest scheduleRequest;

  @override
  String toString() {
    return 'ScheduleState.citiesSubmitting(scheduleRequest: $scheduleRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesSubmitting &&
            const DeepCollectionEquality()
                .equals(other.scheduleRequest, scheduleRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(scheduleRequest));

  @JsonKey(ignore: true)
  @override
  _$$CitiesSubmittingCopyWith<_$CitiesSubmitting> get copyWith =>
      __$$CitiesSubmittingCopyWithImpl<_$CitiesSubmitting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ScheduleRequest scheduleRequest) citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPoint schedulePointPoint)
        resultsLoaded,
  }) {
    return citiesSubmitting(scheduleRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
  }) {
    return citiesSubmitting?.call(scheduleRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (citiesSubmitting != null) {
      return citiesSubmitting(scheduleRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CitiesSubmitting value) citiesSubmitting,
    required TResult Function(ResultsLoading value) resultsLoading,
    required TResult Function(ResultsLoaded value) resultsLoaded,
  }) {
    return citiesSubmitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
  }) {
    return citiesSubmitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (citiesSubmitting != null) {
      return citiesSubmitting(this);
    }
    return orElse();
  }
}

abstract class CitiesSubmitting implements ScheduleState {
  const factory CitiesSubmitting(final ScheduleRequest scheduleRequest) =
      _$CitiesSubmitting;

  ScheduleRequest get scheduleRequest => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CitiesSubmittingCopyWith<_$CitiesSubmitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultsLoadingCopyWith<$Res> {
  factory _$$ResultsLoadingCopyWith(
          _$ResultsLoading value, $Res Function(_$ResultsLoading) then) =
      __$$ResultsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultsLoadingCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$ResultsLoadingCopyWith<$Res> {
  __$$ResultsLoadingCopyWithImpl(
      _$ResultsLoading _value, $Res Function(_$ResultsLoading) _then)
      : super(_value, (v) => _then(v as _$ResultsLoading));

  @override
  _$ResultsLoading get _value => super._value as _$ResultsLoading;
}

/// @nodoc

class _$ResultsLoading implements ResultsLoading {
  const _$ResultsLoading();

  @override
  String toString() {
    return 'ScheduleState.resultsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ScheduleRequest scheduleRequest) citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPoint schedulePointPoint)
        resultsLoaded,
  }) {
    return resultsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
  }) {
    return resultsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (resultsLoading != null) {
      return resultsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CitiesSubmitting value) citiesSubmitting,
    required TResult Function(ResultsLoading value) resultsLoading,
    required TResult Function(ResultsLoaded value) resultsLoaded,
  }) {
    return resultsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
  }) {
    return resultsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (resultsLoading != null) {
      return resultsLoading(this);
    }
    return orElse();
  }
}

abstract class ResultsLoading implements ScheduleState {
  const factory ResultsLoading() = _$ResultsLoading;
}

/// @nodoc
abstract class _$$ResultsLoadedCopyWith<$Res> {
  factory _$$ResultsLoadedCopyWith(
          _$ResultsLoaded value, $Res Function(_$ResultsLoaded) then) =
      __$$ResultsLoadedCopyWithImpl<$Res>;
  $Res call({SchedulePointPoint schedulePointPoint});
}

/// @nodoc
class __$$ResultsLoadedCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$ResultsLoadedCopyWith<$Res> {
  __$$ResultsLoadedCopyWithImpl(
      _$ResultsLoaded _value, $Res Function(_$ResultsLoaded) _then)
      : super(_value, (v) => _then(v as _$ResultsLoaded));

  @override
  _$ResultsLoaded get _value => super._value as _$ResultsLoaded;

  @override
  $Res call({
    Object? schedulePointPoint = freezed,
  }) {
    return _then(_$ResultsLoaded(
      schedulePointPoint == freezed
          ? _value.schedulePointPoint
          : schedulePointPoint // ignore: cast_nullable_to_non_nullable
              as SchedulePointPoint,
    ));
  }
}

/// @nodoc

class _$ResultsLoaded implements ResultsLoaded {
  const _$ResultsLoaded(this.schedulePointPoint);

  @override
  final SchedulePointPoint schedulePointPoint;

  @override
  String toString() {
    return 'ScheduleState.resultsLoaded(schedulePointPoint: $schedulePointPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsLoaded &&
            const DeepCollectionEquality()
                .equals(other.schedulePointPoint, schedulePointPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(schedulePointPoint));

  @JsonKey(ignore: true)
  @override
  _$$ResultsLoadedCopyWith<_$ResultsLoaded> get copyWith =>
      __$$ResultsLoadedCopyWithImpl<_$ResultsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ScheduleRequest scheduleRequest) citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPoint schedulePointPoint)
        resultsLoaded,
  }) {
    return resultsLoaded(schedulePointPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
  }) {
    return resultsLoaded?.call(schedulePointPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ScheduleRequest scheduleRequest)? citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPoint schedulePointPoint)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (resultsLoaded != null) {
      return resultsLoaded(schedulePointPoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CitiesSubmitting value) citiesSubmitting,
    required TResult Function(ResultsLoading value) resultsLoading,
    required TResult Function(ResultsLoaded value) resultsLoaded,
  }) {
    return resultsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
  }) {
    return resultsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CitiesSubmitting value)? citiesSubmitting,
    TResult Function(ResultsLoading value)? resultsLoading,
    TResult Function(ResultsLoaded value)? resultsLoaded,
    required TResult orElse(),
  }) {
    if (resultsLoaded != null) {
      return resultsLoaded(this);
    }
    return orElse();
  }
}

abstract class ResultsLoaded implements ScheduleState {
  const factory ResultsLoaded(final SchedulePointPoint schedulePointPoint) =
      _$ResultsLoaded;

  SchedulePointPoint get schedulePointPoint =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ResultsLoadedCopyWith<_$ResultsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

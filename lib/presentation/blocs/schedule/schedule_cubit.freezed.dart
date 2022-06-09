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
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
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
abstract class _$$_CitiesSubmittingCopyWith<$Res> {
  factory _$$_CitiesSubmittingCopyWith(
          _$_CitiesSubmitting value, $Res Function(_$_CitiesSubmitting) then) =
      __$$_CitiesSubmittingCopyWithImpl<$Res>;
  $Res call({ScheduleRequest scheduleRequest, bool requestingLocation});

  $ScheduleRequestCopyWith<$Res> get scheduleRequest;
}

/// @nodoc
class __$$_CitiesSubmittingCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_CitiesSubmittingCopyWith<$Res> {
  __$$_CitiesSubmittingCopyWithImpl(
      _$_CitiesSubmitting _value, $Res Function(_$_CitiesSubmitting) _then)
      : super(_value, (v) => _then(v as _$_CitiesSubmitting));

  @override
  _$_CitiesSubmitting get _value => super._value as _$_CitiesSubmitting;

  @override
  $Res call({
    Object? scheduleRequest = freezed,
    Object? requestingLocation = freezed,
  }) {
    return _then(_$_CitiesSubmitting(
      scheduleRequest: scheduleRequest == freezed
          ? _value.scheduleRequest
          : scheduleRequest // ignore: cast_nullable_to_non_nullable
              as ScheduleRequest,
      requestingLocation: requestingLocation == freezed
          ? _value.requestingLocation
          : requestingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_CitiesSubmitting implements _CitiesSubmitting {
  const _$_CitiesSubmitting(
      {required this.scheduleRequest, this.requestingLocation = false});

  @override
  final ScheduleRequest scheduleRequest;
  @override
  @JsonKey()
  final bool requestingLocation;

  @override
  String toString() {
    return 'ScheduleState.citiesSubmitting(scheduleRequest: $scheduleRequest, requestingLocation: $requestingLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesSubmitting &&
            const DeepCollectionEquality()
                .equals(other.scheduleRequest, scheduleRequest) &&
            const DeepCollectionEquality()
                .equals(other.requestingLocation, requestingLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheduleRequest),
      const DeepCollectionEquality().hash(requestingLocation));

  @JsonKey(ignore: true)
  @override
  _$$_CitiesSubmittingCopyWith<_$_CitiesSubmitting> get copyWith =>
      __$$_CitiesSubmittingCopyWithImpl<_$_CitiesSubmitting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) {
    return citiesSubmitting(scheduleRequest, requestingLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) {
    return citiesSubmitting?.call(scheduleRequest, requestingLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
    required TResult orElse(),
  }) {
    if (citiesSubmitting != null) {
      return citiesSubmitting(scheduleRequest, requestingLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) {
    return citiesSubmitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) {
    return citiesSubmitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
    required TResult orElse(),
  }) {
    if (citiesSubmitting != null) {
      return citiesSubmitting(this);
    }
    return orElse();
  }
}

abstract class _CitiesSubmitting implements ScheduleState {
  const factory _CitiesSubmitting(
      {required final ScheduleRequest scheduleRequest,
      final bool requestingLocation}) = _$_CitiesSubmitting;

  ScheduleRequest get scheduleRequest => throw _privateConstructorUsedError;
  bool get requestingLocation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CitiesSubmittingCopyWith<_$_CitiesSubmitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultsLoadingCopyWith<$Res> {
  factory _$$_ResultsLoadingCopyWith(
          _$_ResultsLoading value, $Res Function(_$_ResultsLoading) then) =
      __$$_ResultsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResultsLoadingCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ResultsLoadingCopyWith<$Res> {
  __$$_ResultsLoadingCopyWithImpl(
      _$_ResultsLoading _value, $Res Function(_$_ResultsLoading) _then)
      : super(_value, (v) => _then(v as _$_ResultsLoading));

  @override
  _$_ResultsLoading get _value => super._value as _$_ResultsLoading;
}

/// @nodoc

class _$_ResultsLoading implements _ResultsLoading {
  const _$_ResultsLoading();

  @override
  String toString() {
    return 'ScheduleState.resultsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResultsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) {
    return resultsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) {
    return resultsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
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
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) {
    return resultsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) {
    return resultsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
    required TResult orElse(),
  }) {
    if (resultsLoading != null) {
      return resultsLoading(this);
    }
    return orElse();
  }
}

abstract class _ResultsLoading implements ScheduleState {
  const factory _ResultsLoading() = _$_ResultsLoading;
}

/// @nodoc
abstract class _$$_ResultsLoadedCopyWith<$Res> {
  factory _$$_ResultsLoadedCopyWith(
          _$_ResultsLoaded value, $Res Function(_$_ResultsLoaded) then) =
      __$$_ResultsLoadedCopyWithImpl<$Res>;
  $Res call({SchedulePointPointEntity schedulePointPoint});
}

/// @nodoc
class __$$_ResultsLoadedCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ResultsLoadedCopyWith<$Res> {
  __$$_ResultsLoadedCopyWithImpl(
      _$_ResultsLoaded _value, $Res Function(_$_ResultsLoaded) _then)
      : super(_value, (v) => _then(v as _$_ResultsLoaded));

  @override
  _$_ResultsLoaded get _value => super._value as _$_ResultsLoaded;

  @override
  $Res call({
    Object? schedulePointPoint = freezed,
  }) {
    return _then(_$_ResultsLoaded(
      schedulePointPoint == freezed
          ? _value.schedulePointPoint
          : schedulePointPoint // ignore: cast_nullable_to_non_nullable
              as SchedulePointPointEntity,
    ));
  }
}

/// @nodoc

class _$_ResultsLoaded implements _ResultsLoaded {
  const _$_ResultsLoaded(this.schedulePointPoint);

  @override
  final SchedulePointPointEntity schedulePointPoint;

  @override
  String toString() {
    return 'ScheduleState.resultsLoaded(schedulePointPoint: $schedulePointPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsLoaded &&
            const DeepCollectionEquality()
                .equals(other.schedulePointPoint, schedulePointPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(schedulePointPoint));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsLoadedCopyWith<_$_ResultsLoaded> get copyWith =>
      __$$_ResultsLoadedCopyWithImpl<_$_ResultsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) {
    return resultsLoaded(schedulePointPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) {
    return resultsLoaded?.call(schedulePointPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
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
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) {
    return resultsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) {
    return resultsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
    required TResult orElse(),
  }) {
    if (resultsLoaded != null) {
      return resultsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ResultsLoaded implements ScheduleState {
  const factory _ResultsLoaded(
      final SchedulePointPointEntity schedulePointPoint) = _$_ResultsLoaded;

  SchedulePointPointEntity get schedulePointPoint =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultsLoadedCopyWith<_$_ResultsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultsEmptyCopyWith<$Res> {
  factory _$$_ResultsEmptyCopyWith(
          _$_ResultsEmpty value, $Res Function(_$_ResultsEmpty) then) =
      __$$_ResultsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResultsEmptyCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ResultsEmptyCopyWith<$Res> {
  __$$_ResultsEmptyCopyWithImpl(
      _$_ResultsEmpty _value, $Res Function(_$_ResultsEmpty) _then)
      : super(_value, (v) => _then(v as _$_ResultsEmpty));

  @override
  _$_ResultsEmpty get _value => super._value as _$_ResultsEmpty;
}

/// @nodoc

class _$_ResultsEmpty implements _ResultsEmpty {
  const _$_ResultsEmpty();

  @override
  String toString() {
    return 'ScheduleState.resultsEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResultsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) {
    return resultsEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) {
    return resultsEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
    required TResult orElse(),
  }) {
    if (resultsEmpty != null) {
      return resultsEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) {
    return resultsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) {
    return resultsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
    required TResult orElse(),
  }) {
    if (resultsEmpty != null) {
      return resultsEmpty(this);
    }
    return orElse();
  }
}

abstract class _ResultsEmpty implements ScheduleState {
  const factory _ResultsEmpty() = _$_ResultsEmpty;
}

/// @nodoc
abstract class _$$_ResultsFailureCopyWith<$Res> {
  factory _$$_ResultsFailureCopyWith(
          _$_ResultsFailure value, $Res Function(_$_ResultsFailure) then) =
      __$$_ResultsFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ResultsFailureCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ResultsFailureCopyWith<$Res> {
  __$$_ResultsFailureCopyWithImpl(
      _$_ResultsFailure _value, $Res Function(_$_ResultsFailure) _then)
      : super(_value, (v) => _then(v as _$_ResultsFailure));

  @override
  _$_ResultsFailure get _value => super._value as _$_ResultsFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ResultsFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResultsFailure implements _ResultsFailure {
  const _$_ResultsFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduleState.resultsFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsFailureCopyWith<_$_ResultsFailure> get copyWith =>
      __$$_ResultsFailureCopyWithImpl<_$_ResultsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) {
    return resultsFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) {
    return resultsFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
    required TResult orElse(),
  }) {
    if (resultsFailure != null) {
      return resultsFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) {
    return resultsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) {
    return resultsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
    required TResult orElse(),
  }) {
    if (resultsFailure != null) {
      return resultsFailure(this);
    }
    return orElse();
  }
}

abstract class _ResultsFailure implements ScheduleState {
  const factory _ResultsFailure(final String message) = _$_ResultsFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultsFailureCopyWith<_$_ResultsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToDetailsPageCopyWith<$Res> {
  factory _$$_ToDetailsPageCopyWith(
          _$_ToDetailsPage value, $Res Function(_$_ToDetailsPage) then) =
      __$$_ToDetailsPageCopyWithImpl<$Res>;
  $Res call({SchedulePointPointEntity schedulePointPoint});
}

/// @nodoc
class __$$_ToDetailsPageCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ToDetailsPageCopyWith<$Res> {
  __$$_ToDetailsPageCopyWithImpl(
      _$_ToDetailsPage _value, $Res Function(_$_ToDetailsPage) _then)
      : super(_value, (v) => _then(v as _$_ToDetailsPage));

  @override
  _$_ToDetailsPage get _value => super._value as _$_ToDetailsPage;

  @override
  $Res call({
    Object? schedulePointPoint = freezed,
  }) {
    return _then(_$_ToDetailsPage(
      schedulePointPoint == freezed
          ? _value.schedulePointPoint
          : schedulePointPoint // ignore: cast_nullable_to_non_nullable
              as SchedulePointPointEntity,
    ));
  }
}

/// @nodoc

class _$_ToDetailsPage implements _ToDetailsPage {
  const _$_ToDetailsPage(this.schedulePointPoint);

  @override
  final SchedulePointPointEntity schedulePointPoint;

  @override
  String toString() {
    return 'ScheduleState.toDetailsPage(schedulePointPoint: $schedulePointPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDetailsPage &&
            const DeepCollectionEquality()
                .equals(other.schedulePointPoint, schedulePointPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(schedulePointPoint));

  @JsonKey(ignore: true)
  @override
  _$$_ToDetailsPageCopyWith<_$_ToDetailsPage> get copyWith =>
      __$$_ToDetailsPageCopyWithImpl<_$_ToDetailsPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ScheduleRequest scheduleRequest, bool requestingLocation)
        citiesSubmitting,
    required TResult Function() resultsLoading,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        resultsLoaded,
    required TResult Function() resultsEmpty,
    required TResult Function(String message) resultsFailure,
    required TResult Function(SchedulePointPointEntity schedulePointPoint)
        toDetailsPage,
  }) {
    return toDetailsPage(schedulePointPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
  }) {
    return toDetailsPage?.call(schedulePointPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleRequest scheduleRequest, bool requestingLocation)?
        citiesSubmitting,
    TResult Function()? resultsLoading,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        resultsLoaded,
    TResult Function()? resultsEmpty,
    TResult Function(String message)? resultsFailure,
    TResult Function(SchedulePointPointEntity schedulePointPoint)?
        toDetailsPage,
    required TResult orElse(),
  }) {
    if (toDetailsPage != null) {
      return toDetailsPage(schedulePointPoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSubmitting value) citiesSubmitting,
    required TResult Function(_ResultsLoading value) resultsLoading,
    required TResult Function(_ResultsLoaded value) resultsLoaded,
    required TResult Function(_ResultsEmpty value) resultsEmpty,
    required TResult Function(_ResultsFailure value) resultsFailure,
    required TResult Function(_ToDetailsPage value) toDetailsPage,
  }) {
    return toDetailsPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
  }) {
    return toDetailsPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSubmitting value)? citiesSubmitting,
    TResult Function(_ResultsLoading value)? resultsLoading,
    TResult Function(_ResultsLoaded value)? resultsLoaded,
    TResult Function(_ResultsEmpty value)? resultsEmpty,
    TResult Function(_ResultsFailure value)? resultsFailure,
    TResult Function(_ToDetailsPage value)? toDetailsPage,
    required TResult orElse(),
  }) {
    if (toDetailsPage != null) {
      return toDetailsPage(this);
    }
    return orElse();
  }
}

abstract class _ToDetailsPage implements ScheduleState {
  const factory _ToDetailsPage(
      final SchedulePointPointEntity schedulePointPoint) = _$_ToDetailsPage;

  SchedulePointPointEntity get schedulePointPoint =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ToDetailsPageCopyWith<_$_ToDetailsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

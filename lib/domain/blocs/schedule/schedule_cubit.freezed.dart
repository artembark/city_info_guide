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
  ScheduleRequest get scheduleRequest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
  $Res call({ScheduleRequest scheduleRequest});

  $ScheduleRequestCopyWith<$Res> get scheduleRequest;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;

  @override
  $Res call({
    Object? scheduleRequest = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleRequest: scheduleRequest == freezed
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
abstract class _$$_ScheduleStateCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$_ScheduleStateCopyWith(
          _$_ScheduleState value, $Res Function(_$_ScheduleState) then) =
      __$$_ScheduleStateCopyWithImpl<$Res>;
  @override
  $Res call({ScheduleRequest scheduleRequest});

  @override
  $ScheduleRequestCopyWith<$Res> get scheduleRequest;
}

/// @nodoc
class __$$_ScheduleStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ScheduleStateCopyWith<$Res> {
  __$$_ScheduleStateCopyWithImpl(
      _$_ScheduleState _value, $Res Function(_$_ScheduleState) _then)
      : super(_value, (v) => _then(v as _$_ScheduleState));

  @override
  _$_ScheduleState get _value => super._value as _$_ScheduleState;

  @override
  $Res call({
    Object? scheduleRequest = freezed,
  }) {
    return _then(_$_ScheduleState(
      scheduleRequest == freezed
          ? _value.scheduleRequest
          : scheduleRequest // ignore: cast_nullable_to_non_nullable
              as ScheduleRequest,
    ));
  }
}

/// @nodoc

class _$_ScheduleState implements _ScheduleState {
  const _$_ScheduleState(this.scheduleRequest);

  @override
  final ScheduleRequest scheduleRequest;

  @override
  String toString() {
    return 'ScheduleState(scheduleRequest: $scheduleRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleState &&
            const DeepCollectionEquality()
                .equals(other.scheduleRequest, scheduleRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(scheduleRequest));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      __$$_ScheduleStateCopyWithImpl<_$_ScheduleState>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState(final ScheduleRequest scheduleRequest) =
      _$_ScheduleState;

  @override
  ScheduleRequest get scheduleRequest => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

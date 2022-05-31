// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleRequest {
  String? get from => throw _privateConstructorUsedError;
  String? get fromTitle => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleRequestCopyWith<ScheduleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleRequestCopyWith<$Res> {
  factory $ScheduleRequestCopyWith(
          ScheduleRequest value, $Res Function(ScheduleRequest) then) =
      _$ScheduleRequestCopyWithImpl<$Res>;
  $Res call({String? from, String? fromTitle, String? to, DateTime? date});
}

/// @nodoc
class _$ScheduleRequestCopyWithImpl<$Res>
    implements $ScheduleRequestCopyWith<$Res> {
  _$ScheduleRequestCopyWithImpl(this._value, this._then);

  final ScheduleRequest _value;
  // ignore: unused_field
  final $Res Function(ScheduleRequest) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? fromTitle = freezed,
    Object? to = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      fromTitle: fromTitle == freezed
          ? _value.fromTitle
          : fromTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleRequestCopyWith<$Res>
    implements $ScheduleRequestCopyWith<$Res> {
  factory _$$_ScheduleRequestCopyWith(
          _$_ScheduleRequest value, $Res Function(_$_ScheduleRequest) then) =
      __$$_ScheduleRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? from, String? fromTitle, String? to, DateTime? date});
}

/// @nodoc
class __$$_ScheduleRequestCopyWithImpl<$Res>
    extends _$ScheduleRequestCopyWithImpl<$Res>
    implements _$$_ScheduleRequestCopyWith<$Res> {
  __$$_ScheduleRequestCopyWithImpl(
      _$_ScheduleRequest _value, $Res Function(_$_ScheduleRequest) _then)
      : super(_value, (v) => _then(v as _$_ScheduleRequest));

  @override
  _$_ScheduleRequest get _value => super._value as _$_ScheduleRequest;

  @override
  $Res call({
    Object? from = freezed,
    Object? fromTitle = freezed,
    Object? to = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ScheduleRequest(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      fromTitle: fromTitle == freezed
          ? _value.fromTitle
          : fromTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ScheduleRequest implements _ScheduleRequest {
  _$_ScheduleRequest({this.from, this.fromTitle, this.to, this.date});

  @override
  final String? from;
  @override
  final String? fromTitle;
  @override
  final String? to;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ScheduleRequest(from: $from, fromTitle: $fromTitle, to: $to, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleRequest &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.fromTitle, fromTitle) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(fromTitle),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleRequestCopyWith<_$_ScheduleRequest> get copyWith =>
      __$$_ScheduleRequestCopyWithImpl<_$_ScheduleRequest>(this, _$identity);
}

abstract class _ScheduleRequest implements ScheduleRequest {
  factory _ScheduleRequest(
      {final String? from,
      final String? fromTitle,
      final String? to,
      final DateTime? date}) = _$_ScheduleRequest;

  @override
  String? get from => throw _privateConstructorUsedError;
  @override
  String? get fromTitle => throw _privateConstructorUsedError;
  @override
  String? get to => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleRequestCopyWith<_$_ScheduleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

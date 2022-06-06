// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'segment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SegmentDTO _$SegmentDTOFromJson(Map<String, dynamic> json) {
  return _SegmentDTO.fromJson(json);
}

/// @nodoc
mixin _$SegmentDTO {
  DateTime? get arrival => throw _privateConstructorUsedError;
  FromDTO? get from => throw _privateConstructorUsedError;
  ThreadDTO? get thread => throw _privateConstructorUsedError;
  String? get departurePlatform => throw _privateConstructorUsedError;
  DateTime? get departure => throw _privateConstructorUsedError;
  String? get stops => throw _privateConstructorUsedError;
  dynamic get departureTerminal => throw _privateConstructorUsedError;
  ToDTO? get to => throw _privateConstructorUsedError;
  bool? get hasTransfers => throw _privateConstructorUsedError;
  TicketsInfoDTO? get ticketsInfo => throw _privateConstructorUsedError;
  num? get duration => throw _privateConstructorUsedError;
  dynamic get arrivalTerminal => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get arrivalPlatform => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SegmentDTOCopyWith<SegmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentDTOCopyWith<$Res> {
  factory $SegmentDTOCopyWith(
          SegmentDTO value, $Res Function(SegmentDTO) then) =
      _$SegmentDTOCopyWithImpl<$Res>;
  $Res call(
      {DateTime? arrival,
      FromDTO? from,
      ThreadDTO? thread,
      String? departurePlatform,
      DateTime? departure,
      String? stops,
      dynamic departureTerminal,
      ToDTO? to,
      bool? hasTransfers,
      TicketsInfoDTO? ticketsInfo,
      num? duration,
      dynamic arrivalTerminal,
      String? startDate,
      String? arrivalPlatform});

  $FromDTOCopyWith<$Res>? get from;
  $ThreadDTOCopyWith<$Res>? get thread;
  $ToDTOCopyWith<$Res>? get to;
  $TicketsInfoDTOCopyWith<$Res>? get ticketsInfo;
}

/// @nodoc
class _$SegmentDTOCopyWithImpl<$Res> implements $SegmentDTOCopyWith<$Res> {
  _$SegmentDTOCopyWithImpl(this._value, this._then);

  final SegmentDTO _value;
  // ignore: unused_field
  final $Res Function(SegmentDTO) _then;

  @override
  $Res call({
    Object? arrival = freezed,
    Object? from = freezed,
    Object? thread = freezed,
    Object? departurePlatform = freezed,
    Object? departure = freezed,
    Object? stops = freezed,
    Object? departureTerminal = freezed,
    Object? to = freezed,
    Object? hasTransfers = freezed,
    Object? ticketsInfo = freezed,
    Object? duration = freezed,
    Object? arrivalTerminal = freezed,
    Object? startDate = freezed,
    Object? arrivalPlatform = freezed,
  }) {
    return _then(_value.copyWith(
      arrival: arrival == freezed
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FromDTO?,
      thread: thread == freezed
          ? _value.thread
          : thread // ignore: cast_nullable_to_non_nullable
              as ThreadDTO?,
      departurePlatform: departurePlatform == freezed
          ? _value.departurePlatform
          : departurePlatform // ignore: cast_nullable_to_non_nullable
              as String?,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stops: stops == freezed
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as String?,
      departureTerminal: departureTerminal == freezed
          ? _value.departureTerminal
          : departureTerminal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ToDTO?,
      hasTransfers: hasTransfers == freezed
          ? _value.hasTransfers
          : hasTransfers // ignore: cast_nullable_to_non_nullable
              as bool?,
      ticketsInfo: ticketsInfo == freezed
          ? _value.ticketsInfo
          : ticketsInfo // ignore: cast_nullable_to_non_nullable
              as TicketsInfoDTO?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      arrivalTerminal: arrivalTerminal == freezed
          ? _value.arrivalTerminal
          : arrivalTerminal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalPlatform: arrivalPlatform == freezed
          ? _value.arrivalPlatform
          : arrivalPlatform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $FromDTOCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $FromDTOCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $ThreadDTOCopyWith<$Res>? get thread {
    if (_value.thread == null) {
      return null;
    }

    return $ThreadDTOCopyWith<$Res>(_value.thread!, (value) {
      return _then(_value.copyWith(thread: value));
    });
  }

  @override
  $ToDTOCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $ToDTOCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }

  @override
  $TicketsInfoDTOCopyWith<$Res>? get ticketsInfo {
    if (_value.ticketsInfo == null) {
      return null;
    }

    return $TicketsInfoDTOCopyWith<$Res>(_value.ticketsInfo!, (value) {
      return _then(_value.copyWith(ticketsInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_SegmentDTOCopyWith<$Res>
    implements $SegmentDTOCopyWith<$Res> {
  factory _$$_SegmentDTOCopyWith(
          _$_SegmentDTO value, $Res Function(_$_SegmentDTO) then) =
      __$$_SegmentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? arrival,
      FromDTO? from,
      ThreadDTO? thread,
      String? departurePlatform,
      DateTime? departure,
      String? stops,
      dynamic departureTerminal,
      ToDTO? to,
      bool? hasTransfers,
      TicketsInfoDTO? ticketsInfo,
      num? duration,
      dynamic arrivalTerminal,
      String? startDate,
      String? arrivalPlatform});

  @override
  $FromDTOCopyWith<$Res>? get from;
  @override
  $ThreadDTOCopyWith<$Res>? get thread;
  @override
  $ToDTOCopyWith<$Res>? get to;
  @override
  $TicketsInfoDTOCopyWith<$Res>? get ticketsInfo;
}

/// @nodoc
class __$$_SegmentDTOCopyWithImpl<$Res> extends _$SegmentDTOCopyWithImpl<$Res>
    implements _$$_SegmentDTOCopyWith<$Res> {
  __$$_SegmentDTOCopyWithImpl(
      _$_SegmentDTO _value, $Res Function(_$_SegmentDTO) _then)
      : super(_value, (v) => _then(v as _$_SegmentDTO));

  @override
  _$_SegmentDTO get _value => super._value as _$_SegmentDTO;

  @override
  $Res call({
    Object? arrival = freezed,
    Object? from = freezed,
    Object? thread = freezed,
    Object? departurePlatform = freezed,
    Object? departure = freezed,
    Object? stops = freezed,
    Object? departureTerminal = freezed,
    Object? to = freezed,
    Object? hasTransfers = freezed,
    Object? ticketsInfo = freezed,
    Object? duration = freezed,
    Object? arrivalTerminal = freezed,
    Object? startDate = freezed,
    Object? arrivalPlatform = freezed,
  }) {
    return _then(_$_SegmentDTO(
      arrival: arrival == freezed
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FromDTO?,
      thread: thread == freezed
          ? _value.thread
          : thread // ignore: cast_nullable_to_non_nullable
              as ThreadDTO?,
      departurePlatform: departurePlatform == freezed
          ? _value.departurePlatform
          : departurePlatform // ignore: cast_nullable_to_non_nullable
              as String?,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stops: stops == freezed
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as String?,
      departureTerminal: departureTerminal == freezed
          ? _value.departureTerminal
          : departureTerminal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ToDTO?,
      hasTransfers: hasTransfers == freezed
          ? _value.hasTransfers
          : hasTransfers // ignore: cast_nullable_to_non_nullable
              as bool?,
      ticketsInfo: ticketsInfo == freezed
          ? _value.ticketsInfo
          : ticketsInfo // ignore: cast_nullable_to_non_nullable
              as TicketsInfoDTO?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      arrivalTerminal: arrivalTerminal == freezed
          ? _value.arrivalTerminal
          : arrivalTerminal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalPlatform: arrivalPlatform == freezed
          ? _value.arrivalPlatform
          : arrivalPlatform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SegmentDTO implements _SegmentDTO {
  const _$_SegmentDTO(
      {this.arrival,
      this.from,
      this.thread,
      this.departurePlatform,
      this.departure,
      this.stops,
      this.departureTerminal,
      this.to,
      this.hasTransfers,
      this.ticketsInfo,
      this.duration,
      this.arrivalTerminal,
      this.startDate,
      this.arrivalPlatform});

  factory _$_SegmentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SegmentDTOFromJson(json);

  @override
  final DateTime? arrival;
  @override
  final FromDTO? from;
  @override
  final ThreadDTO? thread;
  @override
  final String? departurePlatform;
  @override
  final DateTime? departure;
  @override
  final String? stops;
  @override
  final dynamic departureTerminal;
  @override
  final ToDTO? to;
  @override
  final bool? hasTransfers;
  @override
  final TicketsInfoDTO? ticketsInfo;
  @override
  final num? duration;
  @override
  final dynamic arrivalTerminal;
  @override
  final String? startDate;
  @override
  final String? arrivalPlatform;

  @override
  String toString() {
    return 'SegmentDTO(arrival: $arrival, from: $from, thread: $thread, departurePlatform: $departurePlatform, departure: $departure, stops: $stops, departureTerminal: $departureTerminal, to: $to, hasTransfers: $hasTransfers, ticketsInfo: $ticketsInfo, duration: $duration, arrivalTerminal: $arrivalTerminal, startDate: $startDate, arrivalPlatform: $arrivalPlatform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SegmentDTO &&
            const DeepCollectionEquality().equals(other.arrival, arrival) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.thread, thread) &&
            const DeepCollectionEquality()
                .equals(other.departurePlatform, departurePlatform) &&
            const DeepCollectionEquality().equals(other.departure, departure) &&
            const DeepCollectionEquality().equals(other.stops, stops) &&
            const DeepCollectionEquality()
                .equals(other.departureTerminal, departureTerminal) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality()
                .equals(other.hasTransfers, hasTransfers) &&
            const DeepCollectionEquality()
                .equals(other.ticketsInfo, ticketsInfo) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.arrivalTerminal, arrivalTerminal) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.arrivalPlatform, arrivalPlatform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(arrival),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(thread),
      const DeepCollectionEquality().hash(departurePlatform),
      const DeepCollectionEquality().hash(departure),
      const DeepCollectionEquality().hash(stops),
      const DeepCollectionEquality().hash(departureTerminal),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(hasTransfers),
      const DeepCollectionEquality().hash(ticketsInfo),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(arrivalTerminal),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(arrivalPlatform));

  @JsonKey(ignore: true)
  @override
  _$$_SegmentDTOCopyWith<_$_SegmentDTO> get copyWith =>
      __$$_SegmentDTOCopyWithImpl<_$_SegmentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SegmentDTOToJson(this);
  }
}

abstract class _SegmentDTO implements SegmentDTO {
  const factory _SegmentDTO(
      {final DateTime? arrival,
      final FromDTO? from,
      final ThreadDTO? thread,
      final String? departurePlatform,
      final DateTime? departure,
      final String? stops,
      final dynamic departureTerminal,
      final ToDTO? to,
      final bool? hasTransfers,
      final TicketsInfoDTO? ticketsInfo,
      final num? duration,
      final dynamic arrivalTerminal,
      final String? startDate,
      final String? arrivalPlatform}) = _$_SegmentDTO;

  factory _SegmentDTO.fromJson(Map<String, dynamic> json) =
      _$_SegmentDTO.fromJson;

  @override
  DateTime? get arrival => throw _privateConstructorUsedError;
  @override
  FromDTO? get from => throw _privateConstructorUsedError;
  @override
  ThreadDTO? get thread => throw _privateConstructorUsedError;
  @override
  String? get departurePlatform => throw _privateConstructorUsedError;
  @override
  DateTime? get departure => throw _privateConstructorUsedError;
  @override
  String? get stops => throw _privateConstructorUsedError;
  @override
  dynamic get departureTerminal => throw _privateConstructorUsedError;
  @override
  ToDTO? get to => throw _privateConstructorUsedError;
  @override
  bool? get hasTransfers => throw _privateConstructorUsedError;
  @override
  TicketsInfoDTO? get ticketsInfo => throw _privateConstructorUsedError;
  @override
  num? get duration => throw _privateConstructorUsedError;
  @override
  dynamic get arrivalTerminal => throw _privateConstructorUsedError;
  @override
  String? get startDate => throw _privateConstructorUsedError;
  @override
  String? get arrivalPlatform => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SegmentDTOCopyWith<_$_SegmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

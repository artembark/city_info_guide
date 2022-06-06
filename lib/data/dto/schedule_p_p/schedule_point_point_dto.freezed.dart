// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_point_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchedulePointPointDTO _$SchedulePointPointDTOFromJson(
    Map<String, dynamic> json) {
  return _SchedulePointPointDTO.fromJson(json);
}

/// @nodoc
mixin _$SchedulePointPointDTO {
  List<dynamic>? get intervalSegments => throw _privateConstructorUsedError;
  PaginationDTO? get pagination => throw _privateConstructorUsedError;
  List<SegmentDTO>? get segments => throw _privateConstructorUsedError;
  SearchDTO? get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulePointPointDTOCopyWith<SchedulePointPointDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePointPointDTOCopyWith<$Res> {
  factory $SchedulePointPointDTOCopyWith(SchedulePointPointDTO value,
          $Res Function(SchedulePointPointDTO) then) =
      _$SchedulePointPointDTOCopyWithImpl<$Res>;
  $Res call(
      {List<dynamic>? intervalSegments,
      PaginationDTO? pagination,
      List<SegmentDTO>? segments,
      SearchDTO? search});

  $PaginationDTOCopyWith<$Res>? get pagination;
  $SearchDTOCopyWith<$Res>? get search;
}

/// @nodoc
class _$SchedulePointPointDTOCopyWithImpl<$Res>
    implements $SchedulePointPointDTOCopyWith<$Res> {
  _$SchedulePointPointDTOCopyWithImpl(this._value, this._then);

  final SchedulePointPointDTO _value;
  // ignore: unused_field
  final $Res Function(SchedulePointPointDTO) _then;

  @override
  $Res call({
    Object? intervalSegments = freezed,
    Object? pagination = freezed,
    Object? segments = freezed,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      intervalSegments: intervalSegments == freezed
          ? _value.intervalSegments
          : intervalSegments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
      segments: segments == freezed
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<SegmentDTO>?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchDTO?,
    ));
  }

  @override
  $PaginationDTOCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDTOCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }

  @override
  $SearchDTOCopyWith<$Res>? get search {
    if (_value.search == null) {
      return null;
    }

    return $SearchDTOCopyWith<$Res>(_value.search!, (value) {
      return _then(_value.copyWith(search: value));
    });
  }
}

/// @nodoc
abstract class _$$_SchedulePointPointDTOCopyWith<$Res>
    implements $SchedulePointPointDTOCopyWith<$Res> {
  factory _$$_SchedulePointPointDTOCopyWith(_$_SchedulePointPointDTO value,
          $Res Function(_$_SchedulePointPointDTO) then) =
      __$$_SchedulePointPointDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic>? intervalSegments,
      PaginationDTO? pagination,
      List<SegmentDTO>? segments,
      SearchDTO? search});

  @override
  $PaginationDTOCopyWith<$Res>? get pagination;
  @override
  $SearchDTOCopyWith<$Res>? get search;
}

/// @nodoc
class __$$_SchedulePointPointDTOCopyWithImpl<$Res>
    extends _$SchedulePointPointDTOCopyWithImpl<$Res>
    implements _$$_SchedulePointPointDTOCopyWith<$Res> {
  __$$_SchedulePointPointDTOCopyWithImpl(_$_SchedulePointPointDTO _value,
      $Res Function(_$_SchedulePointPointDTO) _then)
      : super(_value, (v) => _then(v as _$_SchedulePointPointDTO));

  @override
  _$_SchedulePointPointDTO get _value =>
      super._value as _$_SchedulePointPointDTO;

  @override
  $Res call({
    Object? intervalSegments = freezed,
    Object? pagination = freezed,
    Object? segments = freezed,
    Object? search = freezed,
  }) {
    return _then(_$_SchedulePointPointDTO(
      intervalSegments: intervalSegments == freezed
          ? _value._intervalSegments
          : intervalSegments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDTO?,
      segments: segments == freezed
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<SegmentDTO>?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchedulePointPointDTO extends _SchedulePointPointDTO {
  const _$_SchedulePointPointDTO(
      {final List<dynamic>? intervalSegments,
      this.pagination,
      final List<SegmentDTO>? segments,
      this.search})
      : _intervalSegments = intervalSegments,
        _segments = segments,
        super._();

  factory _$_SchedulePointPointDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SchedulePointPointDTOFromJson(json);

  final List<dynamic>? _intervalSegments;
  @override
  List<dynamic>? get intervalSegments {
    final value = _intervalSegments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationDTO? pagination;
  final List<SegmentDTO>? _segments;
  @override
  List<SegmentDTO>? get segments {
    final value = _segments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchDTO? search;

  @override
  String toString() {
    return 'SchedulePointPointDTO(intervalSegments: $intervalSegments, pagination: $pagination, segments: $segments, search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulePointPointDTO &&
            const DeepCollectionEquality()
                .equals(other._intervalSegments, _intervalSegments) &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(other.search, search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_intervalSegments),
      const DeepCollectionEquality().hash(pagination),
      const DeepCollectionEquality().hash(_segments),
      const DeepCollectionEquality().hash(search));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulePointPointDTOCopyWith<_$_SchedulePointPointDTO> get copyWith =>
      __$$_SchedulePointPointDTOCopyWithImpl<_$_SchedulePointPointDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchedulePointPointDTOToJson(this);
  }
}

abstract class _SchedulePointPointDTO extends SchedulePointPointDTO {
  const factory _SchedulePointPointDTO(
      {final List<dynamic>? intervalSegments,
      final PaginationDTO? pagination,
      final List<SegmentDTO>? segments,
      final SearchDTO? search}) = _$_SchedulePointPointDTO;
  const _SchedulePointPointDTO._() : super._();

  factory _SchedulePointPointDTO.fromJson(Map<String, dynamic> json) =
      _$_SchedulePointPointDTO.fromJson;

  @override
  List<dynamic>? get intervalSegments => throw _privateConstructorUsedError;
  @override
  PaginationDTO? get pagination => throw _privateConstructorUsedError;
  @override
  List<SegmentDTO>? get segments => throw _privateConstructorUsedError;
  @override
  SearchDTO? get search => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulePointPointDTOCopyWith<_$_SchedulePointPointDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

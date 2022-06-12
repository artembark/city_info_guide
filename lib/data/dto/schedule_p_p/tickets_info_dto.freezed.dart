// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tickets_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketsInfoDTO _$TicketsInfoDTOFromJson(Map<String, dynamic> json) {
  return _TicketsInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$TicketsInfoDTO {
  bool? get etMarker => throw _privateConstructorUsedError;
  List<dynamic>? get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsInfoDTOCopyWith<TicketsInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsInfoDTOCopyWith<$Res> {
  factory $TicketsInfoDTOCopyWith(
          TicketsInfoDTO value, $Res Function(TicketsInfoDTO) then) =
      _$TicketsInfoDTOCopyWithImpl<$Res>;
  $Res call({bool? etMarker, List<dynamic>? places});
}

/// @nodoc
class _$TicketsInfoDTOCopyWithImpl<$Res>
    implements $TicketsInfoDTOCopyWith<$Res> {
  _$TicketsInfoDTOCopyWithImpl(this._value, this._then);

  final TicketsInfoDTO _value;
  // ignore: unused_field
  final $Res Function(TicketsInfoDTO) _then;

  @override
  $Res call({
    Object? etMarker = freezed,
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      etMarker: etMarker == freezed
          ? _value.etMarker
          : etMarker // ignore: cast_nullable_to_non_nullable
              as bool?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TicketsInfoDTOCopyWith<$Res>
    implements $TicketsInfoDTOCopyWith<$Res> {
  factory _$$_TicketsInfoDTOCopyWith(
          _$_TicketsInfoDTO value, $Res Function(_$_TicketsInfoDTO) then) =
      __$$_TicketsInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call({bool? etMarker, List<dynamic>? places});
}

/// @nodoc
class __$$_TicketsInfoDTOCopyWithImpl<$Res>
    extends _$TicketsInfoDTOCopyWithImpl<$Res>
    implements _$$_TicketsInfoDTOCopyWith<$Res> {
  __$$_TicketsInfoDTOCopyWithImpl(
      _$_TicketsInfoDTO _value, $Res Function(_$_TicketsInfoDTO) _then)
      : super(_value, (v) => _then(v as _$_TicketsInfoDTO));

  @override
  _$_TicketsInfoDTO get _value => super._value as _$_TicketsInfoDTO;

  @override
  $Res call({
    Object? etMarker = freezed,
    Object? places = freezed,
  }) {
    return _then(_$_TicketsInfoDTO(
      etMarker: etMarker == freezed
          ? _value.etMarker
          : etMarker // ignore: cast_nullable_to_non_nullable
              as bool?,
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketsInfoDTO extends _TicketsInfoDTO {
  const _$_TicketsInfoDTO({this.etMarker, final List<dynamic>? places})
      : _places = places,
        super._();

  factory _$_TicketsInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TicketsInfoDTOFromJson(json);

  @override
  final bool? etMarker;
  final List<dynamic>? _places;
  @override
  List<dynamic>? get places {
    final value = _places;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TicketsInfoDTO(etMarker: $etMarker, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsInfoDTO &&
            const DeepCollectionEquality().equals(other.etMarker, etMarker) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(etMarker),
      const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  _$$_TicketsInfoDTOCopyWith<_$_TicketsInfoDTO> get copyWith =>
      __$$_TicketsInfoDTOCopyWithImpl<_$_TicketsInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketsInfoDTOToJson(this);
  }
}

abstract class _TicketsInfoDTO extends TicketsInfoDTO {
  const factory _TicketsInfoDTO(
      {final bool? etMarker, final List<dynamic>? places}) = _$_TicketsInfoDTO;
  const _TicketsInfoDTO._() : super._();

  factory _TicketsInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_TicketsInfoDTO.fromJson;

  @override
  bool? get etMarker => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get places => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsInfoDTOCopyWith<_$_TicketsInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

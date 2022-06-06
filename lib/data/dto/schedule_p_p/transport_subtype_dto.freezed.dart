// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transport_subtype_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportSubtypeDTO _$TransportSubtypeDTOFromJson(Map<String, dynamic> json) {
  return _TransportSubtypeDTO.fromJson(json);
}

/// @nodoc
mixin _$TransportSubtypeDTO {
  dynamic get color => throw _privateConstructorUsedError;
  dynamic get code => throw _privateConstructorUsedError;
  dynamic get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportSubtypeDTOCopyWith<TransportSubtypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportSubtypeDTOCopyWith<$Res> {
  factory $TransportSubtypeDTOCopyWith(
          TransportSubtypeDTO value, $Res Function(TransportSubtypeDTO) then) =
      _$TransportSubtypeDTOCopyWithImpl<$Res>;
  $Res call({dynamic color, dynamic code, dynamic title});
}

/// @nodoc
class _$TransportSubtypeDTOCopyWithImpl<$Res>
    implements $TransportSubtypeDTOCopyWith<$Res> {
  _$TransportSubtypeDTOCopyWithImpl(this._value, this._then);

  final TransportSubtypeDTO _value;
  // ignore: unused_field
  final $Res Function(TransportSubtypeDTO) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? code = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_TransportSubtypeDTOCopyWith<$Res>
    implements $TransportSubtypeDTOCopyWith<$Res> {
  factory _$$_TransportSubtypeDTOCopyWith(_$_TransportSubtypeDTO value,
          $Res Function(_$_TransportSubtypeDTO) then) =
      __$$_TransportSubtypeDTOCopyWithImpl<$Res>;
  @override
  $Res call({dynamic color, dynamic code, dynamic title});
}

/// @nodoc
class __$$_TransportSubtypeDTOCopyWithImpl<$Res>
    extends _$TransportSubtypeDTOCopyWithImpl<$Res>
    implements _$$_TransportSubtypeDTOCopyWith<$Res> {
  __$$_TransportSubtypeDTOCopyWithImpl(_$_TransportSubtypeDTO _value,
      $Res Function(_$_TransportSubtypeDTO) _then)
      : super(_value, (v) => _then(v as _$_TransportSubtypeDTO));

  @override
  _$_TransportSubtypeDTO get _value => super._value as _$_TransportSubtypeDTO;

  @override
  $Res call({
    Object? color = freezed,
    Object? code = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_TransportSubtypeDTO(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportSubtypeDTO implements _TransportSubtypeDTO {
  const _$_TransportSubtypeDTO({this.color, this.code, this.title});

  factory _$_TransportSubtypeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransportSubtypeDTOFromJson(json);

  @override
  final dynamic color;
  @override
  final dynamic code;
  @override
  final dynamic title;

  @override
  String toString() {
    return 'TransportSubtypeDTO(color: $color, code: $code, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransportSubtypeDTO &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TransportSubtypeDTOCopyWith<_$_TransportSubtypeDTO> get copyWith =>
      __$$_TransportSubtypeDTOCopyWithImpl<_$_TransportSubtypeDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportSubtypeDTOToJson(this);
  }
}

abstract class _TransportSubtypeDTO implements TransportSubtypeDTO {
  const factory _TransportSubtypeDTO(
      {final dynamic color,
      final dynamic code,
      final dynamic title}) = _$_TransportSubtypeDTO;

  factory _TransportSubtypeDTO.fromJson(Map<String, dynamic> json) =
      _$_TransportSubtypeDTO.fromJson;

  @override
  dynamic get color => throw _privateConstructorUsedError;
  @override
  dynamic get code => throw _privateConstructorUsedError;
  @override
  dynamic get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransportSubtypeDTOCopyWith<_$_TransportSubtypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

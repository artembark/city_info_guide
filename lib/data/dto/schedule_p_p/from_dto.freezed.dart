// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'from_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FromDTO _$FromDTOFromJson(Map<String, dynamic> json) {
  return _FromDTO.fromJson(json);
}

/// @nodoc
mixin _$FromDTO {
  String? get code => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get stationType => throw _privateConstructorUsedError;
  String? get popularTitle => throw _privateConstructorUsedError;
  String? get shortTitle => throw _privateConstructorUsedError;
  String? get transportType => throw _privateConstructorUsedError;
  String? get stationTypeName => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromDTOCopyWith<FromDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromDTOCopyWith<$Res> {
  factory $FromDTOCopyWith(FromDTO value, $Res Function(FromDTO) then) =
      _$FromDTOCopyWithImpl<$Res>;
  $Res call(
      {String? code,
      String? title,
      String? stationType,
      String? popularTitle,
      String? shortTitle,
      String? transportType,
      String? stationTypeName,
      String? type});
}

/// @nodoc
class _$FromDTOCopyWithImpl<$Res> implements $FromDTOCopyWith<$Res> {
  _$FromDTOCopyWithImpl(this._value, this._then);

  final FromDTO _value;
  // ignore: unused_field
  final $Res Function(FromDTO) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? title = freezed,
    Object? stationType = freezed,
    Object? popularTitle = freezed,
    Object? shortTitle = freezed,
    Object? transportType = freezed,
    Object? stationTypeName = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      stationType: stationType == freezed
          ? _value.stationType
          : stationType // ignore: cast_nullable_to_non_nullable
              as String?,
      popularTitle: popularTitle == freezed
          ? _value.popularTitle
          : popularTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      shortTitle: shortTitle == freezed
          ? _value.shortTitle
          : shortTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transportType: transportType == freezed
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      stationTypeName: stationTypeName == freezed
          ? _value.stationTypeName
          : stationTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FromDTOCopyWith<$Res> implements $FromDTOCopyWith<$Res> {
  factory _$$_FromDTOCopyWith(
          _$_FromDTO value, $Res Function(_$_FromDTO) then) =
      __$$_FromDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String? title,
      String? stationType,
      String? popularTitle,
      String? shortTitle,
      String? transportType,
      String? stationTypeName,
      String? type});
}

/// @nodoc
class __$$_FromDTOCopyWithImpl<$Res> extends _$FromDTOCopyWithImpl<$Res>
    implements _$$_FromDTOCopyWith<$Res> {
  __$$_FromDTOCopyWithImpl(_$_FromDTO _value, $Res Function(_$_FromDTO) _then)
      : super(_value, (v) => _then(v as _$_FromDTO));

  @override
  _$_FromDTO get _value => super._value as _$_FromDTO;

  @override
  $Res call({
    Object? code = freezed,
    Object? title = freezed,
    Object? stationType = freezed,
    Object? popularTitle = freezed,
    Object? shortTitle = freezed,
    Object? transportType = freezed,
    Object? stationTypeName = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_FromDTO(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      stationType: stationType == freezed
          ? _value.stationType
          : stationType // ignore: cast_nullable_to_non_nullable
              as String?,
      popularTitle: popularTitle == freezed
          ? _value.popularTitle
          : popularTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      shortTitle: shortTitle == freezed
          ? _value.shortTitle
          : shortTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transportType: transportType == freezed
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      stationTypeName: stationTypeName == freezed
          ? _value.stationTypeName
          : stationTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FromDTO extends _FromDTO {
  _$_FromDTO(
      {this.code,
      this.title,
      this.stationType,
      this.popularTitle,
      this.shortTitle,
      this.transportType,
      this.stationTypeName,
      this.type})
      : super._();

  factory _$_FromDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FromDTOFromJson(json);

  @override
  final String? code;
  @override
  final String? title;
  @override
  final String? stationType;
  @override
  final String? popularTitle;
  @override
  final String? shortTitle;
  @override
  final String? transportType;
  @override
  final String? stationTypeName;
  @override
  final String? type;

  @override
  String toString() {
    return 'FromDTO(code: $code, title: $title, stationType: $stationType, popularTitle: $popularTitle, shortTitle: $shortTitle, transportType: $transportType, stationTypeName: $stationTypeName, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FromDTO &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.stationType, stationType) &&
            const DeepCollectionEquality()
                .equals(other.popularTitle, popularTitle) &&
            const DeepCollectionEquality()
                .equals(other.shortTitle, shortTitle) &&
            const DeepCollectionEquality()
                .equals(other.transportType, transportType) &&
            const DeepCollectionEquality()
                .equals(other.stationTypeName, stationTypeName) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(stationType),
      const DeepCollectionEquality().hash(popularTitle),
      const DeepCollectionEquality().hash(shortTitle),
      const DeepCollectionEquality().hash(transportType),
      const DeepCollectionEquality().hash(stationTypeName),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_FromDTOCopyWith<_$_FromDTO> get copyWith =>
      __$$_FromDTOCopyWithImpl<_$_FromDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromDTOToJson(this);
  }
}

abstract class _FromDTO extends FromDTO {
  factory _FromDTO(
      {final String? code,
      final String? title,
      final String? stationType,
      final String? popularTitle,
      final String? shortTitle,
      final String? transportType,
      final String? stationTypeName,
      final String? type}) = _$_FromDTO;
  _FromDTO._() : super._();

  factory _FromDTO.fromJson(Map<String, dynamic> json) = _$_FromDTO.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get stationType => throw _privateConstructorUsedError;
  @override
  String? get popularTitle => throw _privateConstructorUsedError;
  @override
  String? get shortTitle => throw _privateConstructorUsedError;
  @override
  String? get transportType => throw _privateConstructorUsedError;
  @override
  String? get stationTypeName => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FromDTOCopyWith<_$_FromDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDTO _$SearchDTOFromJson(Map<String, dynamic> json) {
  return _SearchDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchDTO {
  String? get date => throw _privateConstructorUsedError;
  ToDTO? get to => throw _privateConstructorUsedError;
  FromDTO? get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDTOCopyWith<SearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDTOCopyWith<$Res> {
  factory $SearchDTOCopyWith(SearchDTO value, $Res Function(SearchDTO) then) =
      _$SearchDTOCopyWithImpl<$Res>;
  $Res call({String? date, ToDTO? to, FromDTO? from});

  $ToDTOCopyWith<$Res>? get to;
  $FromDTOCopyWith<$Res>? get from;
}

/// @nodoc
class _$SearchDTOCopyWithImpl<$Res> implements $SearchDTOCopyWith<$Res> {
  _$SearchDTOCopyWithImpl(this._value, this._then);

  final SearchDTO _value;
  // ignore: unused_field
  final $Res Function(SearchDTO) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ToDTO?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FromDTO?,
    ));
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
  $FromDTOCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $FromDTOCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchDTOCopyWith<$Res> implements $SearchDTOCopyWith<$Res> {
  factory _$$_SearchDTOCopyWith(
          _$_SearchDTO value, $Res Function(_$_SearchDTO) then) =
      __$$_SearchDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? date, ToDTO? to, FromDTO? from});

  @override
  $ToDTOCopyWith<$Res>? get to;
  @override
  $FromDTOCopyWith<$Res>? get from;
}

/// @nodoc
class __$$_SearchDTOCopyWithImpl<$Res> extends _$SearchDTOCopyWithImpl<$Res>
    implements _$$_SearchDTOCopyWith<$Res> {
  __$$_SearchDTOCopyWithImpl(
      _$_SearchDTO _value, $Res Function(_$_SearchDTO) _then)
      : super(_value, (v) => _then(v as _$_SearchDTO));

  @override
  _$_SearchDTO get _value => super._value as _$_SearchDTO;

  @override
  $Res call({
    Object? date = freezed,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_$_SearchDTO(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ToDTO?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FromDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchDTO extends _SearchDTO {
  const _$_SearchDTO({this.date, this.to, this.from}) : super._();

  factory _$_SearchDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDTOFromJson(json);

  @override
  final String? date;
  @override
  final ToDTO? to;
  @override
  final FromDTO? from;

  @override
  String toString() {
    return 'SearchDTO(date: $date, to: $to, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDTO &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.from, from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(from));

  @JsonKey(ignore: true)
  @override
  _$$_SearchDTOCopyWith<_$_SearchDTO> get copyWith =>
      __$$_SearchDTOCopyWithImpl<_$_SearchDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDTOToJson(this);
  }
}

abstract class _SearchDTO extends SearchDTO {
  const factory _SearchDTO(
      {final String? date,
      final ToDTO? to,
      final FromDTO? from}) = _$_SearchDTO;
  const _SearchDTO._() : super._();

  factory _SearchDTO.fromJson(Map<String, dynamic> json) =
      _$_SearchDTO.fromJson;

  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  ToDTO? get to => throw _privateConstructorUsedError;
  @override
  FromDTO? get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDTOCopyWith<_$_SearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

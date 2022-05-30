// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOfInterest _$PlaceOfInterestFromJson(Map<String, dynamic> json) {
  return _PlaceOfInterest.fromJson(json);
}

/// @nodoc
mixin _$PlaceOfInterest {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOfInterestCopyWith<PlaceOfInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOfInterestCopyWith<$Res> {
  factory $PlaceOfInterestCopyWith(
          PlaceOfInterest value, $Res Function(PlaceOfInterest) then) =
      _$PlaceOfInterestCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      String category,
      String image,
      double lon,
      double lat});
}

/// @nodoc
class _$PlaceOfInterestCopyWithImpl<$Res>
    implements $PlaceOfInterestCopyWith<$Res> {
  _$PlaceOfInterestCopyWithImpl(this._value, this._then);

  final PlaceOfInterest _value;
  // ignore: unused_field
  final $Res Function(PlaceOfInterest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceOfInterestCopyWith<$Res>
    implements $PlaceOfInterestCopyWith<$Res> {
  factory _$$_PlaceOfInterestCopyWith(
          _$_PlaceOfInterest value, $Res Function(_$_PlaceOfInterest) then) =
      __$$_PlaceOfInterestCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      String category,
      String image,
      double lon,
      double lat});
}

/// @nodoc
class __$$_PlaceOfInterestCopyWithImpl<$Res>
    extends _$PlaceOfInterestCopyWithImpl<$Res>
    implements _$$_PlaceOfInterestCopyWith<$Res> {
  __$$_PlaceOfInterestCopyWithImpl(
      _$_PlaceOfInterest _value, $Res Function(_$_PlaceOfInterest) _then)
      : super(_value, (v) => _then(v as _$_PlaceOfInterest));

  @override
  _$_PlaceOfInterest get _value => super._value as _$_PlaceOfInterest;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_PlaceOfInterest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOfInterest implements _PlaceOfInterest {
  _$_PlaceOfInterest(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.image,
      required this.lon,
      required this.lat});

  factory _$_PlaceOfInterest.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOfInterestFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final String image;
  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'PlaceOfInterest(id: $id, title: $title, description: $description, category: $category, image: $image, lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceOfInterest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.lat, lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(lat));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceOfInterestCopyWith<_$_PlaceOfInterest> get copyWith =>
      __$$_PlaceOfInterestCopyWithImpl<_$_PlaceOfInterest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOfInterestToJson(this);
  }
}

abstract class _PlaceOfInterest implements PlaceOfInterest {
  factory _PlaceOfInterest(
      {required final int id,
      required final String title,
      required final String description,
      required final String category,
      required final String image,
      required final double lon,
      required final double lat}) = _$_PlaceOfInterest;

  factory _PlaceOfInterest.fromJson(Map<String, dynamic> json) =
      _$_PlaceOfInterest.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOfInterestCopyWith<_$_PlaceOfInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOfInterest _$$_PlaceOfInterestFromJson(Map<String, dynamic> json) =>
    _$_PlaceOfInterest(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PlaceOfInterestToJson(_$_PlaceOfInterest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'lon': instance.lon,
      'lat': instance.lat,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoiDTO _$PoiDTOFromJson(Map<String, dynamic> json) => PoiDTO(
      json['id'] as int?,
      json['title'] as String?,
      json['description'] as String?,
      json['category'] as String?,
      json['image'] as String?,
      (json['lon'] as num?)?.toDouble(),
      (json['lat'] as num?)?.toDouble(),
      (json['oid'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PoiDTOToJson(PoiDTO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'lon': instance.lon,
      'lat': instance.lat,
      'oid': instance.oid,
    };

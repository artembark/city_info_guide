// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearest_settlement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearestSettlementDTO _$$_NearestSettlementDTOFromJson(
        Map<String, dynamic> json) =>
    _$_NearestSettlementDTO(
      distance: (json['distance'] as num?)?.toDouble(),
      code: json['code'] as String?,
      title: json['title'] as String?,
      popularTitle: json['popular_title'] as String?,
      shortTitle: json['short_title'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_NearestSettlementDTOToJson(
        _$_NearestSettlementDTO instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'code': instance.code,
      'title': instance.title,
      'popular_title': instance.popularTitle,
      'short_title': instance.shortTitle,
      'lat': instance.lat,
      'lng': instance.lng,
      'type': instance.type,
    };

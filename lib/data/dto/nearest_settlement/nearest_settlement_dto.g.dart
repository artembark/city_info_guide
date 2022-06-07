// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearest_settlement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearestSettlementDTO _$NearestSettlementDTOFromJson(
        Map<String, dynamic> json) =>
    NearestSettlementDTO(
      (json['distance'] as num?)?.toDouble(),
      json['code'] as String?,
      json['title'] as String?,
      json['popular_title'] as String?,
      json['short_title'] as String?,
      (json['lat'] as num?)?.toDouble(),
      (json['lng'] as num?)?.toDouble(),
      json['type'] as String?,
    );

Map<String, dynamic> _$NearestSettlementDTOToJson(
        NearestSettlementDTO instance) =>
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

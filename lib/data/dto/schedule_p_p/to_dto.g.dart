// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDTO _$$_ToDTOFromJson(Map<String, dynamic> json) => _$_ToDTO(
      code: json['code'] as String?,
      title: json['title'] as String?,
      stationType: json['station_type'] as String?,
      popularTitle: json['popular_title'] as String?,
      shortTitle: json['short_title'] as String?,
      transportType: json['transport_type'] as String?,
      stationTypeName: json['station_type_name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ToDTOToJson(_$_ToDTO instance) => <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'station_type': instance.stationType,
      'popular_title': instance.popularTitle,
      'short_title': instance.shortTitle,
      'transport_type': instance.transportType,
      'station_type_name': instance.stationTypeName,
      'type': instance.type,
    };

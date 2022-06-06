// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDTO _$$_ToDTOFromJson(Map<String, dynamic> json) => _$_ToDTO(
      code: json['code'] as String?,
      title: json['title'] as String?,
      stationType: json['stationType'] as String?,
      popularTitle: json['popularTitle'] as String?,
      shortTitle: json['shortTitle'] as String?,
      transportType: json['transportType'] as String?,
      stationTypeName: json['stationTypeName'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ToDTOToJson(_$_ToDTO instance) => <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'stationType': instance.stationType,
      'popularTitle': instance.popularTitle,
      'shortTitle': instance.shortTitle,
      'transportType': instance.transportType,
      'stationTypeName': instance.stationTypeName,
      'type': instance.type,
    };

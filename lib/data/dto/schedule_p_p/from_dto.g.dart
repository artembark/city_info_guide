// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'from_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FromDTO _$$_FromDTOFromJson(Map<String, dynamic> json) => _$_FromDTO(
      code: json['code'] as String?,
      title: json['title'] as String?,
      stationType: json['stationType'] as String?,
      popularTitle: json['popularTitle'] as String?,
      shortTitle: json['shortTitle'] as String?,
      transportType: json['transportType'] as String?,
      stationTypeName: json['stationTypeName'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_FromDTOToJson(_$_FromDTO instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'stationType': instance.stationType,
      'popularTitle': instance.popularTitle,
      'shortTitle': instance.shortTitle,
      'transportType': instance.transportType,
      'stationTypeName': instance.stationTypeName,
      'type': instance.type,
    };

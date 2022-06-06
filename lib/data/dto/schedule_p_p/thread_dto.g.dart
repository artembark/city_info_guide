// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThreadDTO _$$_ThreadDTOFromJson(Map<String, dynamic> json) => _$_ThreadDTO(
      uid: json['uid'] as String?,
      title: json['title'] as String?,
      number: json['number'] as String?,
      shortTitle: json['shortTitle'] as String?,
      threadMethodLink: json['threadMethodLink'] as String?,
      carrier: json['carrier'],
      transportType: json['transportType'] as String?,
      vehicle: json['vehicle'],
      transportSubtype: json['transportSubtype'] == null
          ? null
          : TransportSubtypeDTO.fromJson(
              json['transportSubtype'] as Map<String, dynamic>),
      expressType: json['expressType'],
    );

Map<String, dynamic> _$$_ThreadDTOToJson(_$_ThreadDTO instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'number': instance.number,
      'shortTitle': instance.shortTitle,
      'threadMethodLink': instance.threadMethodLink,
      'carrier': instance.carrier,
      'transportType': instance.transportType,
      'vehicle': instance.vehicle,
      'transportSubtype': instance.transportSubtype?.toJson(),
      'expressType': instance.expressType,
    };

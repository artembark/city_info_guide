// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThreadDTO _$$_ThreadDTOFromJson(Map<String, dynamic> json) => _$_ThreadDTO(
      uid: json['uid'] as String?,
      title: json['title'] as String?,
      number: json['number'] as String?,
      shortTitle: json['short_title'] as String?,
      threadMethodLink: json['thread_method_link'] as String?,
      carrier: json['carrier'],
      transportType: json['transport_type'] as String?,
      vehicle: json['vehicle'],
      transportSubtype: json['transport_subtype'] == null
          ? null
          : TransportSubtypeDTO.fromJson(
              json['transport_subtype'] as Map<String, dynamic>),
      expressType: json['express_type'],
    );

Map<String, dynamic> _$$_ThreadDTOToJson(_$_ThreadDTO instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'number': instance.number,
      'short_title': instance.shortTitle,
      'thread_method_link': instance.threadMethodLink,
      'carrier': instance.carrier,
      'transport_type': instance.transportType,
      'vehicle': instance.vehicle,
      'transport_subtype': instance.transportSubtype?.toJson(),
      'express_type': instance.expressType,
    };

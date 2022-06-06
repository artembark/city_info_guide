// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SegmentDTO _$$_SegmentDTOFromJson(Map<String, dynamic> json) =>
    _$_SegmentDTO(
      arrival: json['arrival'] == null
          ? null
          : DateTime.parse(json['arrival'] as String),
      from: json['from'] == null
          ? null
          : FromDTO.fromJson(json['from'] as Map<String, dynamic>),
      thread: json['thread'] == null
          ? null
          : ThreadDTO.fromJson(json['thread'] as Map<String, dynamic>),
      departurePlatform: json['departurePlatform'] as String?,
      departure: json['departure'] == null
          ? null
          : DateTime.parse(json['departure'] as String),
      stops: json['stops'] as String?,
      departureTerminal: json['departureTerminal'],
      to: json['to'] == null
          ? null
          : ToDTO.fromJson(json['to'] as Map<String, dynamic>),
      hasTransfers: json['hasTransfers'] as bool?,
      ticketsInfo: json['ticketsInfo'] == null
          ? null
          : TicketsInfoDTO.fromJson(
              json['ticketsInfo'] as Map<String, dynamic>),
      duration: json['duration'] as num?,
      arrivalTerminal: json['arrivalTerminal'],
      startDate: json['startDate'] as String?,
      arrivalPlatform: json['arrivalPlatform'] as String?,
    );

Map<String, dynamic> _$$_SegmentDTOToJson(_$_SegmentDTO instance) =>
    <String, dynamic>{
      'arrival': instance.arrival?.toIso8601String(),
      'from': instance.from?.toJson(),
      'thread': instance.thread?.toJson(),
      'departurePlatform': instance.departurePlatform,
      'departure': instance.departure?.toIso8601String(),
      'stops': instance.stops,
      'departureTerminal': instance.departureTerminal,
      'to': instance.to?.toJson(),
      'hasTransfers': instance.hasTransfers,
      'ticketsInfo': instance.ticketsInfo?.toJson(),
      'duration': instance.duration,
      'arrivalTerminal': instance.arrivalTerminal,
      'startDate': instance.startDate,
      'arrivalPlatform': instance.arrivalPlatform,
    };

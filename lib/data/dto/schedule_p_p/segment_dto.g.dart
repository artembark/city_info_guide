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
      departurePlatform: json['departure_platform'] as String?,
      departure: json['departure'] == null
          ? null
          : DateTime.parse(json['departure'] as String),
      stops: json['stops'] as String?,
      departureTerminal: json['departure_terminal'],
      to: json['to'] == null
          ? null
          : ToDTO.fromJson(json['to'] as Map<String, dynamic>),
      hasTransfers: json['has_transfers'] as bool?,
      ticketsInfo: json['tickets_info'] == null
          ? null
          : TicketsInfoDTO.fromJson(
              json['tickets_info'] as Map<String, dynamic>),
      duration: json['duration'] as num?,
      arrivalTerminal: json['arrival_terminal'],
      startDate: json['start_date'] as String?,
      arrivalPlatform: json['arrival_platform'] as String?,
    );

Map<String, dynamic> _$$_SegmentDTOToJson(_$_SegmentDTO instance) =>
    <String, dynamic>{
      'arrival': instance.arrival?.toIso8601String(),
      'from': instance.from?.toJson(),
      'thread': instance.thread?.toJson(),
      'departure_platform': instance.departurePlatform,
      'departure': instance.departure?.toIso8601String(),
      'stops': instance.stops,
      'departure_terminal': instance.departureTerminal,
      'to': instance.to?.toJson(),
      'has_transfers': instance.hasTransfers,
      'tickets_info': instance.ticketsInfo?.toJson(),
      'duration': instance.duration,
      'arrival_terminal': instance.arrivalTerminal,
      'start_date': instance.startDate,
      'arrival_platform': instance.arrivalPlatform,
    };

import 'package:city_info_guide/domain/entities/schedule_p_p/segment.dart';

import 'from_dto.dart';
import 'thread_dto.dart';
import 'tickets_info_dto.dart';
import 'to_dto.dart';

class SegmentDTO {
  DateTime? arrival;
  FromDTO? from;
  ThreadDTO? thread;
  String? departurePlatform;
  DateTime? departure;
  String? stops;
  dynamic departureTerminal;
  ToDTO? to;
  bool? hasTransfers;
  TicketsInfoDTO? ticketsInfo;
  num? duration;
  dynamic arrivalTerminal;
  String? startDate;
  String? arrivalPlatform;

  SegmentDTO({
    this.arrival,
    this.from,
    this.thread,
    this.departurePlatform,
    this.departure,
    this.stops,
    this.departureTerminal,
    this.to,
    this.hasTransfers,
    this.ticketsInfo,
    this.duration,
    this.arrivalTerminal,
    this.startDate,
    this.arrivalPlatform,
  });

  factory SegmentDTO.fromJson(Map<String, dynamic> json) => SegmentDTO(
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
        departureTerminal: json['departure_terminal'] as dynamic,
        to: json['to'] == null
            ? null
            : ToDTO.fromJson(json['to'] as Map<String, dynamic>),
        hasTransfers: json['has_transfers'] as bool?,
        ticketsInfo: json['tickets_info'] == null
            ? null
            : TicketsInfoDTO.fromJson(
                json['tickets_info'] as Map<String, dynamic>),
        duration: json['duration'] as num?,
        arrivalTerminal: json['arrival_terminal'] as dynamic,
        startDate: json['start_date'] as String?,
        arrivalPlatform: json['arrival_platform'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'arrival': arrival?.toIso8601String(),
        'from': from?.toJson(),
        'thread': thread?.toJson(),
        'departure_platform': departurePlatform,
        'departure': departure?.toIso8601String(),
        'stops': stops,
        'departure_terminal': departureTerminal,
        'to': to?.toJson(),
        'has_transfers': hasTransfers,
        'tickets_info': ticketsInfo?.toJson(),
        'duration': duration,
        'arrival_terminal': arrivalTerminal,
        'start_date': startDate,
        'arrival_platform': arrivalPlatform,
      };
}

extension SegmentMapper on SegmentDTO {
  Segment toModel() {
    return Segment(
      arrival: arrival,
      from: from?.toModel(),
      thread: thread?.toModel(),
      departurePlatform: departurePlatform,
      departure: departure,
      arrivalPlatform: arrivalPlatform,
      departureTerminal: departureTerminal,
      stops: stops,
      hasTransfers: hasTransfers,
      ticketsInfo: ticketsInfo?.toModel(),
      startDate: startDate,
      arrivalTerminal: arrivalTerminal,
      duration: duration,
      to: to?.toModel(),
    );
  }
}

import 'package:equatable/equatable.dart';

import 'from_entity.dart';
import 'thread_entity.dart';
import 'tickets_info_entity.dart';
import 'to_entity.dart';

class SegmentEntity extends Equatable {
  final DateTime? arrival;
  final FromEntity? from;
  final ThreadEntity? thread;
  final String? departurePlatform;
  final DateTime? departure;
  final String? stops;
  final dynamic departureTerminal;
  final ToEntity? to;
  final bool? hasTransfers;
  final TicketsInfoEntity? ticketsInfo;
  final num? duration;
  final dynamic arrivalTerminal;
  final String? startDate;
  final String? arrivalPlatform;

  const SegmentEntity({
    required this.arrival,
    required this.from,
    required this.thread,
    required this.departurePlatform,
    required this.departure,
    required this.stops,
    required this.departureTerminal,
    required this.to,
    required this.hasTransfers,
    required this.ticketsInfo,
    required this.duration,
    required this.arrivalTerminal,
    required this.startDate,
    required this.arrivalPlatform,
  });

  @override
  List<Object?> get props => [
        arrival,
        from,
        thread,
        departurePlatform,
        departure,
        stops,
        departureTerminal,
        to,
        hasTransfers,
        ticketsInfo,
        duration,
        arrivalTerminal,
        startDate,
        arrivalPlatform
      ];
}

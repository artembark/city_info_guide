import 'from_entity.dart';
import 'thread_entity.dart';
import 'tickets_info_entity.dart';
import 'to_entity.dart';

class SegmentEntity {
  DateTime? arrival;
  FromEntity? from;
  ThreadEntity? thread;
  String? departurePlatform;
  DateTime? departure;
  String? stops;
  dynamic departureTerminal;
  ToEntity? to;
  bool? hasTransfers;
  TicketsInfoEntity? ticketsInfo;
  num? duration;
  dynamic arrivalTerminal;
  String? startDate;
  String? arrivalPlatform;

  SegmentEntity({
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
}

import 'from.dart';
import 'thread.dart';
import 'tickets_info.dart';
import 'to.dart';

class Segment {
  DateTime? arrival;
  From? from;
  Thread? thread;
  String? departurePlatform;
  DateTime? departure;
  String? stops;
  dynamic departureTerminal;
  To? to;
  bool? hasTransfers;
  TicketsInfo? ticketsInfo;
  num? duration;
  dynamic arrivalTerminal;
  String? startDate;
  String? arrivalPlatform;

  Segment({
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

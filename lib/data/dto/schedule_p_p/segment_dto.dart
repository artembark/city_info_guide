import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/schedule_p_p/segment_entity.dart';
import 'from_dto.dart';
import 'thread_dto.dart';
import 'tickets_info_dto.dart';
import 'to_dto.dart';

part 'segment_dto.freezed.dart';
part 'segment_dto.g.dart';

@freezed
class SegmentDTO with _$SegmentDTO {
  const SegmentDTO._();
  const factory SegmentDTO({
    //@JsonKey(fromJson: _fromJson, toJson: _toJson)
    DateTime? arrival,
    FromDTO? from,
    ThreadDTO? thread,
    String? departurePlatform,
    DateTime? departure,
    String? stops,
    dynamic departureTerminal,
    ToDTO? to,
    bool? hasTransfers,
    TicketsInfoDTO? ticketsInfo,
    num? duration,
    dynamic arrivalTerminal,
    String? startDate,
    String? arrivalPlatform,
  }) = _SegmentDTO;

  factory SegmentDTO.fromJson(Map<String, dynamic> json) =>
      _$SegmentDTOFromJson(json);

  // @override
  // String toString() {
  //   return 'SegmentDTO(arrival: \'${arrival?.toIso8601String()}\', from: $from, thread: $thread, departurePlatform: \'$departurePlatform\', departure: \'$departure\', stops: $stops, departureTerminal: \'$departureTerminal\', to: $to, hasTransfers: $hasTransfers, ticketsInfo: $ticketsInfo, duration: $duration, arrivalTerminal: \'$arrivalTerminal\', startDate: \'$startDate\', arrivalPlatform: \'$arrivalPlatform)\'';
  // }

// DateTime _fromJson(String date) => DateFormat('M/D/yyyy').parse(date);
  // String _toJson(DateTime date) => DateFormat('M/D/yyyy').format(date);
}

extension SegmentMapper on SegmentDTO {
  SegmentEntity toEntity() {
    return SegmentEntity(
      arrival: arrival,
      from: from?.toEntity(),
      thread: thread?.toEntity(),
      departurePlatform: departurePlatform,
      departure: departure,
      arrivalPlatform: arrivalPlatform,
      departureTerminal: departureTerminal,
      stops: stops,
      hasTransfers: hasTransfers,
      ticketsInfo: ticketsInfo?.toEntity(),
      startDate: startDate,
      arrivalTerminal: arrivalTerminal,
      duration: duration,
      to: to?.toEntity(),
    );
  }
}

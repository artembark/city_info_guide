import 'package:city_info_guide/data/dto/list_stations_route/station_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/list_stations_route/stops_entity.dart';

part 'stops_dto.freezed.dart';

part 'stops_dto.g.dart';

@freezed
class StopsDTO with _$StopsDTO {
  const factory StopsDTO({
    final dynamic arrival,
    final String? departure,
    final dynamic terminal,
    final String? platform,
    final StationDTO? station,
    final dynamic stopTime,
    final num? duration,
  }) = _StopsDTO;

  factory StopsDTO.fromJson(Map<String, dynamic> json) =>
      _$StopsDTOFromJson(json);
}

extension StopsMapper on StopsDTO {
  StopsEntity toEntity() {
    return StopsEntity(
        arrival: arrival,
        departure: departure,
        terminal: terminal,
        platform: platform,
        station: station?.toEntity(),
        stopTime: stopTime,
        duration: duration);
  }
}

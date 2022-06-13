import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/list_stations_route/station_entity.dart';

part 'station_dto.freezed.dart';

part 'station_dto.g.dart';

@freezed
class StationDTO with _$StationDTO {
  const factory StationDTO({
    final String? code,
    final String? title,
    final String? stationType,
    final String? popularTitle,
    final String? shortTitle,
    final String? transportType,
    final String? stationTypeName,
    final String? type,
  }) = _StationDTO;

  factory StationDTO.fromJson(Map<String, dynamic> json) =>
      _$StationDTOFromJson(json);
}

extension StationMapper on StationDTO {
  StationEntity toEntity() {
    return StationEntity(
        code: code,
        title: title,
        stationType: stationType,
        popularTitle: popularTitle,
        shortTitle: shortTitle,
        transportType: transportType,
        stationTypeName: stationTypeName,
        type: type);
  }
}

import 'package:city_info_guide/data/dto/list_stations_route/stops_dto.dart';
import 'package:city_info_guide/domain/entities/list_stations_route/list_stations_route_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule_p_p/transport_subtype_dto.dart';

part 'list_stations_route_dto.freezed.dart';

part 'list_stations_route_dto.g.dart';

@freezed
class ListStationsRouteDTO with _$ListStationsRouteDTO {
  const factory ListStationsRouteDTO({
    final String? exceptDays,
    final dynamic arrivalDate,
    final dynamic from,
    final String? uid,
    final String? title,
    final dynamic departureDate,
    final String? startTime,
    final String? number,
    final String? shortTitle,
    final String? days,
    final dynamic to,
    final dynamic carrier,
    final String? transportType,
    final List<StopsDTO?>? stops,
    final dynamic vehicle,
    final String? startDate,
    final TransportSubtypeDTO? transportSubtype,
    final dynamic expressType,
  }) = _ListStationsRouteDTO;

  factory ListStationsRouteDTO.fromJson(Map<String, dynamic> json) =>
      _$ListStationsRouteDTOFromJson(json);
}

extension ListStationsRouteMapper on ListStationsRouteDTO {
  ListStationsRouteEntity toEntity() {
    return ListStationsRouteEntity(
        exceptDays: exceptDays,
        arrivalDate: arrivalDate,
        from: from,
        uid: uid,
        title: title,
        departureDate: departureDate,
        startTime: startTime,
        number: number,
        shortTitle: shortTitle,
        days: days,
        to: to,
        carrier: carrier,
        transportType: transportType,
        stops: stops?.map((stop) => stop?.toEntity()).toList(),
        vehicle: vehicle,
        startDate: startDate,
        transportSubtype: transportSubtype?.toEntity(),
        expressType: expressType);
  }
}

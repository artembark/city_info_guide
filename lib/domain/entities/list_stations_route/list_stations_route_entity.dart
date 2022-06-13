import 'package:city_info_guide/domain/entities/list_stations_route/stops_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule_p_p/transport_subtype_entity.dart';

part 'list_stations_route_entity.freezed.dart';

@freezed
class ListStationsRouteEntity with _$ListStationsRouteEntity {
  const factory ListStationsRouteEntity({
    required final String? exceptDays,
    required final dynamic arrivalDate,
    required final dynamic from,
    required final String? uid,
    required final String? title,
    required final dynamic departureDate,
    required final String? startTime,
    required final String? number,
    required final String? shortTitle,
    required final String? days,
    required final dynamic to,
    required final dynamic carrier,
    required final String? transportType,
    required final List<StopsEntity?>? stops,
    required final dynamic vehicle,
    required final String? startDate,
    required final TransportSubtypeEntity? transportSubtype,
    required final dynamic expressType,
  }) = _ListStationsRouteEntity;
}

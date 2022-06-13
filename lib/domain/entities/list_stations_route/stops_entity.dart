import 'package:city_info_guide/domain/entities/list_stations_route/station_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stops_entity.freezed.dart';

@freezed
class StopsEntity with _$StopsEntity {
  const factory StopsEntity({
    required final dynamic arrival,
    required final String? departure,
    required final dynamic terminal,
    required final String? platform,
    required final StationEntity? station,
    required final dynamic stopTime,
    required final num? duration,
  }) = _StopsEntity;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_entity.freezed.dart';

@freezed
class StationEntity with _$StationEntity {
  const factory StationEntity({
    required final String? code,
    required final String? title,
    required final String? stationType,
    required final String? popularTitle,
    required final String? shortTitle,
    required final String? transportType,
    required final String? stationTypeName,
    required final String? type,
  }) = _StationEntity;
}

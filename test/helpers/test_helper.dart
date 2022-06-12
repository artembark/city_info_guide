import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    GeolocationRepository,
    NearestSettlementRepository,
    ScheduleRepository,
    ScheduleApiDataSource
  ],
)
void main() {}

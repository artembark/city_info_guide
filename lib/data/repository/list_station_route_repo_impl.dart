import 'dart:io';

import 'package:city_info_guide/data/dto/list_stations_route/list_stations_route_dto.dart';
import 'package:city_info_guide/data/exception.dart';
import 'package:city_info_guide/domain/entities/list_stations_route/list_stations_route_entity.dart';
import 'package:city_info_guide/domain/repositories/list_station_route_repository.dart';
import 'package:dartz/dartz.dart';

import '../datasources/remote/schedule/schedule_api_data_source.dart';
import '../failure.dart';

class ListStationRouteRepoImpl implements ListStationRouteRepository {
  final ScheduleApiDataSource scheduleApiDataSource;

  ListStationRouteRepoImpl({required this.scheduleApiDataSource});

  @override
  Future<Either<Failure, ListStationsRouteEntity>> getListStationsRoute(
      {required String uid}) async {
    try {
      final res = await scheduleApiDataSource.getListStationsRoute(uid: uid);
      return Right(res.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to network'));
    }
  }
}

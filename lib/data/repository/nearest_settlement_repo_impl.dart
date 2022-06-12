import 'dart:io';

import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';
import 'package:dartz/dartz.dart';

import '../datasources/remote/schedule/schedule_api_data_source.dart';
import '../exception.dart';
import '../failure.dart';

class NearestSettlementRepoImpl implements NearestSettlementRepository {
  final ScheduleApiDataSource scheduleApiDataSource;

  NearestSettlementRepoImpl({required this.scheduleApiDataSource});

  @override
  Future<Either<Failure, NearestSettlementEntity>> getNearestSettlement(
      {required double lat, required double lon}) async {
    try {
      final res =
          await scheduleApiDataSource.getNearestSettlement(lat: lat, lon: lon);
      return Right(res.toEntity());
    } on ServerException {
      return const Left(ServerFailure('Server failure'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to network'));
    }
  }
}

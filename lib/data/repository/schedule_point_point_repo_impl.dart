import 'dart:io';

import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/data/exception.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import '../../domain/repositories/schedule_point_point_repository.dart';
import '../datasources/remote/schedule/schedule_api_data_source.dart';
import '../failure.dart';

//TODO: understand difference with extends in that case
//TODO: use info about network to cache info
//https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/lib/features/number_trivia/data/repositories/number_trivia_repository_impl.dart
class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleApiDataSource scheduleApiDataSource;

  ScheduleRepositoryImpl({required this.scheduleApiDataSource});

  @override
  Future<Either<Failure, SchedulePointPointEntity>> getSchedulePointPoint(
      {required String from,
      required String to,
      required DateTime date}) async {
    try {
      final res = await scheduleApiDataSource.getSchedulePointPoint(
          from: from, to: to, date: date);
      return Right(res.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to network'));
    }
  }
}

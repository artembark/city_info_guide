import 'package:city_info_guide/data/failure.dart';

import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:city_info_guide/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entities/schedule_p_p/schedule_point_point_entity.dart';

class GetSchedulePointPoint
    extends UseCase<SchedulePointPointEntity, SchedulePointPointParams> {
  final ScheduleRepository scheduleRepository;

  GetSchedulePointPoint({required this.scheduleRepository});

  @override
  Future<Either<Failure, SchedulePointPointEntity>> call(
      SchedulePointPointParams params) async {
    //TODO:remove this demonstration only delay
    return Future.delayed(const Duration(seconds: 1)).then((value) async =>
        await scheduleRepository.getSchedulePointPoint(
            from: params.from, to: params.to, date: params.dateTime));
  }
}

class SchedulePointPointParams extends Equatable {
  final String from;
  final String to;
  final DateTime dateTime;

  const SchedulePointPointParams(
      {required this.from, required this.to, required this.dateTime});

  @override
  List<Object?> get props => [from, to, dateTime];
}

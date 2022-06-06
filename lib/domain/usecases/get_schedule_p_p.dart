import 'package:city_info_guide/data/failure.dart';

import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/schedule_p_p/schedule_point_point_entity.dart';

class GetSchedulePointPoint {
  final ScheduleRepository scheduleRepository;

  GetSchedulePointPoint(this.scheduleRepository);

  Future<Either<Failure, SchedulePointPointEntity>> execute(
      {required String from, required String to, required DateTime date}) {
    return scheduleRepository.getSchedulePointPoint(
        from: from, to: to, date: date);
  }
}

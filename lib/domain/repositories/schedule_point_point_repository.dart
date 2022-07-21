import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/schedule_p_p/schedule_point_point_entity.dart';

/// Репозиторий для получения расписания рейсов между
/// двумя населенными пунктами по дате
abstract class ScheduleRepository {
  // This class is intended to be used as an interface, and should not be
  // extended directly; this constructor prevents instantiation and extension.
  ScheduleRepository._();

  ///override this method to get schedule
  Future<Either<Failure, SchedulePointPointEntity>> getSchedulePointPoint({
    required String from,
    required String to,
    required DateTime date,
  });
}

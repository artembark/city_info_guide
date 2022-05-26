import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point.dart';

/// Сервис, который предоставляет API для получения расписания рейсов между
/// двумя населенными пунктами по дате
abstract class SchedulePointPointRepository {
  //ополучение объекта с расписанием
  Future<SchedulePointPoint> getSchedulePointPoint({
    required String from,
    required String to,
    required DateTime date,
  });
}
//TODO: разобраться с required

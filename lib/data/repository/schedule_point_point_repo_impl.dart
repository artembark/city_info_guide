import 'package:city_info_guide/data/datasources/remote/schedule/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point.dart';

import '../../domain/repositories/schedule_point_point_repository.dart';
import '../datasources/remote/schedule/schedule_api_data_source.dart';

//TODO: understand difference with extends in that case
//TODO: use info about network to cache info
//https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/lib/features/number_trivia/data/repositories/number_trivia_repository_impl.dart
class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleApiDataSource scheduleApiDataSource;

  ScheduleRepositoryImpl({required this.scheduleApiDataSource});

  @override
  Future<SchedulePointPoint> getSchedulePointPoint(
      {required String from,
      required String to,
      required DateTime date}) async {
    final res = await scheduleApiDataSource.getSchedulePointPoint(
        from: from, to: to, date: date);
    return res.toModel();
  }
}

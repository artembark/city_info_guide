import 'package:city_info_guide/data/datasources/remote/schedule_point_point_data_source.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point.dart';

import '../../domain/repositories/schedule_point_point_repository.dart';

//TODO: understand difference with extends in that case
//TODO: use info about network to cache info
//https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/lib/features/number_trivia/data/repositories/number_trivia_repository_impl.dart
class SchedulePointPointRepositoryImpl implements SchedulePointPointRepository {
  final SchedulePointPointRemoteDataSource schedulePointPointRemoteDataSource;

  SchedulePointPointRepositoryImpl(
      {required this.schedulePointPointRemoteDataSource});

  @override
  Future<SchedulePointPoint> getSchedulePointPoint(
      {required String from,
      required String to,
      required DateTime date}) async {
    final res = await schedulePointPointRemoteDataSource.getSchedulePointPoint(
        from: from, to: to, date: date);
    return res.toModel();
  }
}

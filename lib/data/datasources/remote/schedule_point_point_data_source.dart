import 'package:city_info_guide/core/utils/secrets.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../dto/schedule_p_p/schedule_point_point_dto.dart';

abstract class SchedulePointPointRemoteDataSource {
  Future<SchedulePointPointDTO> getSchedulePointPoint(
      {required String from, required String to, required DateTime date});
}

class SchedulePointPointRemoteDataSourceImpl
    implements SchedulePointPointRemoteDataSource {
  final Dio dio;

  SchedulePointPointRemoteDataSourceImpl({required this.dio});

  @override
  Future<SchedulePointPointDTO> getSchedulePointPoint(
      {required String from,
      required String to,
      required DateTime date}) async {
    final response = await dio.get('/v3.0/search/', queryParameters: {
      'apikey': yandexRaspApiKey,
      'from': from,
      'to': to,
      'date': DateFormat('yyyy-MM-dd').format(date),
      'transfers': true
    });
    return SchedulePointPointDTO.fromJson(response.data);
  }
}

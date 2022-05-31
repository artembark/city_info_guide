import 'package:city_info_guide/core/utils/secrets.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../dto/schedule_p_p/schedule_point_point_dto.dart';

class YandexRaspApiDataSourceImpl implements ScheduleApiDataSource {
  final Dio dio;

  YandexRaspApiDataSourceImpl({required this.dio});

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

  @override
  Future<NearestSettlementDTO> getNearestSettlement(
      {required double lat, required double lon}) async {
    final response =
        await dio.get('/v3.0/nearest_settlement/', queryParameters: {
      'apikey': yandexRaspApiKey,
      'lat': lat,
      'lng': lon,
      'distance': '50',
      'format': 'json',
      'lang': 'ru_RU'
    });
    return NearestSettlementDTO.fromJson(response.data);
  }
}

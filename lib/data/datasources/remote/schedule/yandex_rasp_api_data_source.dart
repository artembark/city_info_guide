import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'package:city_info_guide/data/dto/list_stations_route/list_stations_route_dto.dart';
import 'package:city_info_guide/data/exception.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../dto/nearest_settlement/nearest_settlement_dto.dart';
import '../../../dto/schedule_p_p/schedule_point_point_dto.dart';

class YandexRaspApiDataSourceImpl implements ScheduleApiDataSource {
  final Dio dio;

  YandexRaspApiDataSourceImpl({required this.dio});

  @override
  Future<SchedulePointPointDTO> getSchedulePointPoint(
      {required String from,
      required String to,
      required DateTime date}) async {
    //TODO: make api keys be stored securely and be accessible while testing
    final response = await dio.get('/v3.0/search/', queryParameters: {
      'apikey': const String.fromEnvironment('API_KEY'),
      'from': from,
      'to': to,
      'date': DateFormat('yyyy-MM-dd').format(date),
      'transfers': true
    });
    if (response.statusCode == 200) {
      return SchedulePointPointDTO.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<NearestSettlementDTO> getNearestSettlement(
      {required double lat, required double lon}) async {
    final response =
        await dio.get('/v3.0/nearest_settlement/', queryParameters: {
      'apikey': const String.fromEnvironment('API_KEY'),
      'lat': lat,
      'lng': lon,
      'distance': '50',
      'format': 'json',
      'lang': 'ru_RU'
    });
    if (response.statusCode == 200) {
      return NearestSettlementDTO.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ListStationsRouteDTO> getListStationsRoute(
      {required String uid}) async {
    final response = await dio.get('/v3.0/thread/', queryParameters: {
      'apikey': const String.fromEnvironment('API_KEY'),
      'uid': uid,
      'format': 'json',
      'lang': 'ru_RU'
    });
    if (response.statusCode == 200) {
      return ListStationsRouteDTO.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}

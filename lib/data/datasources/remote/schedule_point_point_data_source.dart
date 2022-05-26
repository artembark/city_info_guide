import 'package:city_info_guide/core/utils/secrets.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../dto/schedule_p_p/schedule_point_point_dto.dart';

abstract class SchedulePointPointRemoteDataSource {
  Future<SchedulePointPointDTO> getSchedulePointPoint(
      String from, String to, DateTime date);
}

class SchedulePointPointRemoteDataSourceImpl
    implements SchedulePointPointRemoteDataSource {
  final Dio dio;

  SchedulePointPointRemoteDataSourceImpl({required this.dio});

  @override
  Future<SchedulePointPointDTO> getSchedulePointPoint(
      String from, String to, DateTime date) async {
    final response = await dio.get('/v3.0/search/', queryParameters: {
      'apikey': yandexRaspApiKey,
      'from': from,
      'to': to,
      'date': DateFormat('yyyy-MM-dd').format(date),
    });
    return SchedulePointPointDTO.fromJson(response.data);
  }
}

class Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.uri}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.data}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}

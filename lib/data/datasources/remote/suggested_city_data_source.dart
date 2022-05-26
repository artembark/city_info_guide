import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_list_dto.dart';
import 'package:dio/dio.dart';

import '../../dto/schedule_p_p/schedule_point_point_dto.dart';
import '../../dto/suggested_city/suggested_city_compact_dto.dart';

abstract class SuggestedCityDataSource {
  Future<SuggestedCityCompactListDTO> getSuggestedCityList(String userInput);
}

class SuggestedCityDataSourceImpl implements SuggestedCityDataSource {
  SuggestedCityDataSourceImpl();

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://suggests.rasp.yandex.net',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  )..interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        responseHeader: true,
        requestHeader: true,
        request: true,
      ),
    );

  @override
  Future<SuggestedCityCompactListDTO> getSuggestedCityList(
      String userInput) async {
    final response = await dio.get('/all_suggests/', queryParameters: {
      'format': 'old',
      'lang': 'ru',
      'national_version': 'ru',
      'part': userInput,
    });
    return SuggestedCityCompactListDTO.fromApi(response.data);
  }
}

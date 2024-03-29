import 'package:city_info_guide/data/datasources/remote/suggests/suggests_api_data_source.dart';
import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_list_dto.dart';
import 'package:dio/dio.dart';

import '../../../dto/suggested_city/suggested_city_compact_dto.dart';

//TODO: сделать возможность задавать разные baseurl через getit и пробрасывать через конструктор
class YandexSuggestsApiDataSource implements SuggestsApiDataSource {
  YandexSuggestsApiDataSource();

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://suggests.rasp.yandex.net',
      headers: <String, dynamic>{
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
  Future<List<SuggestedCityCompactDTO>> getSuggestedCityListCompact(
      {required String userInput}) async {
    final Response<List<dynamic>> response = await dio
        .get<List<dynamic>>('/all_suggests', queryParameters: <String, dynamic>{
      'format': 'old',
      'lang': 'ru',
      'national_version': 'ru',
      'part': userInput,
    });
    return SuggestedCityCompactListDTO.fromApi(response.data as List<dynamic>)
        .suggests;
  }
}

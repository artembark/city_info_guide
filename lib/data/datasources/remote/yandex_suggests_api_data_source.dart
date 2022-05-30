import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_list_dto.dart';
import 'package:dio/dio.dart';

import '../../dto/suggested_city/suggested_city_compact_dto.dart';

abstract class YandexSuggestsApiDataSource {
  Future<List<SuggestedCityCompactDTO>> getSuggestedCityListCompact(
      {required String userInput});
  //TODO:implement request to full data
}

//TODO: сделать возможность задавать разные baseurl через getit и пробрасывать через конструктор
class YandexSuggestsApiDataSourceImpl implements YandexSuggestsApiDataSource {
  YandexSuggestsApiDataSourceImpl();

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
  Future<List<SuggestedCityCompactDTO>> getSuggestedCityListCompact(
      {required String userInput}) async {
    final response = await dio.get('/all_suggests', queryParameters: {
      'format': 'old',
      'lang': 'ru',
      'national_version': 'ru',
      'part': userInput,
    });
    return SuggestedCityCompactListDTO.fromApi(response.data).suggests;
  }
}

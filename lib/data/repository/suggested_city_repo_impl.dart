import 'package:city_info_guide/data/datasources/remote/yandex_suggests_api_data_source.dart';
import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_dto.dart';
import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_list_dto.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';

import '../../domain/entities/suggested_city/suggested_city_compact.dart';

class SuggestedCityCompactRepoImpl implements SuggestedCityCompactRepository {
  final YandexSuggestsApiDataSource yandexSuggestsApiDataSource;

  SuggestedCityCompactRepoImpl({required this.yandexSuggestsApiDataSource});

  @override
  Future<List<SuggestedCityCompact>> getSuggestedCityList(
      {required String userInput}) async {
    final res = await yandexSuggestsApiDataSource.getSuggestedCityListCompact(
        userInput: userInput);
    final suggestionsList = res.map((e) => e.toModel()).toList();
    return suggestionsList;
  }
}

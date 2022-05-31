import '../../../dto/suggested_city/suggested_city_compact_dto.dart';

abstract class SuggestsApiDataSource {
  Future<List<SuggestedCityCompactDTO>> getSuggestedCityListCompact(
      {required String userInput});
//TODO:implement request to full data
}

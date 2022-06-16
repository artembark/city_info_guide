import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_dto.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';

import '../../domain/entities/suggested_city/suggested_city_compact.dart';
import '../datasources/remote/suggests/suggests_api_data_source.dart';

class SuggestedCityCompactRepoImpl implements SuggestedCityCompactRepository {
  final SuggestsApiDataSource suggestsApiDataSource;

  SuggestedCityCompactRepoImpl({required this.suggestsApiDataSource});

  @override
  Future<List<SuggestedCityCompact>> getSuggestedCityList(
      {required String userInput}) async {
    final suggestedCityCompactDtoList = await suggestsApiDataSource
        .getSuggestedCityListCompact(userInput: userInput);
    final suggestionsList =
        suggestedCityCompactDtoList.map((e) => e.toModel()).toList();
    return suggestionsList;
  }
}

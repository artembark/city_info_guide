import 'package:city_info_guide/domain/entities/suggested_city/suggested_city_compact.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';

class SuggestedCityRepoImpl implements SuggestedCityRepository {
  @override
  Future<List<SuggestedCityCompact>> getSuggestedCityList(
      {required String userInput}) {
    // TODO: implement getSuggestedCityList
    throw UnimplementedError();
  }
}

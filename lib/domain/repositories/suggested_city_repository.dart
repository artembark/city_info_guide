import 'package:city_info_guide/domain/entities/suggested_city/suggested_city_compact.dart';

/// Репозиторий для получения названий населенных
/// пунктов и их кодов по введенным буквам
abstract class SuggestedCityCompactRepository {
  //получение списка городов
  Future<List<SuggestedCityCompact>> getSuggestedCityList({
    required String userInput,
  });
}

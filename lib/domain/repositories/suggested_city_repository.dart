import 'package:city_info_guide/domain/entities/suggested_city/suggested_city_compact.dart';
import 'package:city_info_guide/domain/entities/suggested_city/suggested_city_compact_list.dart';

/// Сервис, который предоставляет API для получения названий населенных
/// пунктов и их кодов по введенным буквам
abstract class SuggestedCityCompactRepository {
  //получение списка городов
  Future<List<SuggestedCityCompact>> getSuggestedCityList({
    required String userInput,
  });
}

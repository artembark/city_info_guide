import 'package:city_info_guide/domain/entities/suggested_city/suggested_city_compact.dart';

/// Сервис, который предоставляет API для получения названий населенных
/// пунктов и их кодов по введенным буквам
abstract class SuggestedCityRepository {
  //получение списка городов
  Future<List<SuggestedCityCompact>> getSuggestedCityList({
    required String userInput,
  });
}

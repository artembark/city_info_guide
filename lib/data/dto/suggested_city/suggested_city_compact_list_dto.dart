import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_dto.dart';
import 'package:city_info_guide/domain/entities/suggested_city/suggested_city_compact_list.dart';

class SuggestedCityCompactListDTO {
  List<SuggestedCityCompactDTO> suggests;

  SuggestedCityCompactListDTO({required this.suggests});

  factory SuggestedCityCompactListDTO.fromApi(data) =>
      SuggestedCityCompactListDTO(
          suggests: (data[1] as List<dynamic>)
              .map((e) => SuggestedCityCompactDTO.fromApi(e))
              .toList());
}

extension SuggestedCityCompactListMapper on SuggestedCityCompactListDTO {
  SuggestedCityCompactList toModel() {
    return SuggestedCityCompactList(
        suggests: suggests.map((e) => e.toModel()).toList());
  }
}

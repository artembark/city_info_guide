import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_dto.dart';

class SuggestedCityCompactListDTO {
  List<SuggestedCityCompactDTO>? suggests;

  SuggestedCityCompactListDTO({this.suggests});

  factory SuggestedCityCompactListDTO.fromApi(data) =>
      SuggestedCityCompactListDTO(
          suggests: (data[1] as List<dynamic>)
              .map((e) => SuggestedCityCompactDTO.fromApi(e))
              .toList());
}

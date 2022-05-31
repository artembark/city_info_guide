import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/poi.dart';

/// id : 1
/// title : "Музей-Крепость Корела"
/// description : "Идейные соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности говорит о возможностях дальнейших направлений развития. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности создаёт предпосылки для новых принципов формирования материально-технической и кадровой базы. Высокий уровень вовлечения представителей целевой аудитории является четким доказательством простого факта: новая модель организационной деятельности позволяет оценить значение новых принципов формирования материально-технической и кадровой базы! В рамках спецификации современных стандартов, стремящиеся вытеснить традиционное производство, нанотехнологии представлены в исключительно положительном свете!"
/// category : "poi"
/// image : "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f8/ab/46/img-20180512-171036537.jpg?w=500&h=400&s=1"
/// lon : 61.029946
/// lat : 30.122480
part 'poi_dto.g.dart';

@JsonSerializable()
class PoiDTO {
  final int? id;
  final String? title;
  final String? description;
  final String? category;
  final String? image;
  final double? lon;
  final double? lat;

  PoiDTO(this.id, this.title, this.description, this.category, this.image,
      this.lon, this.lat);

  factory PoiDTO.fromJson(Map<String, dynamic> json) => _$PoiDTOFromJson(json);
}

extension PoiMapper on PoiDTO {
  PlaceOfInterest toModel() {
    return PlaceOfInterest(
      id: id,
      title: title,
      description: description,
      category: category,
      image: image,
      lon: lon,
      lat: lat,
    );
  }
}

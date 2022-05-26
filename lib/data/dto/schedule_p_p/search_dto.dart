import 'package:city_info_guide/domain/entities/schedule_p_p/search.dart';

import 'from_dto.dart';
import 'to_dto.dart';

class SearchDTO {
  String? date;
  ToDTO? to;
  FromDTO? from;

  SearchDTO({this.date, this.to, this.from});

  factory SearchDTO.fromJson(Map<String, dynamic> json) => SearchDTO(
        date: json['date'] as String?,
        to: json['to'] == null
            ? null
            : ToDTO.fromJson(json['to'] as Map<String, dynamic>),
        from: json['from'] == null
            ? null
            : FromDTO.fromJson(json['from'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'date': date,
        'to': to?.toJson(),
        'from': from?.toJson(),
      };
}

extension SearchMapper on SearchDTO {
  Search toModel() {
    return Search(
      date: date,
      to: to?.toModel(),
      from: from?.toModel(),
    );
  }
}

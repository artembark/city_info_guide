import 'package:city_info_guide/domain/entities/schedule_p_p/search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'from_dto.dart';
import 'to_dto.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchDTO with _$SearchDTO {
  const factory SearchDTO({
    String? date,
    ToDTO? to,
    FromDTO? from,
  }) = _SearchDTO;

  factory SearchDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchDTOFromJson(json);
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

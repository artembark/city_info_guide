import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/search_entity.dart';
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
  SearchEntity toEntity() {
    return SearchEntity(
      date: date,
      to: to?.toEntity(),
      from: from?.toEntity(),
    );
  }
}

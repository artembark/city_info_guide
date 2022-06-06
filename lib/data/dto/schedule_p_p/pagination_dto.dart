import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/schedule_p_p/pagination.dart';

part 'pagination_dto.freezed.dart';

part 'pagination_dto.g.dart';

@freezed
class PaginationDTO with _$PaginationDTO {
  const factory PaginationDTO({
    int? total,
    int? limit,
    int? offset,
  }) = _PaginationDTO;

  factory PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationDTOFromJson(json);
}

extension PaginationMapper on PaginationDTO {
  Pagination toModel() {
    return Pagination(
      total: total,
      limit: limit,
      offset: offset,
    );
  }
}

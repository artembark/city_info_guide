import '../../../domain/entities/schedule_p_p/pagination.dart';

class PaginationDTO {
  int? total;
  int? limit;
  int? offset;

  PaginationDTO({this.total, this.limit, this.offset});

  factory PaginationDTO.fromJson(Map<String, dynamic> json) => PaginationDTO(
        total: json['total'] as int?,
        limit: json['limit'] as int?,
        offset: json['offset'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'limit': limit,
        'offset': offset,
      };
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

class PaginationEntity {
  int? total;
  int? limit;
  int? offset;

  PaginationEntity({
    required this.total,
    required this.limit,
    required this.offset,
  });
}

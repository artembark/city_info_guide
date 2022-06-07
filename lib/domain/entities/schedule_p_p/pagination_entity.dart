import 'package:equatable/equatable.dart';

class PaginationEntity extends Equatable {
  final int? total;
  final int? limit;
  final int? offset;

  const PaginationEntity({
    required this.total,
    required this.limit,
    required this.offset,
  });

  @override
  List<Object?> get props => [total, limit, offset];
}

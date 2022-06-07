import 'package:equatable/equatable.dart';

import 'pagination_entity.dart';
import 'search_entity.dart';
import 'segment_entity.dart';

class SchedulePointPointEntity extends Equatable {
  final List<dynamic>? intervalSegments;
  final PaginationEntity? pagination;
  final List<SegmentEntity>? segments;
  final SearchEntity? search;

  const SchedulePointPointEntity({
    required this.intervalSegments,
    required this.pagination,
    required this.segments,
    required this.search,
  });

  @override
  List<Object?> get props => [intervalSegments, pagination, segments, search];
}

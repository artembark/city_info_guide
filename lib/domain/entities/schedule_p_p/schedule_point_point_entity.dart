import 'pagination_entity.dart';
import 'search_entity.dart';
import 'segment_entity.dart';

class SchedulePointPointEntity {
  List<dynamic>? intervalSegments;
  PaginationEntity? pagination;
  List<SegmentEntity>? segments;
  SearchEntity? search;

  SchedulePointPointEntity({
    required this.intervalSegments,
    required this.pagination,
    required this.segments,
    required this.search,
  });
}

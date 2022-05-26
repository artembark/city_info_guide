import 'package:meta/meta.dart';

import 'pagination.dart';
import 'search.dart';
import 'segment.dart';

class SchedulePointPoint {
  List<dynamic>? intervalSegments;
  Pagination? pagination;
  List<Segment>? segments;
  Search? search;

  SchedulePointPoint({
    @required this.intervalSegments,
    @required this.pagination,
    @required this.segments,
    @required this.search,
  });
}

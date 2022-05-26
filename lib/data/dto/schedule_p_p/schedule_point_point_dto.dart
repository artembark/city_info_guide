import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/schedule_point_point.dart';
import 'pagination_dto.dart';
import 'search_dto.dart';
import 'segment_dto.dart';

part 'schedule_point_point_dto.freezed.dart';
part 'schedule_point_point_dto.g.dart';

//TODO: есть еще вариант, что модель на это уровне extends entity модель, так у ресо и у ДЛ

@freezed
class SchedulePointPointDTO with _$SchedulePointPointDTO {
  const SchedulePointPointDTO._();

  const factory SchedulePointPointDTO({
    List<dynamic>? intervalSegments,
    PaginationDTO? pagination,
    List<SegmentDTO>? segments,
    SearchDTO? search,
  }) = _SchedulePointPointDTO;

  factory SchedulePointPointDTO.fromJson(Map<String, dynamic> json) =>
      _$SchedulePointPointDTOFromJson(json);
}

extension SchedulePointPointMapper on SchedulePointPointDTO {
  SchedulePointPoint toModel() {
    return SchedulePointPoint(
      intervalSegments: intervalSegments,
      pagination: pagination?.toModel(),
      segments: segments?.map((e) => e.toModel()).toList(),
      search: search?.toModel(),
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_point_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchedulePointPointDTO _$$_SchedulePointPointDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SchedulePointPointDTO(
      intervalSegments: json['intervalSegments'] as List<dynamic>?,
      pagination: json['pagination'] == null
          ? null
          : PaginationDTO.fromJson(json['pagination'] as Map<String, dynamic>),
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => SegmentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      search: json['search'] == null
          ? null
          : SearchDTO.fromJson(json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SchedulePointPointDTOToJson(
        _$_SchedulePointPointDTO instance) =>
    <String, dynamic>{
      'intervalSegments': instance.intervalSegments,
      'pagination': instance.pagination?.toJson(),
      'segments': instance.segments?.map((e) => e.toJson()).toList(),
      'search': instance.search?.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationDTO _$$_PaginationDTOFromJson(Map<String, dynamic> json) =>
    _$_PaginationDTO(
      total: json['total'] as int?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_PaginationDTOToJson(_$_PaginationDTO instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
    };

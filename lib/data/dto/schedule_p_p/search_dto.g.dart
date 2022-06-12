// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDTO _$$_SearchDTOFromJson(Map<String, dynamic> json) => _$_SearchDTO(
      date: json['date'] as String?,
      to: json['to'] == null
          ? null
          : ToDTO.fromJson(json['to'] as Map<String, dynamic>),
      from: json['from'] == null
          ? null
          : FromDTO.fromJson(json['from'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchDTOToJson(_$_SearchDTO instance) =>
    <String, dynamic>{
      'date': instance.date,
      'to': instance.to?.toJson(),
      'from': instance.from?.toJson(),
    };

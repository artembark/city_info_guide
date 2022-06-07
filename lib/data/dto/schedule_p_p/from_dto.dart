import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/from_entity.dart';

part 'from_dto.freezed.dart';
part 'from_dto.g.dart';

@freezed
class FromDTO with _$FromDTO {
  const FromDTO._();
  factory FromDTO({
    String? code,
    String? title,
    String? stationType,
    String? popularTitle,
    String? shortTitle,
    String? transportType,
    String? stationTypeName,
    String? type,
  }) = _FromDTO;

  factory FromDTO.fromJson(Map<String, dynamic> json) =>
      _$FromDTOFromJson(json);

  // @override
  // String toString() {
  //   return 'FromDTO(code: \'$code\', title: \'$title\', stationType: \'$stationType\', popularTitle: \'$popularTitle\', shortTitle: \'$shortTitle\', transportType: \'$transportType\', stationTypeName: \'$stationTypeName\', type: \'$type\')';
  // }
}

extension FromMapper on FromDTO {
  FromEntity toEntity() {
    return FromEntity(
      code: code,
      title: title,
      stationType: stationType,
      popularTitle: popularTitle,
      shortTitle: shortTitle,
      transportType: transportType,
      stationTypeName: stationTypeName,
      type: type,
    );
  }
}

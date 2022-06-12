import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/to_entity.dart';

part 'to_dto.freezed.dart';
part 'to_dto.g.dart';

@freezed
class ToDTO with _$ToDTO {
  const ToDTO._();
  const factory ToDTO({
    String? code,
    String? title,
    String? stationType,
    String? popularTitle,
    String? shortTitle,
    String? transportType,
    String? stationTypeName,
    String? type,
  }) = _ToDTO;

  factory ToDTO.fromJson(Map<String, dynamic> json) => _$ToDTOFromJson(json);

  // @override
  // String toString() {
  //   return 'ToDTO(code: \'$code\', title: \'$title\', stationType: \'$stationType\', popularTitle: \'$popularTitle\', shortTitle: \'$shortTitle\', transportType: \'$transportType\', stationTypeName: \'$stationTypeName\', type: \'$type\')';
  // }
}

extension ToMapper on ToDTO {
  ToEntity toEntity() {
    return ToEntity(
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

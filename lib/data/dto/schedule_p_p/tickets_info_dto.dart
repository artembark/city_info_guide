import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/tickets_info_entity.dart';

part 'tickets_info_dto.freezed.dart';

part 'tickets_info_dto.g.dart';

@freezed
class TicketsInfoDTO with _$TicketsInfoDTO {
  const TicketsInfoDTO._();
  const factory TicketsInfoDTO({
    bool? etMarker,
    List<dynamic>? places,
  }) = _TicketsInfoDTO;

  factory TicketsInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$TicketsInfoDTOFromJson(json);

  // @override
  // String toString() {
  //   return 'TicketsInfoDTO(etMarker: $etMarker, places: $places)';
  // }
}

extension TicketsInfoMapper on TicketsInfoDTO {
  TicketsInfoEntity toEntity() {
    return TicketsInfoEntity(
      etMarker: etMarker,
      places: places,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/tickets_info.dart';

part 'tickets_info_dto.freezed.dart';

part 'tickets_info_dto.g.dart';

@freezed
class TicketsInfoDTO with _$TicketsInfoDTO {
  const factory TicketsInfoDTO({
    bool? etMarker,
    List<dynamic>? places,
  }) = _TicketsInfoDTO;

  factory TicketsInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$TicketsInfoDTOFromJson(json);
}

extension TicketsInfoMapper on TicketsInfoDTO {
  TicketsInfo toModel() {
    return TicketsInfo(
      etMarker: etMarker,
      places: places,
    );
  }
}

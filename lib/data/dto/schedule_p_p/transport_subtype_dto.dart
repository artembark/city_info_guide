import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/transport_subtype.dart';

part 'transport_subtype_dto.freezed.dart';

part 'transport_subtype_dto.g.dart';

@freezed
class TransportSubtypeDTO with _$TransportSubtypeDTO {
  const factory TransportSubtypeDTO({
    dynamic color,
    dynamic code,
    dynamic title,
  }) = _TransportSubtypeDTO;

  factory TransportSubtypeDTO.fromJson(Map<String, dynamic> json) =>
      _$TransportSubtypeDTOFromJson(json);
}

extension TransportSubtypeMapper on TransportSubtypeDTO {
  TransportSubtype toModel() {
    return TransportSubtype(
      color: color,
      code: code,
      title: title,
    );
  }
}

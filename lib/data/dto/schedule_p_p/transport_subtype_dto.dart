import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/transport_subtype_entity.dart';

part 'transport_subtype_dto.freezed.dart';

part 'transport_subtype_dto.g.dart';

@freezed
class TransportSubtypeDTO with _$TransportSubtypeDTO {
  const TransportSubtypeDTO._();
  const factory TransportSubtypeDTO({
    dynamic color,
    dynamic code,
    dynamic title,
  }) = _TransportSubtypeDTO;

  factory TransportSubtypeDTO.fromJson(Map<String, dynamic> json) =>
      _$TransportSubtypeDTOFromJson(json);

  // @override
  // String toString() {
  //   return 'TransportSubtypeDTO(color: \'$color\', code: \'$code\', title: \'$title\')';
  // }
}

extension TransportSubtypeMapper on TransportSubtypeDTO {
  TransportSubtypeEntity toEntity() {
    return TransportSubtypeEntity(
      color: color,
      code: code,
      title: title,
    );
  }
}

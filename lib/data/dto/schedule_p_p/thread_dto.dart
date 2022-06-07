import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/thread_entity.dart';
import 'transport_subtype_dto.dart';

part 'thread_dto.freezed.dart';
part 'thread_dto.g.dart';

@freezed
class ThreadDTO with _$ThreadDTO {
  const ThreadDTO._();
  const factory ThreadDTO({
    String? uid,
    String? title,
    String? number,
    String? shortTitle,
    String? threadMethodLink,
    dynamic carrier,
    String? transportType,
    dynamic vehicle,
    TransportSubtypeDTO? transportSubtype,
    dynamic expressType,
  }) = _ThreadDTO;

  factory ThreadDTO.fromJson(Map<String, dynamic> json) =>
      _$ThreadDTOFromJson(json);

  // @override
  // String toString() {
  //   return 'ThreadDTO(uid: \'$uid\', title: \'$title\', number: \'$number\', shortTitle: \'$shortTitle\', threadMethodLink: \'$threadMethodLink\', carrier: \'$carrier\', transportType: \'$transportType\', vehicle: \'$vehicle\', transportSubtype: $transportSubtype, expressType: \'$expressType\')';
  // }
}

extension ThreadMapper on ThreadDTO {
  ThreadEntity toEntity() {
    return ThreadEntity(
      uid: uid,
      title: title,
      number: number,
      shortTitle: shortTitle,
      threadMethodLink: threadMethodLink,
      carrier: carrier,
      transportType: transportType,
      vehicle: vehicle,
      transportSubtype: transportSubtype?.toEntity(),
      expressType: expressType,
    );
  }
}

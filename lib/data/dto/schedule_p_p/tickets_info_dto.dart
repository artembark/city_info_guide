import '../../../domain/entities/schedule_p_p/tickets_info.dart';

class TicketsInfoDTO {
  bool? etMarker;
  List<dynamic>? places;

  TicketsInfoDTO({this.etMarker, this.places});

  factory TicketsInfoDTO.fromJson(Map<String, dynamic> json) => TicketsInfoDTO(
        etMarker: json['et_marker'] as bool?,
        places: json['places'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'et_marker': etMarker,
        'places': places,
      };
}

extension TicketsInfoMapper on TicketsInfoDTO {
  TicketsInfo toModel() {
    return TicketsInfo(
      etMarker: etMarker,
      places: places,
    );
  }
}

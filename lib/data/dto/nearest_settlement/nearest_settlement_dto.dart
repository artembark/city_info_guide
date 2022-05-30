import 'package:city_info_guide/domain/entities/nearest_settlement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// distance : 0.718941331258249
/// code : "c10883"
/// title : "Приозерск"
/// popular_title : "Приозерск"
/// short_title : "Приозерск"
/// lat : 61.035787
/// lng : 30.102868
/// type : "settlement"
part 'nearest_settlement_dto.g.dart';

@JsonSerializable()
class NearestSettlementDTO {
  final double? distance;
  final String? code;
  final String? title;
  final String? popularTitle;
  final String? shortTitle;
  final double? lat;
  final double? lng;
  final String? type;

  NearestSettlementDTO(this.distance, this.code, this.title, this.popularTitle,
      this.shortTitle, this.lat, this.lng, this.type);

  factory NearestSettlementDTO.fromJson(Map<String, dynamic> json) =>
      _$NearestSettlementDTOFromJson(json);
}

extension NearestSettlementMapper on NearestSettlementDTO {
  NearestSettlement toModel() {
    return NearestSettlement(
        distance: distance,
        code: code,
        title: title,
        popularTitle: popularTitle,
        shortTitle: shortTitle,
        lat: lat,
        lng: lng,
        type: type);
  }
}

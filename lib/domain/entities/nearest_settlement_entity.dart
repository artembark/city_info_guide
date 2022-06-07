import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearest_settlement_entity.freezed.dart';

@freezed
class NearestSettlementEntity with _$NearestSettlementEntity {
  factory NearestSettlementEntity({
    required double? distance,
    required String? code,
    required String? title,
    required String? popularTitle,
    required String? shortTitle,
    required double? lat,
    required double? lng,
    required String? type,
  }) = _NearestSettlementEntity;
}

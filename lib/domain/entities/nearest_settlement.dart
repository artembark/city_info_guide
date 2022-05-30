import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearest_settlement.freezed.dart';

@freezed
class NearestSettlement with _$NearestSettlement {
  factory NearestSettlement({
    required double? distance,
    required String? code,
    required String? title,
    required String? popularTitle,
    required String? shortTitle,
    required double? lat,
    required double? lng,
    required String? type,
  }) = _NearestSettlement;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'poi.freezed.dart';

@freezed
class PlaceOfInterest with _$PlaceOfInterest {
  factory PlaceOfInterest(
      {required int? id,
      required String? title,
      required String? description,
      required String? category,
      required String? image,
      required double? lon,
      required double? lat,
      required double? oid}) = _PlaceOfInterest;
}

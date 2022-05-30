import 'package:freezed_annotation/freezed_annotation.dart';

part 'places.freezed.dart';
part 'places.g.dart';

@freezed
class PlaceOfInterest with _$PlaceOfInterest {
  factory PlaceOfInterest({
    required int id,
    required String title,
    required String description,
    required String category,
    required String image,
    required double lon,
    required double lat,
  }) = _PlaceOfInterest;

  factory PlaceOfInterest.fromJson(Map<String, dynamic> json) =>
      _$PlaceOfInterestFromJson(json);
}

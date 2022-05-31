import 'package:city_info_guide/domain/entities/poi.dart';

abstract class PlacesOfInterestRepository {
  Future<List<PlaceOfInterest>> getPlacesOfInterest();
}

import 'package:city_info_guide/domain/entities/poi.dart';

abstract class PlacesOfInterestRepository {
  // This class is intended to be used as an interface, and should not be
  // extended directly; this constructor prevents instantiation and extension.
  PlacesOfInterestRepository._();

  /// Override this method to get places of interest.
  Future<List<PlaceOfInterest>> getPlacesOfInterest();
}

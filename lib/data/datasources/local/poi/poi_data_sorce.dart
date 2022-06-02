import '../../../dto/poi_dto.dart';

abstract class PoiDataSource {
  Future<List<PoiDTO>> getPlacesOfInterest();
}

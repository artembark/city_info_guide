import 'package:city_info_guide/data/datasources/local/poi_data_sorce.dart';
import 'package:city_info_guide/data/dto/poi_dto.dart';
import 'package:city_info_guide/domain/entities/poi.dart';
import 'package:city_info_guide/domain/repositories/poi_repository.dart';

class PlacesOfInterestRepoImpl implements PlacesOfInterestRepository {
  PoiDataSource poiDataSource;

  PlacesOfInterestRepoImpl({required this.poiDataSource});

  @override
  Future<List<PlaceOfInterest>> getPlacesOfInterest() async {
    final poiDtoList = await poiDataSource.getPlacesOfInterest();
    return poiDtoList.map((poi) => poi.toModel()).toList();
  }
}

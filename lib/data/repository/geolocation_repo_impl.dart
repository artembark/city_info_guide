import 'package:city_info_guide/data/datasources/local/location/geolocator_data_source.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';

import '../datasources/local/location/location_data_sorce.dart';

class GeolocationRepositoryImpl implements GeolocationRepository {
  LocationDataSource locationDataSource;

  GeolocationRepositoryImpl({required this.locationDataSource});

  @override
  Future<Position?> getCurrentPosition() async {
    final location = await locationDataSource.getCurrentPosition();
    return location;
  }
}

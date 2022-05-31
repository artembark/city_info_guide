import 'package:city_info_guide/data/datasources/local/geolocation_data_source.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';

class GeolocationRepositoryImpl implements GeolocationRepository {
  GeolocationDataSource geolocationDataSource;

  GeolocationRepositoryImpl({required this.geolocationDataSource});

  @override
  Future<Position?> getCurrentPosition() async {
    final location = await geolocationDataSource.getCurrentPosition();
    return location;
  }
}

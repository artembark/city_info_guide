import 'package:city_info_guide/data/failure.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../datasources/local/location/location_data_sorce.dart';

class GeolocationRepositoryImpl implements GeolocationRepository {
  LocationDataSource locationDataSource;

  GeolocationRepositoryImpl({required this.locationDataSource});

  @override
  Future<Either<Failure, Position>> getCurrentPosition() async {
    try {
      final location = await locationDataSource.getCurrentPosition();
      return Right(location);
    } on LocationServiceDisabledException {
      return const Left(GeolocationFailure('Ошибка геолокации'));
    }
  }
}

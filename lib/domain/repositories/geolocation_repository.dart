import 'package:city_info_guide/data/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

/// Репозиторий для получения геолокации
abstract class GeolocationRepository {
  Future<Either<Failure, Position>> getCurrentPosition();
}

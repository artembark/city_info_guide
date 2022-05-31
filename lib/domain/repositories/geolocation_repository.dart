import 'package:geolocator/geolocator.dart';

/// Репозиторий для получения геолокации
abstract class GeolocationRepository {
  Future<Position?> getCurrentPosition();
}

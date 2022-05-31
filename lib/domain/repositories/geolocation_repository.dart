import 'package:geolocator/geolocator.dart';

abstract class GeolocationRepository {
  Future<Position?> getCurrentPosition();
}

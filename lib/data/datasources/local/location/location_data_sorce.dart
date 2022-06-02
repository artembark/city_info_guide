import 'package:geolocator/geolocator.dart';

abstract class LocationDataSource {
  Future<Position> getCurrentPosition();
}

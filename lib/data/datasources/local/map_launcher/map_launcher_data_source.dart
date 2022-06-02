abstract class MapLauncher {
  Future<bool?> isMapAvailable();

  Future<dynamic> showMarker(
      {required double pointLat,
      required double pointLon,
      required double zoom});

  Future<dynamic> showRoute({
    required double fromLat,
    required double fromLon,
    required double toLat,
    required double toLon,
    required String routeType,
  });

  Future<dynamic> showPanorama({
    required double pointLat,
    required double pointLon,
    required double directionAzimuth,
    required double directionAngle,
    required String spanHorizontal,
    required String spanVertical,
  });
}

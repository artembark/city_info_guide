import 'package:city_info_guide/data/datasources/local/map_launcher/map_launcher_data_source.dart';
import 'package:flutter/services.dart';

class YandexMapLauncher extends MapLauncher {
  static const _channel = MethodChannel('map_launcher');

  @override
  Future<bool?> isMapAvailable() {
    final Map<String, String?> methodArgs = {
      'mapPackageName': 'ru.yandex.yandexmaps',
    };
    return _channel.invokeMethod('isMapAvailable', methodArgs);
  }

  @override
  Future showPanorama(
      {required double pointLat,
      required double pointLon,
      required double directionAzimuth,
      required double directionAngle,
      required String spanHorizontal,
      required String spanVertical}) {
    final Map<String, String?> methodArgs = {
      'pointLat': pointLat.toString(),
      'pointLon': pointLon.toString(),
      'directionAzimuth': directionAzimuth.toString(),
      'directionAngle': directionAngle.toString(),
      'spanHorizontal': spanHorizontal,
      'spanVertical': spanVertical,
    };
    return _channel.invokeMethod('showRoute', methodArgs);
  }

  @override
  Future showRoute(
      {required double fromLat,
      required double fromLon,
      required double toLat,
      required double toLon,
      String? routeType}) {
    final Map<String, String?> methodArgs = {
      'fromLat': fromLat.toString(),
      'fromLon': fromLon.toString(),
      'toLat': toLat.toString(),
      'toLon': toLon.toString(),
      'routeType': routeType,
    };
    return _channel.invokeMethod('showRoute', methodArgs);
  }

  @override
  Future showMarker(
      {required double pointLat,
      required double pointLon,
      required double zoom}) {
    final Map<String, String?> methodArgs = {
      'pointLat': pointLat.toString(),
      'pointLon': pointLon.toString(),
      'zoom': zoom.toString(),
    };
    return _channel.invokeMethod('showMarker', methodArgs);
  }
}

import 'package:city_info_guide/data/datasources/local/map_launcher/map_launcher_data_source.dart';
import 'package:flutter/services.dart';

class YandexMapLauncher extends MapLauncher {
  //TODO: add web platform
  static const _channel = MethodChannel('map_launcher');

  @override
  Future<bool?> isMapAvailable() {
    final Map<String, String?> methodArgs = {
      'mapPackageName': 'ru.yandex.yandexmaps',
      'mapUrlPrefix': 'yandexmaps://',
    };
    return _channel.invokeMethod('isMapAvailable', methodArgs);
  }

  @override
  Future showPanorama(
      {required double pointLat,
      required double pointLon,
      required double directionAzimuth,
      required double directionAngle,
      required double spanHorizontal,
      required double spanVertical}) {
    String url = 'yandexmaps://?panorama[point]=$pointLon,$pointLat'
        '&panorama[direction]=$directionAzimuth,$directionAngle'
        '&panorama[span]=$spanHorizontal,$spanVertical';
    final Map<String, String?> methodArgs = {
      'url': url.toString(),
      'mapPackageName': 'ru.yandex.yandexmaps',
      'mapUrlPrefix': 'yandexmaps://',
    };
    return _channel.invokeMethod('showMap', methodArgs);
  }

  @override
  Future showRoute(
      {required double fromLat,
      required double fromLon,
      required double toLat,
      required double toLon,
      String? routeType}) {
    String url =
        'yandexmaps://maps.yandex.ru/?rtext=$fromLat,$fromLon~$toLat,$toLon'
        '&rtt=$routeType';
    final Map<String, String?> methodArgs = {
      'url': url.toString(),
      'mapPackageName': 'ru.yandex.yandexmaps',
      'mapUrlPrefix': 'yandexmaps://',
    };
    return _channel.invokeMethod('showMap', methodArgs);
  }

  @override
  Future showMarker(
      {required double pointLat,
      required double pointLon,
      required double zoom}) {
    String url =
        'yandexmaps://maps.yandex.ru/?whatshere[point]=$pointLon,$pointLat'
        '&whatshere[zoom]=$zoom';
    final Map<String, String?> methodArgs = {
      'url': url.toString(),
      'mapPackageName': 'ru.yandex.yandexmaps',
      'mapUrlPrefix': 'yandexmaps://',
    };
    return _channel.invokeMethod('showMap', methodArgs);
  }

  @override
  Future showOrgCard({
    required double oid,
  }) {
    String url = 'yandexmaps://maps.yandex.ru/?oid=${oid.floor()}';
    final Map<String, String?> methodArgs = {
      'url': url.toString(),
      'mapPackageName': 'ru.yandex.yandexmaps',
      'mapUrlPrefix': 'yandexmaps://',
    };
    return _channel.invokeMethod('showMap', methodArgs);
  }
}

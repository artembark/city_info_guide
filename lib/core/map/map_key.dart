import 'package:flutter/services.dart';

///There is no sense to pass locale at this time
///as at native side locale is used before initializing the map
///and initialization starts at onAttachToEngine before
///MethodChannels become active

Future<void> setYandexMapKitParameters(
    String yandexMapKitLocale, String yandexMapKitKey) async {
  const apiKeyChannel = MethodChannel('yandex_map_kit_channel');

  /// Map data for passing to native code
  Map<String, dynamic> requestData = {
    "yandexMapKitLocale": yandexMapKitLocale,
    "yandexMapKitKey": yandexMapKitKey,
  };
  apiKeyChannel.invokeMethod('setYandexMapKitParameters', requestData);
}

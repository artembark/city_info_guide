# City guide app project
City guide app development. Development is in progress.

## Yandex Schedule API
It is good to know how one can come to your city and leave it. So you need a schedule service.  
Project involves [Yandex Schedule Api](https://yandex.ru/dev/rasp/raspapi/)  
Documentation can be found [here](https://yandex.ru/dev/rasp/doc/concepts/about.html)  
Currently project uses two API methods:
- get schedule between two stations
- get nearest settlement to current location (geocoder)

## Suggests API
In order to simplify entering from and to position for schedule this app uses suggestions API. 
Settlements name appear as you type letters, suggesting you convenient names.
Schedule api also needs to have city codes in request. Suggests api is used for 
converting human readable city names to codes. 

## Packages used

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) for state management
- [`intl`](https://pub.dev/packages/intl) for currency, date, time formatting
- [`freezed`](https://pub.dev/packages/freezed) to reduce boilerplate code in model classes
- [`freezed_annotation`](https://pub.dev/packages/freezed_annotation) to write annotations used by freezed
- [`json_serializable`](https://pub.dev/packages/json_serializable) to create code for JSON serialization and deserialization
- [`json_annotation`](https://pub.dev/packages/json_annotation) to write annotations used by json_serializable
- [`dio`](https://pub.dev/packages/dio) for handling network requests
- [`auto_route`](https://pub.dev/packages/auto_route) for app navigation
- [`auto_route_generator`](https://pub.dev/packages/auto_route_generator) generator for `auto_route`
- [`get_it`](https://pub.dev/packages/get_it) service locator
- [`flutter_typeahead`](https://pub.dev/packages/flutter_typeahead) for showing suggestions to users as they type
- [`mockito`](https://pub.dev/packages/mockito) for testing
- [`http`](https://pub.dev/packages/http) for mockito testing
- [`shimmer`](https://pub.dev/packages/shimmer) to add shimmer effect while loading data
- [`geolocator`](https://pub.dev/packages/geolocator) for accessing platform specific location services
- [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash) for generating native splash screen
- [`build_runner`](https://pub.dev/packages/build_runner) dart code generator used by `json_serializable`, `freezed`, `auto_route`

## Package to be implemented
- [`map_launcher`](https://pub.dev/packages/map_launcher) to find available maps installed on a device and launch them with a marker or show directions

## [Native splash screen](https://pub.dev/packages/flutter_native_splash)  
A native splash screen will be shown before flutter app starts.
```yaml
flutter_native_splash:
  color: "#0B85FF"
  image: assets/images/bird.png
```
After adding assets run the following command:
```
flutter pub run flutter_native_splash:create
```
[How it works under the hood](https://github.com/jonbhanson/flutter_native_splash#how-it-works)

## Yandex Map intent
As an example of platform channel this app implements opening Yandex Map with a point to 
make route to, showing organization card and showing 360 degree panorama.  
Documentation to Yandex Map intents is [here](https://yandex.ru/dev/yandex-apps-launch/maps/)

To open Android native and iOS native from Android Studio Flutter project go to Tools-Flutter-Open 
corresponding variant. 
[Writing custom platform-specific code](https://docs.flutter.dev/development/platform-integration/platform-channels)
[How To Call iOS Native Code [2021] Swift Platform Specific Code](https://www.youtube.com/watch?v=EHQTdB2qenU)
[How To Call Android Native Code [2021] 1/2 Java & Kotlin Platform Specific Code](https://www.youtube.com/watch?v=j0cy_Z6IG_c)
For iOS don't forget to add url schemes in Info.plist file
```
<key>LSApplicationQueriesSchemes</key>
<array>
<string>yandexmaps</string>
</array>
```
## Heavy task isolate computing
The project uses Dio as network requests handler. Dio transformer allows changes to the 
request/response data before it is sent/received to/from the server. Transformer is used
to set jsonDecodeCallback to execute a jsonDecode function in a separate isolate.

```
// Must be top-level function
_parseAndDecode(String response) {
return jsonDecode(response);
}

parseJson(String text) {
return compute(_parseAndDecode, text);
}

void main() {
...
//Custom jsonDecodeCallback
(dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
runApp(MyApp());
}
```
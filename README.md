# City guide app project
City guide app development.

## Schedule API
It' good to know how one can come to your city and leave it. So you need a schedule service.  
Project involves [Yandex Schedule Api](https://yandex.ru/dev/rasp/raspapi/)  
Documentation can be found [here](https://yandex.ru/dev/rasp/doc/concepts/about.html)  

## Suggests API
Schedule api needs to have city codes in request.  
Suggestions api is used for converting human readable city names to codes. 

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
- `mockito` for testing
- `cloud_firestore` for the remote database
- [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash) for generating native splash screen
- [`build_runner`](https://pub.dev/packages/build_runner) dart code generator used by `json_serializable`, `freezed`, `auto_route`

## Package to be implemented
- [`map_launcher`](https://pub.dev/packages/map_launcher) to find available maps installed on a device and launch them with a marker or show directions

## Native splash screen
[Github repo and readme](https://github.com/jonbhanson/flutter_native_splash#readme)

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
[How it works under the hood](https://github.com/jonbhanson/flutter_native_splash#readme)

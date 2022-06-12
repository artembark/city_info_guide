# City guide app project
City guide app development. Development is in progress.

<img width="300" alt="menu" src="https://user-images.githubusercontent.com/30658712/173255351-b2c15dab-db1e-4115-9c9f-df50a46d6ed3.png">


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

## Testing coverage
```brew install lcov
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## Config for json_serializable in `build.yaml`
```targets:
$default:
builders:
json_serializable:
options:
explicit_to_json: true
field_rename: snake
```

## Android Studio file nesting rules
In Visual Studio Code you can hide dedicated file types in project tree. But sometimes you still need to look inside this files.
In Android Studio in oder to keep folder structure clear you can customize file nesting rules and add `*.g.dart` and `*.freezed.dart`. Press settings button in the upper right corner of project tree window and select "File Nesting"

<img width="300" alt="menu" src="https://user-images.githubusercontent.com/30658712/172616371-2afc9596-64d1-4003-b4ff-d5483a9e83c3.png">
Add file extensions separated by the `;`
<img width="400" alt="settings" src="https://user-images.githubusercontent.com/30658712/172616416-d4bbf00c-545a-49b0-9ca8-4831a018c3ca.png">

## Auto route
[DOC](https://github.com/Milad-Akarie/auto_route_library)
[More DOC (slightly different examples(maybe not up to date))](https://autoroute.vercel.app/introduction)

This app uses AutoRoute for navigation.
If you wrap FirstRoute() page content with BlocProvider and use context.router.push(SecondRoute())
for navigating to second page and try to access blocs provided in the first page you will get
an error. The second page doesn't know anything about blocs, provided on the first page.
In order to access the same bloc instance through multiple pages you can either pass it as a parameter orit is necessary to create nesting 
routing by creating a wrapper page and implementing BlocProvider in it. So each page on this nested 
route will have access to this bloc/blocs.
[Milad-Akarie comment](https://github.com/Milad-Akarie/auto_route_library/issues/632#issuecomment-889936599)
In a nested route there is no back button in the AppBar by default, so you need to add it manually by 
providing `leading: const AutoLeadingButton()`
By returning from a second page with back button press you can wrap the second page with 
`WillPopScope` and add events to bloc or execute functions of cubit by writing
`context.read<MyCubit>().cubitFunction();` or `context.read<MyBloc>().dispatch(blocEvent)`;
[Felix Angelov comment](https://github.com/felangel/bloc/issues/352#issuecomment-502900632)
Alternative example [implementing AutoRouteWapper](https://github.com/Milad-Akarie/auto_route_library/issues/792)

## Preload images
In order to show images instantly, without artefacts, you can preload them.
[Source](https://medium.com/flutter/improving-perceived-performance-with-image-placeholders-precaching-and-disabled-navigation-6b3601087a2b)

## To run iOS on a real device
Use `flutter run --release`

## YandexMapKit  
Problems with iOS deployment. Fixed with changing target OS version to 12.0 and running
[this](https://github.com/CocoaPods/CocoaPods/issues/10220#issuecomment-730963835)

Also need specify locale `YMKMapKit.setLocale("ru_RU")`

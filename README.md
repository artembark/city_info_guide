# City guide app project
City guide app development.

##Api's used
###rasp.yandex.ru
It' good to know how one can come to your city and leave it. So you need a schedule service.
Project involves [Yandex Schedule Api](https://yandex.ru/dev/rasp/raspapi/)
Documentation can be found [here](https://yandex.ru/dev/rasp/doc/concepts/about.html)
###suggestion api
Schedule api needs to have city codes in request. For converting human readable city names to codes
suggestions api is used. 

## Packages used

- `cloud_firestore` for the remote database
- `flutter_bloc` for state management
- `intl` for currency, date, time formatting
- `mockito` for testing
- `freezed` to reduce boilerplate code in model classes
- `dio` for handling network requests
- `auto_route` for app navigation
- [`get_it`](https://pub.dev/packages/get_it) service locator
- [`flutter_typeahead`](https://pub.dev/packages/flutter_typeahead) for showing suggestions to users as they type

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

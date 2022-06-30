// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;

import '../../domain/entities/schedule_request.dart' as _i22;
import '../../presentation/views/animals_page.dart' as _i14;
import '../../presentation/views/cars_page.dart' as _i15;
import '../../presentation/views/circle_menu_page.dart' as _i16;
import '../../presentation/views/dashboard.dart' as _i2;
import '../../presentation/views/event_page.dart' as _i12;
import '../../presentation/views/favourites_page.dart' as _i5;
import '../../presentation/views/food_page.dart' as _i11;
import '../../presentation/views/home_page.dart' as _i7;
import '../../presentation/views/home_wrapper.dart' as _i3;
import '../../presentation/views/hotels_page.dart' as _i10;
import '../../presentation/views/kids_page.dart' as _i13;
import '../../presentation/views/map_controls_page.dart' as _i4;
import '../../presentation/views/poi_page.dart' as _i9;
import '../../presentation/views/profile_page.dart' as _i6;
import '../../presentation/views/schedule_input_page.dart' as _i17;
import '../../presentation/views/schedule_result_details_page.dart' as _i19;
import '../../presentation/views/schedule_result_page.dart' as _i18;
import '../../presentation/views/schedule_wrapper.dart' as _i8;
import '../../presentation/views/splash_page.dart' as _i1;

class AppRouter extends _i20.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    DashboardRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardPage());
    },
    HomeWrapperRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeWrapperPage());
    },
    MapControlsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.MapControlsPage());
    },
    FavouritesRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FavouritesPage());
    },
    ProfileRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    HomeRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    ScheduleRouter.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ScheduleWrapperPage());
    },
    PoiRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PoiPage());
    },
    HotelsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.HotelsPage());
    },
    FoodRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FoodPage());
    },
    EventsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.EventsPage());
    },
    KidsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.KidsPage());
    },
    AnimalsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.AnimalsPage());
    },
    CarRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.CarPage());
    },
    CircleMenuRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.CircleMenuPage());
    },
    ScheduleInputRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.ScheduleInputPage());
    },
    ScheduleResultRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleResultRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i18.ScheduleResultPage(
              key: args.key, scheduleRequest: args.scheduleRequest));
    },
    ScheduleResultDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleResultDetailsRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.ScheduleResultDetailsPage(key: args.key, uid: args.uid));
    }
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(SplashRoute.name, path: '/'),
        _i20.RouteConfig(DashboardRoute.name,
            path: '/dashboard-page',
            children: [
              _i20.RouteConfig(HomeWrapperRoute.name,
                  path: 'home-wrapper-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i20.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(ScheduleRouter.name,
                        path: 'schedule-wrapper-page',
                        parent: HomeWrapperRoute.name,
                        children: [
                          _i20.RouteConfig(ScheduleInputRoute.name,
                              path: '', parent: ScheduleRouter.name),
                          _i20.RouteConfig(ScheduleResultRoute.name,
                              path: 'schedule-result-page',
                              parent: ScheduleRouter.name),
                          _i20.RouteConfig(ScheduleResultDetailsRoute.name,
                              path: 'schedule-result-details-page',
                              parent: ScheduleRouter.name)
                        ]),
                    _i20.RouteConfig(PoiRoute.name,
                        path: 'poi-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(HotelsRoute.name,
                        path: 'hotels-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(FoodRoute.name,
                        path: 'food-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(EventsRoute.name,
                        path: 'events-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(KidsRoute.name,
                        path: 'kids-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(AnimalsRoute.name,
                        path: 'animals-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(CarRoute.name,
                        path: 'car-page', parent: HomeWrapperRoute.name),
                    _i20.RouteConfig(CircleMenuRoute.name,
                        path: 'circle-menu-page', parent: HomeWrapperRoute.name)
                  ]),
              _i20.RouteConfig(MapControlsRoute.name,
                  path: 'map-controls-page', parent: DashboardRoute.name),
              _i20.RouteConfig(FavouritesRoute.name,
                  path: 'favourites-page', parent: DashboardRoute.name),
              _i20.RouteConfig(ProfileRoute.name,
                  path: 'profile-page', parent: DashboardRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i20.PageRouteInfo<void> {
  const DashboardRoute({List<_i20.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: '/dashboard-page', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.HomeWrapperPage]
class HomeWrapperRoute extends _i20.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i20.PageRouteInfo>? children})
      : super(HomeWrapperRoute.name,
            path: 'home-wrapper-page', initialChildren: children);

  static const String name = 'HomeWrapperRoute';
}

/// generated route for
/// [_i4.MapControlsPage]
class MapControlsRoute extends _i20.PageRouteInfo<void> {
  const MapControlsRoute()
      : super(MapControlsRoute.name, path: 'map-controls-page');

  static const String name = 'MapControlsRoute';
}

/// generated route for
/// [_i5.FavouritesPage]
class FavouritesRoute extends _i20.PageRouteInfo<void> {
  const FavouritesRoute()
      : super(FavouritesRoute.name, path: 'favourites-page');

  static const String name = 'FavouritesRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.ScheduleWrapperPage]
class ScheduleRouter extends _i20.PageRouteInfo<void> {
  const ScheduleRouter({List<_i20.PageRouteInfo>? children})
      : super(ScheduleRouter.name,
            path: 'schedule-wrapper-page', initialChildren: children);

  static const String name = 'ScheduleRouter';
}

/// generated route for
/// [_i9.PoiPage]
class PoiRoute extends _i20.PageRouteInfo<void> {
  const PoiRoute() : super(PoiRoute.name, path: 'poi-page');

  static const String name = 'PoiRoute';
}

/// generated route for
/// [_i10.HotelsPage]
class HotelsRoute extends _i20.PageRouteInfo<void> {
  const HotelsRoute() : super(HotelsRoute.name, path: 'hotels-page');

  static const String name = 'HotelsRoute';
}

/// generated route for
/// [_i11.FoodPage]
class FoodRoute extends _i20.PageRouteInfo<void> {
  const FoodRoute() : super(FoodRoute.name, path: 'food-page');

  static const String name = 'FoodRoute';
}

/// generated route for
/// [_i12.EventsPage]
class EventsRoute extends _i20.PageRouteInfo<void> {
  const EventsRoute() : super(EventsRoute.name, path: 'events-page');

  static const String name = 'EventsRoute';
}

/// generated route for
/// [_i13.KidsPage]
class KidsRoute extends _i20.PageRouteInfo<void> {
  const KidsRoute() : super(KidsRoute.name, path: 'kids-page');

  static const String name = 'KidsRoute';
}

/// generated route for
/// [_i14.AnimalsPage]
class AnimalsRoute extends _i20.PageRouteInfo<void> {
  const AnimalsRoute() : super(AnimalsRoute.name, path: 'animals-page');

  static const String name = 'AnimalsRoute';
}

/// generated route for
/// [_i15.CarPage]
class CarRoute extends _i20.PageRouteInfo<void> {
  const CarRoute() : super(CarRoute.name, path: 'car-page');

  static const String name = 'CarRoute';
}

/// generated route for
/// [_i16.CircleMenuPage]
class CircleMenuRoute extends _i20.PageRouteInfo<void> {
  const CircleMenuRoute()
      : super(CircleMenuRoute.name, path: 'circle-menu-page');

  static const String name = 'CircleMenuRoute';
}

/// generated route for
/// [_i17.ScheduleInputPage]
class ScheduleInputRoute extends _i20.PageRouteInfo<void> {
  const ScheduleInputRoute() : super(ScheduleInputRoute.name, path: '');

  static const String name = 'ScheduleInputRoute';
}

/// generated route for
/// [_i18.ScheduleResultPage]
class ScheduleResultRoute extends _i20.PageRouteInfo<ScheduleResultRouteArgs> {
  ScheduleResultRoute(
      {_i21.Key? key, required _i22.ScheduleRequest scheduleRequest})
      : super(ScheduleResultRoute.name,
            path: 'schedule-result-page',
            args: ScheduleResultRouteArgs(
                key: key, scheduleRequest: scheduleRequest));

  static const String name = 'ScheduleResultRoute';
}

class ScheduleResultRouteArgs {
  const ScheduleResultRouteArgs({this.key, required this.scheduleRequest});

  final _i21.Key? key;

  final _i22.ScheduleRequest scheduleRequest;

  @override
  String toString() {
    return 'ScheduleResultRouteArgs{key: $key, scheduleRequest: $scheduleRequest}';
  }
}

/// generated route for
/// [_i19.ScheduleResultDetailsPage]
class ScheduleResultDetailsRoute
    extends _i20.PageRouteInfo<ScheduleResultDetailsRouteArgs> {
  ScheduleResultDetailsRoute({_i21.Key? key, required String uid})
      : super(ScheduleResultDetailsRoute.name,
            path: 'schedule-result-details-page',
            args: ScheduleResultDetailsRouteArgs(key: key, uid: uid));

  static const String name = 'ScheduleResultDetailsRoute';
}

class ScheduleResultDetailsRouteArgs {
  const ScheduleResultDetailsRouteArgs({this.key, required this.uid});

  final _i21.Key? key;

  final String uid;

  @override
  String toString() {
    return 'ScheduleResultDetailsRouteArgs{key: $key, uid: $uid}';
  }
}

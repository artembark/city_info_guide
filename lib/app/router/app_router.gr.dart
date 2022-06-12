// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i13;

import '../../domain/entities/schedule_p_p/schedule_point_point_entity.dart'
    as _i15;
import '../../presentation/views/dashboard.dart' as _i2;
import '../../presentation/views/favourites_page.dart' as _i5;
import '../../presentation/views/home_page.dart' as _i7;
import '../../presentation/views/home_wrapper.dart' as _i3;
import '../../presentation/views/map.dart' as _i4;
import '../../presentation/views/poi_page.dart' as _i9;
import '../../presentation/views/profile_page.dart' as _i6;
import '../../presentation/views/schedule_input_page.dart' as _i10;
import '../../presentation/views/schedule_result_page.dart' as _i11;
import '../../presentation/views/schedule_wrapper.dart' as _i8;
import '../../presentation/views/splash_page.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    DashboardRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardPage());
    },
    HomeWrapperRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeWrapperPage());
    },
    MapControlsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.MapControlsPage());
    },
    FavouritesRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FavouritesPage());
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    ScheduleRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ScheduleWrapperPage());
    },
    PoiRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PoiPage());
    },
    ScheduleInputRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ScheduleInputPage());
    },
    ScheduleResultRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleResultRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ScheduleResultPage(
              key: args.key,
              schedulePointPointEntity: args.schedulePointPointEntity));
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRoute.name, path: '/'),
        _i12.RouteConfig(DashboardRoute.name,
            path: '/dashboard-page',
            children: [
              _i12.RouteConfig(HomeWrapperRoute.name,
                  path: 'home-wrapper-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i12.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeWrapperRoute.name),
                    _i12.RouteConfig(ScheduleRouter.name,
                        path: 'schedule-wrapper-page',
                        parent: HomeWrapperRoute.name,
                        children: [
                          _i12.RouteConfig(ScheduleInputRoute.name,
                              path: '', parent: ScheduleRouter.name),
                          _i12.RouteConfig(ScheduleResultRoute.name,
                              path: 'schedule-result-page',
                              parent: ScheduleRouter.name)
                        ]),
                    _i12.RouteConfig(PoiRoute.name,
                        path: 'poi-page', parent: HomeWrapperRoute.name)
                  ]),
              _i12.RouteConfig(MapControlsRoute.name,
                  path: 'map-controls-page', parent: DashboardRoute.name),
              _i12.RouteConfig(FavouritesRoute.name,
                  path: 'favourites-page', parent: DashboardRoute.name),
              _i12.RouteConfig(ProfileRoute.name,
                  path: 'profile-page', parent: DashboardRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: '/dashboard-page', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.HomeWrapperPage]
class HomeWrapperRoute extends _i12.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i12.PageRouteInfo>? children})
      : super(HomeWrapperRoute.name,
            path: 'home-wrapper-page', initialChildren: children);

  static const String name = 'HomeWrapperRoute';
}

/// generated route for
/// [_i4.MapControlsPage]
class MapControlsRoute extends _i12.PageRouteInfo<void> {
  const MapControlsRoute()
      : super(MapControlsRoute.name, path: 'map-controls-page');

  static const String name = 'MapControlsRoute';
}

/// generated route for
/// [_i5.FavouritesPage]
class FavouritesRoute extends _i12.PageRouteInfo<void> {
  const FavouritesRoute()
      : super(FavouritesRoute.name, path: 'favourites-page');

  static const String name = 'FavouritesRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.ScheduleWrapperPage]
class ScheduleRouter extends _i12.PageRouteInfo<void> {
  const ScheduleRouter({List<_i12.PageRouteInfo>? children})
      : super(ScheduleRouter.name,
            path: 'schedule-wrapper-page', initialChildren: children);

  static const String name = 'ScheduleRouter';
}

/// generated route for
/// [_i9.PoiPage]
class PoiRoute extends _i12.PageRouteInfo<void> {
  const PoiRoute() : super(PoiRoute.name, path: 'poi-page');

  static const String name = 'PoiRoute';
}

/// generated route for
/// [_i10.ScheduleInputPage]
class ScheduleInputRoute extends _i12.PageRouteInfo<void> {
  const ScheduleInputRoute() : super(ScheduleInputRoute.name, path: '');

  static const String name = 'ScheduleInputRoute';
}

/// generated route for
/// [_i11.ScheduleResultPage]
class ScheduleResultRoute extends _i12.PageRouteInfo<ScheduleResultRouteArgs> {
  ScheduleResultRoute(
      {_i14.Key? key,
      required _i15.SchedulePointPointEntity schedulePointPointEntity})
      : super(ScheduleResultRoute.name,
            path: 'schedule-result-page',
            args: ScheduleResultRouteArgs(
                key: key, schedulePointPointEntity: schedulePointPointEntity));

  static const String name = 'ScheduleResultRoute';
}

class ScheduleResultRouteArgs {
  const ScheduleResultRouteArgs(
      {this.key, required this.schedulePointPointEntity});

  final _i14.Key? key;

  final _i15.SchedulePointPointEntity schedulePointPointEntity;

  @override
  String toString() {
    return 'ScheduleResultRouteArgs{key: $key, schedulePointPointEntity: $schedulePointPointEntity}';
  }
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;

import '../../domain/entities/schedule_p_p/schedule_point_point_entity.dart'
    as _i9;
import '../../presentation/views/home_page.dart' as _i2;
import '../../presentation/views/poi_page.dart' as _i5;
import '../../presentation/views/schedule_input_page.dart' as _i3;
import '../../presentation/views/schedule_result_page.dart' as _i4;
import '../../presentation/views/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          transitionsBuilder: _i6.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomePage(),
          transitionsBuilder: _i6.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ScheduleInputRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ScheduleInputPage());
    },
    ScheduleResultRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleResultRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ScheduleResultPage(
              key: args.key,
              schedulePointPointEntity: args.schedulePointPointEntity));
    },
    PoiRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PoiPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i6.RouteConfig(ScheduleInputRoute.name, path: '/schedule-input-page'),
        _i6.RouteConfig(ScheduleResultRoute.name,
            path: '/schedule-result-page'),
        _i6.RouteConfig(PoiRoute.name, path: '/poi-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.ScheduleInputPage]
class ScheduleInputRoute extends _i6.PageRouteInfo<void> {
  const ScheduleInputRoute()
      : super(ScheduleInputRoute.name, path: '/schedule-input-page');

  static const String name = 'ScheduleInputRoute';
}

/// generated route for
/// [_i4.ScheduleResultPage]
class ScheduleResultRoute extends _i6.PageRouteInfo<ScheduleResultRouteArgs> {
  ScheduleResultRoute(
      {_i8.Key? key,
      required _i9.SchedulePointPointEntity schedulePointPointEntity})
      : super(ScheduleResultRoute.name,
            path: '/schedule-result-page',
            args: ScheduleResultRouteArgs(
                key: key, schedulePointPointEntity: schedulePointPointEntity));

  static const String name = 'ScheduleResultRoute';
}

class ScheduleResultRouteArgs {
  const ScheduleResultRouteArgs(
      {this.key, required this.schedulePointPointEntity});

  final _i8.Key? key;

  final _i9.SchedulePointPointEntity schedulePointPointEntity;

  @override
  String toString() {
    return 'ScheduleResultRouteArgs{key: $key, schedulePointPointEntity: $schedulePointPointEntity}';
  }
}

/// generated route for
/// [_i5.PoiPage]
class PoiRoute extends _i6.PageRouteInfo<void> {
  const PoiRoute() : super(PoiRoute.name, path: '/poi-page');

  static const String name = 'PoiRoute';
}

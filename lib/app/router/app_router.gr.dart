// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../../domain/entities/schedule_p_p/schedule_point_point_entity.dart'
    as _i10;
import '../../presentation/views/home_page.dart' as _i2;
import '../../presentation/views/poi_page.dart' as _i4;
import '../../presentation/views/schedule_input_page.dart' as _i5;
import '../../presentation/views/schedule_result_page.dart' as _i6;
import '../../presentation/views/schedule_wrapper.dart' as _i3;
import '../../presentation/views/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    ScheduleRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ScheduleWrapperPage());
    },
    PoiRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PoiPage());
    },
    ScheduleInputRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ScheduleInputPage());
    },
    ScheduleResultRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleResultRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ScheduleResultPage(
              key: args.key,
              schedulePointPointEntity: args.schedulePointPointEntity));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i7.RouteConfig(ScheduleRouter.name,
            path: '/schedule-wrapper-page',
            children: [
              _i7.RouteConfig(ScheduleInputRoute.name,
                  path: '', parent: ScheduleRouter.name),
              _i7.RouteConfig(ScheduleResultRoute.name,
                  path: 'schedule-result-page', parent: ScheduleRouter.name)
            ]),
        _i7.RouteConfig(PoiRoute.name, path: '/poi-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.ScheduleWrapperPage]
class ScheduleRouter extends _i7.PageRouteInfo<void> {
  const ScheduleRouter({List<_i7.PageRouteInfo>? children})
      : super(ScheduleRouter.name,
            path: '/schedule-wrapper-page', initialChildren: children);

  static const String name = 'ScheduleRouter';
}

/// generated route for
/// [_i4.PoiPage]
class PoiRoute extends _i7.PageRouteInfo<void> {
  const PoiRoute() : super(PoiRoute.name, path: '/poi-page');

  static const String name = 'PoiRoute';
}

/// generated route for
/// [_i5.ScheduleInputPage]
class ScheduleInputRoute extends _i7.PageRouteInfo<void> {
  const ScheduleInputRoute() : super(ScheduleInputRoute.name, path: '');

  static const String name = 'ScheduleInputRoute';
}

/// generated route for
/// [_i6.ScheduleResultPage]
class ScheduleResultRoute extends _i7.PageRouteInfo<ScheduleResultRouteArgs> {
  ScheduleResultRoute(
      {_i9.Key? key,
      required _i10.SchedulePointPointEntity schedulePointPointEntity})
      : super(ScheduleResultRoute.name,
            path: 'schedule-result-page',
            args: ScheduleResultRouteArgs(
                key: key, schedulePointPointEntity: schedulePointPointEntity));

  static const String name = 'ScheduleResultRoute';
}

class ScheduleResultRouteArgs {
  const ScheduleResultRouteArgs(
      {this.key, required this.schedulePointPointEntity});

  final _i9.Key? key;

  final _i10.SchedulePointPointEntity schedulePointPointEntity;

  @override
  String toString() {
    return 'ScheduleResultRouteArgs{key: $key, schedulePointPointEntity: $schedulePointPointEntity}';
  }
}

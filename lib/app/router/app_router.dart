import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/presentation/views/favourites_page.dart';
import 'package:city_info_guide/presentation/views/home_page.dart';
import 'package:city_info_guide/presentation/views/map.dart';
import 'package:city_info_guide/presentation/views/profile_page.dart';
import 'package:city_info_guide/presentation/views/schedule_input_page.dart';
import 'package:city_info_guide/presentation/views/splash_page.dart';
import 'package:flutter/cupertino.dart';

import '../../presentation/views/dashboard.dart';
import '../../presentation/views/home_wrapper.dart';
import '../../presentation/views/poi_page.dart';
import '../../presentation/views/schedule_result_page.dart';
import '../../presentation/views/schedule_wrapper.dart';

//part 'app_router.gr.dart';

//can define path parameter to change path name
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: DashboardPage,
      children: [
        AutoRoute(
          page: HomeWrapperPage,
          children: [
            AutoRoute(
              page: HomePage,
              initial: true,
            ),
            AutoRoute(
              page: ScheduleWrapperPage,
              name: 'ScheduleRouter',
              children: [
                AutoRoute(
                  initial: true,
                  page: ScheduleInputPage,
                ),
                AutoRoute(page: ScheduleResultPage),
              ],
            ),
            AutoRoute(page: PoiPage),
          ],
        ),
        AutoRoute(page: MapPage),
        AutoRoute(page: FavouritesPage),
        AutoRoute(page: ProfilePage),
      ],
    )
  ],
)
// extend the generated private router
// class AppRouter extends _$AppRouter {}
class $AppRouter {}

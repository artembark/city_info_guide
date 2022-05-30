import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/presentation/views/home_page.dart';
import 'package:city_info_guide/presentation/views/schedule_page.dart';
import 'package:city_info_guide/presentation/views/splash_page.dart';

import '../../presentation/views/poi_page.dart';

//part 'app_router.gr.dart';

//can define path parameter to change path name
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
        page: SplashPage,
        initial: true,
        transitionsBuilder: TransitionsBuilders.noTransition),
    CustomRoute(page: HomePage, transitionsBuilder: TransitionsBuilders.fadeIn),
    AutoRoute(page: SchedulePage),
    AutoRoute(page: PoiPage),
  ],
)
// extend the generated private router
// class AppRouter extends _$AppRouter {}
class $AppRouter {}
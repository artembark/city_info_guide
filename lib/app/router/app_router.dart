import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/presentation/views/circle_menu_page.dart';
import 'package:city_info_guide/presentation/views/favourites_page.dart';
import 'package:city_info_guide/presentation/views/home_page.dart';
import 'package:city_info_guide/presentation/views/map_controls_page.dart';
import 'package:city_info_guide/presentation/views/profile_page.dart';
import 'package:city_info_guide/presentation/views/schedule_input_page.dart';
import 'package:city_info_guide/presentation/views/splash_page.dart';

import '../../presentation/views/animals_page.dart';
import '../../presentation/views/cars_page.dart';
import '../../presentation/views/dashboard.dart';
import '../../presentation/views/event_page.dart';
import '../../presentation/views/food_page.dart';
import '../../presentation/views/home_wrapper.dart';
import '../../presentation/views/hotels_page.dart';
import '../../presentation/views/kids_page.dart';
import '../../presentation/views/poi_page.dart';
import '../../presentation/views/schedule_result_details_page.dart';
import '../../presentation/views/schedule_result_page.dart';
import '../../presentation/views/schedule_wrapper.dart';

//part 'app_router.gr.dart';

//can define path parameter to change path name
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<AutoRoute>(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute<AutoRoute>(
      page: DashboardPage,
      children: [
        AutoRoute<AutoRoute>(
          page: HomeWrapperPage,
          children: [
            AutoRoute<AutoRoute>(
              page: HomePage,
              initial: true,
            ),
            AutoRoute<AutoRoute>(
              page: ScheduleWrapperPage,
              name: 'ScheduleRouter',
              children: [
                AutoRoute<AutoRoute>(
                  initial: true,
                  page: ScheduleInputPage,
                ),
                AutoRoute<AutoRoute>(page: ScheduleResultPage),
                AutoRoute<AutoRoute>(page: ScheduleResultDetailsPage),
              ],
            ),
            AutoRoute<AutoRoute>(page: PoiPage),
            AutoRoute<AutoRoute>(page: HotelsPage),
            AutoRoute<AutoRoute>(page: FoodPage),
            AutoRoute<AutoRoute>(page: EventsPage),
            AutoRoute<AutoRoute>(page: KidsPage),
            AutoRoute<AutoRoute>(page: AnimalsPage),
            AutoRoute<AutoRoute>(page: CarPage),
            AutoRoute<AutoRoute>(page: CircleMenuPage),
          ],
        ),
        AutoRoute<AutoRoute>(page: MapControlsPage),
        AutoRoute<AutoRoute>(page: FavouritesPage),
        AutoRoute<AutoRoute>(page: ProfilePage),
      ],
    )
  ],
)
// extend the generated private router
// class AppRouter extends _$AppRouter {}
class $AppRouter {}

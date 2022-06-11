import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return AutoTabsScaffold(
        routes: const [
          HomeWrapperRoute(),
          MapControlsRoute(),
          FavouritesRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (index) => tabsRouter.setActiveIndex(index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.houseUser), label: 'Главная'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.map), label: 'Карта'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.heart), label: 'Избранное'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.user), label: 'Профиль'),
            ],
          );
        });
  }
}

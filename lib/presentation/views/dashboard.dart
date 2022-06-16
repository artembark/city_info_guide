import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/core/l10n/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
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
            destinations: [
              NavigationDestination(
                icon: const Icon(FontAwesomeIcons.houseUser),
                label: LocaleKeys.tab_main.tr(),
              ),
              NavigationDestination(
                icon: const Icon(FontAwesomeIcons.map),
                label: LocaleKeys.tab_map.tr(),
              ),
              NavigationDestination(
                icon: const Icon(FontAwesomeIcons.heart),
                label: LocaleKeys.tab_favourites.tr(),
              ),
              NavigationDestination(
                icon: const Icon(FontAwesomeIcons.user),
                label: LocaleKeys.tab_profile.tr(),
              ),
            ],
          );
        });
  }
}

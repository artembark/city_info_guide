import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/navigation_observer.dart';
import 'package:city_info_guide/app/theme/theme.dart';
import 'package:city_info_guide/core/bloc_observer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/router/app_router.gr.dart';
import 'core/l10n/codegen_loader.g.dart';
import 'injector.dart' as di;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  await di.initializeDependencies();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  BlocOverrides.runZoned(
    () {
      runApp(
        EasyLocalization(
          //overriding locale
          startLocale: const Locale('ru', 'RU'),
          assetLoader: const CodegenLoader(),
          path: 'assets/translations/',
          supportedLocales: const [Locale('en', 'US'), Locale('ru', 'RU')],
          child: CityInfoGuideApp(),
        ),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class CityInfoGuideApp extends StatelessWidget {
  CityInfoGuideApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(_appRouter,
          navigatorObservers: () => [MyObserver()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/navigation_observer.dart';
import 'package:city_info_guide/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/router/app_router.gr.dart';
import 'injector.dart' as di;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await di.initializeDependencies();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      //status bar color only for android
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness
          .light, //dark copy: when light text is black, when dark - white
    ),
  );
  FlutterNativeSplash.remove();
  BlocOverrides.runZoned(
    () {
      runApp(CityInfoGuideApp());
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
      theme: Theme.of(context).copyWith(
        navigationBarTheme: NavigationBarThemeData().copyWith(
          labelTextStyle: MaterialStateProperty.all(
            GoogleFonts.montserrat(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(_appRouter,
          navigatorObservers: () => [MyObserver()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

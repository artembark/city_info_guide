import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/navigation_observer.dart';
import 'package:city_info_guide/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/router/app_router.gr.dart';
import 'injector.dart' as di;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initializeDateFormatting('fr_FR', null);
  await di.initializeDependencies();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
          navigationBarTheme: const NavigationBarThemeData().copyWith(
            labelTextStyle: MaterialStateProperty.all(
              GoogleFonts.montserrat(),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              textStyle: MaterialStateProperty.all(
                  GoogleFonts.montserrat(color: Colors.black)),
              // backgroundColor:
              //     MaterialStateProperty.all(const Color(0xFFbad6ec)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          appBarTheme: const AppBarTheme().copyWith(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            titleTextStyle: GoogleFonts.montserrat(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
            elevation: 0,
            color: Colors.transparent,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.black38,
              statusBarIconBrightness: Brightness.light,
              // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
          )),
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(_appRouter,
          navigatorObservers: () => [MyObserver()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

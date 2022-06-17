import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/core/l10n/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:city_info_guide/app/assets/assets.gen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var expanded = false;
  final homePageHeaderImage = Image.asset(Assets.images.korela1.path);
  final splashImage = Image.asset(Assets.images.korela.path);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500)).then(
      (value) => FlutterNativeSplash.remove(),
    );
    Future.delayed(const Duration(milliseconds: 700)).then(
      (value) => setState(() {
        expanded = true;
      }),
    );
    Future.delayed(const Duration(milliseconds: 1500)).then((value) {
      return context.router.replace(const DashboardRoute());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(homePageHeaderImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.korela.path),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Transform.translate(
                offset: const Offset(0, 200),
                child: AnimatedCrossFade(
                  crossFadeState: !expanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: Container(),
                  secondChild: Text(
                    LocaleKeys.priozersk_caps.tr(),
                    style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFd2cbbf),
                      ),
                    ),
                  ),
                  duration: const Duration(milliseconds: 500),
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

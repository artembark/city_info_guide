import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/assets.gen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var expanded = false;
  BorderRadius borderRadius = BorderRadius.circular(0);
  BoxShape boxShape = BoxShape.rectangle;
  double scale = 3.5;
  bool pos = false;
  final theImage = Image.asset('assets/images/korela1.JPG');
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 0))
        .then((value) => setState(() {
              expanded = true;
              scale = 0.79;
            }));

    Future.delayed(const Duration(milliseconds: 1700)).then((value) {
      setState(() {
        pos = true;
      });
      return context.router.replace(const DashboardRoute());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(theImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        offset: pos ? const Offset(-1, 0) : const Offset(0, 0),
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.images.korela.path),
                        fit: BoxFit.cover)),
                child: null),
            // AnimatedScale(
            //   curve: Curves.fastOutSlowIn,
            //   scale: scale,
            //   duration: const Duration(seconds: 1),
            //   child: Container(
            //     decoration: const BoxDecoration(
            //       color: Color(0xFF0B85FF),
            //       shape: BoxShape.circle,
            //     ),
            //   ),
            // ),
            Center(
              child: Transform.translate(
                offset: const Offset(0, 200),
                child: AnimatedCrossFade(
                  crossFadeState: !expanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: Container(),
                  secondChild: Text(
                    'ПРИОЗЕРСК',
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
            // AnimatedCrossFade(
            //   crossFadeState: CrossFadeState.showFirst,
            //   firstChild: Container(),
            //   secondChild: FractionallySizedBox(
            //       widthFactor: 0.7,
            //       child: Column(
            //         children: const [Text('Долгота'), Text('Широта')],
            //       )),
            //   duration: const Duration(milliseconds: 300),
            //   alignment: Alignment.centerRight,
            // ),
          ],
        ),
      ),
    );
  }
}

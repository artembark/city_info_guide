import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';

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
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 0)).then((value) => setState(() {
          expanded = true;
          scale = 0.79;
        }));
    Future.delayed(Duration(milliseconds: 1400))
        .then((value) => AutoRouter.of(context).push(const HomeRoute()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Stack(
          children: [
            AnimatedScale(
              scale: scale,
              duration: Duration(seconds: 1),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0B85FF),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: AnimatedCrossFade(
                crossFadeState: !expanded
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: Container(),
                secondChild: FractionallySizedBox(
                    widthFactor: 0.7,
                    child: Image.asset('assets/images/prio_splash.png')),
                duration: Duration(milliseconds: 300),
                alignment: Alignment.centerRight,
              ),
            ),
            AnimatedCrossFade(
              crossFadeState: CrossFadeState.showFirst,
              firstChild: Container(),
              secondChild: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Column(
                    children: [Text('Долгота'), Text('Широта')],
                  )),
              duration: Duration(milliseconds: 300),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    ));
  }
}
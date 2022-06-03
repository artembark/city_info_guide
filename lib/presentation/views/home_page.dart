import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO:refactor bubbles, add shadow, add appear and moving animation to all
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Assets.images.mainCircle.image(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 'priozersk',
                  child: Assets.images.prioSplash
                      .image(width: MediaQuery.of(context).size.width * 0.7)),
            ),
            Positioned(
              top: 120,
              left: 40,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const PoiRoute()),
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 120.0,
                    minHeight: 120.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0061C2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF0061C2).withOpacity(0.8),
                        offset: const Offset(0, 5),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  child: const Center(
                      child: Text(
                    'Гостиницы',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              right: 30,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const PoiRoute()),
                child: const CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Color(0xFF007FFF),
                  child: Center(
                      child: Text(
                    'Что посмотреть?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 15,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const ScheduleRoute()),
                child: const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color(0xFF8DC6FF),
                  child: Center(
                      child: Text(
                    'Транспорт',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Positioned(
              bottom: 170,
              left: 40,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const ScheduleRoute()),
                child: const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color(0xFFD143BE),
                  child: Center(
                      child: Text(
                    'Где поесть',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Positioned(
              top: 160,
              right: 40,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const ScheduleRoute()),
                child: const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color(0xFFC68EB9),
                  child: Center(
                      child: Text(
                    'События',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Positioned(
              top: 70,
              right: 130,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const ScheduleRoute()),
                child: const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color(0xFF5381AE),
                  child: Center(
                      child: Text(
                    'Детям',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

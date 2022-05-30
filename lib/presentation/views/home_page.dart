import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
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
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image(
                    image: AssetImage('assets/images/main_circle.png'),
                  )
                  //Image.asset('assets/images/main_circle.png'),
                  ),
            ),
            Positioned(
              top: 120,
              left: 40,
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const PoiRoute()),
                child: Container(
                  constraints: BoxConstraints(
                    minWidth: 120.0,
                    minHeight: 120.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF0061C2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF0061C2).withOpacity(0.8),
                        offset: Offset(0, 5),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  child: Center(
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
                child: CircleAvatar(
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
                child: CircleAvatar(
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
                child: CircleAvatar(
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
                child: CircleAvatar(
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
                child: CircleAvatar(
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

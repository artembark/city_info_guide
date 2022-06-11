import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        //actions: [Assets.images.bird.image()],
        title: Text(
          'ПРИОЗЕРСК',
          style: GoogleFonts.sourceSansPro(
            textStyle: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xFFBAC7D3),
            ),
          ),
        ),
      ),
      // title: Assets.images.prioSplash.image(
      //   width: MediaQuery.of(context).size.width * 0.6,
      // ),
      body: Column(
        children: [
          Image.asset('assets/images/korela1.JPG'),
          Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: GridView(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 120,
                    childAspectRatio: 1),
                children: [
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF007FFF).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.mapLocation,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'Что посмотреть',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)),
                            child: Image.asset(
                              'assets/images/tochka.jpeg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        const Text(
                          'Гостиницы',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.pushRoute(const ScheduleRouter()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF8DC6FF).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.bus,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'Транспорт',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFD143BE).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.plateWheat,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'Где поесть',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFC68EB9).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.calendar,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'События',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF5381AE).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.child,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'Детям',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF5381AE).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.carrot,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'Морковка',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(const PoiRoute()),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF5381AE).withOpacity(0.5)),
                          child: const Icon(
                            FontAwesomeIcons.gasPump,
                            size: 35,
                          ),
                        ),
                        const Text(
                          'Заправка',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
        title: Text(
          'ПРИОЗЕРСК',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFFd2cbbf),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Assets.images.korela1.image(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 235,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: GridView(
                  padding: const EdgeInsets.fromLTRB(6, 12, 6, 6),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 5,
                      childAspectRatio: 1 / 1.2),
                  children: [
                    MenuGridItem(
                      onTap: () => context.router.push(const PoiRoute()),
                      icon: FontAwesomeIcons.mapLocation,
                      backgroundColor: const Color(0xFF007FFF).withOpacity(0.5),
                      title: 'Места',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const ScheduleRouter()),
                      icon: FontAwesomeIcons.hotel,
                      backgroundColor: const Color(0xFF8DC6AF).withOpacity(0.5),
                      title: 'Гостиницы',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const ScheduleRouter()),
                      icon: FontAwesomeIcons.bus,
                      backgroundColor: const Color(0xFF8DC6FF).withOpacity(0.5),
                      title: 'Транспорт',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const PoiRoute()),
                      icon: FontAwesomeIcons.plateWheat,
                      backgroundColor: const Color(0xFFD143BE).withOpacity(0.5),
                      title: 'Где поесть',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const PoiRoute()),
                      icon: FontAwesomeIcons.calendar,
                      backgroundColor: const Color(0xFFC68EB9).withOpacity(0.5),
                      title: 'События',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const PoiRoute()),
                      icon: FontAwesomeIcons.child,
                      backgroundColor: const Color(0xFF5381AE).withOpacity(0.5),
                      title: 'Детям',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const PoiRoute()),
                      icon: FontAwesomeIcons.kiwiBird,
                      backgroundColor: const Color(0xFF5381DE).withOpacity(0.5),
                      title: 'Животные',
                    ),
                    MenuGridItem(
                      onTap: () => context.pushRoute(const PoiRoute()),
                      icon: FontAwesomeIcons.car,
                      backgroundColor: const Color(0xFF5381FE).withOpacity(0.5),
                      title: 'Авто',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Популярное',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PopularItem(
                          onTap: () {},
                          imagePath: Assets.images.korela1.path,
                          title: 'Крепость Корела',
                          type: 'Музей',
                          color: const Color(0xFF007FFF),
                        ),
                        PopularItem(
                          onTap: () {},
                          imagePath: Assets.images.tochka.path,
                          title: 'Точка на карте',
                          type: 'Гостиница',
                          color: const Color(0xFF8DC6AF),
                        ),
                        PopularItem(
                          onTap: () {},
                          imagePath: Assets.images.station.path,
                          title: 'Вокзал',
                          type: 'Место',
                          color: const Color(0xFF007FFF),
                        ),
                        PopularItem(
                          onTap: () {},
                          imagePath: Assets.images.pointAndLine.path,
                          title: 'Точка и линия на плоскости',
                          type: 'Кафе',
                          color: const Color(0xFFD143BE),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class PopularItem extends StatelessWidget {
  const PopularItem(
      {Key? key,
      required this.title,
      required this.imagePath,
      required this.color,
      required this.type,
      required this.onTap})
      : super(key: key);

  final String title;
  final String type;
  final String imagePath;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.2,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
          side: const BorderSide(
            color: Colors.black12,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Ink.image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 150),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: color.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    type,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 150),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: color.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuGridItem extends StatelessWidget {
  const MenuGridItem(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.backgroundColor,
      required this.icon})
      : super(key: key);

  final VoidCallback onTap;
  final Color backgroundColor;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: backgroundColor),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }
}

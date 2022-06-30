import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/assets/assets.gen.dart';

class CircleMenuPage extends StatefulWidget {
  const CircleMenuPage({Key? key}) : super(key: key);

  @override
  State<CircleMenuPage> createState() => _CircleMenuPageState();
}

class _CircleMenuPageState extends State<CircleMenuPage>
    with TickerProviderStateMixin {
  late AnimationController _itemsController;
  late AnimationController _mainMenuController;
  late Animation _mainMenuAnimation;
  bool toggle = false;
  bool rippleAnimation = true;
  double mainCircleSize = 60;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500)).then(
      (value) => FlutterNativeSplash.remove(),
    );
    _itemsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _mainMenuController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _mainMenuAnimation =
        Tween(begin: 0.8, end: 1.0).animate(_mainMenuController);
    _mainMenuController.repeat(
      reverse: true,
    );
    _mainMenuController.addListener(() {
      setState(() {});
    });
    _itemsController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _itemsController.dispose();
    super.dispose();
  }

  Alignment alignment1 = const Alignment(0.0, 0.0);
  Alignment alignment2 = const Alignment(0.0, 0.0);
  Alignment alignment3 = const Alignment(0.0, 0.0);
  Alignment alignment4 = const Alignment(0.0, 0.0);
  Alignment alignment5 = const Alignment(0.0, 0.0);
  Alignment alignment6 = const Alignment(0.0, 0.0);
  Alignment alignment7 = const Alignment(0.0, 0.0);
  Alignment alignment8 = const Alignment(0.0, 0.0);
  double size1 = 0.0;
  double size2 = 0.0;
  double size3 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.images.korela.path),
                fit: BoxFit.cover)),
        child: Center(
          child: SizedBox(
            height: 250,
            width: 250,
            child: Stack(
              children: [
                Transform.scale(
                  scale: 1,
                  child: CircleMenuItem(
                    toggle: toggle,
                    alignment: alignment1,
                    size: size1,
                    imagePath: null,
                    title: 'Кафе',
                  ),
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment2,
                  size: size1,
                  imagePath: null,
                  title: 'Гостиницы',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment3,
                  size: size1,
                  imagePath: null,
                  title: 'Транспорт',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment4,
                  size: size1,
                  imagePath: null,
                  title: 'События',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment5,
                  size: size1,
                  imagePath: null,
                  title: 'Добрые дела',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment6,
                  size: size1,
                  imagePath: null,
                  title: 'Места',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment7,
                  size: size1,
                  imagePath: null,
                  title: 'Детям',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment8,
                  size: size1,
                  imagePath: null,
                  title: 'Мастера',
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 375),
                  // height: toggle ? 100.0 : 80.0,
                  // width: toggle ? 100.0 : 80.0,
                  curve: Curves.easeOut,
                  child: InkWell(
                    splashColor: Colors.black54,
                    radius: 31,
                    onTapUp: (_) {
                      setState(() {
                        if (!toggle) {
                          toggle = !toggle;
                          _itemsController.forward();
                          Future.delayed(const Duration(milliseconds: 10), () {
                            alignment1 = const Alignment(-1.7, -2);
                            alignment2 = const Alignment(0, -2);
                            alignment3 = const Alignment(1.7, 0);
                            alignment4 = const Alignment(-1.7, 0);
                            alignment5 = const Alignment(1.7, -2);
                            alignment6 = const Alignment(-1.7, 2);
                            alignment7 = const Alignment(0, 2);
                            alignment8 = const Alignment(1.7, 2);
                            size1 = 100.0;
                            //    mainCircleSize = 70;
                            //_mainMenuController.stop();
                            rippleAnimation = false;
                          });
                        } else {
                          toggle = !toggle;
                          _itemsController.reverse();
                          alignment1 = const Alignment(0.0, 0.0);
                          alignment2 = const Alignment(0.0, 0.0);
                          alignment3 = const Alignment(0.0, 0.0);
                          alignment4 = const Alignment(0.0, 0.0);
                          alignment5 = const Alignment(0.0, 0.0);
                          alignment6 = const Alignment(0.0, 0.0);
                          alignment7 = const Alignment(0.0, 0.0);
                          alignment8 = const Alignment(0.0, 0.0);
                          size1 = 0.0;
                          rippleAnimation = true;
                          //  mainCircleSize = 60.0;
                          // _mainMenuController.repeat(reverse: true);
                        }
                      });
                    },
                    onTap: () {
                      setState(() {
                        //mainCircleSize = 40;
                      });
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: AvatarGlow(
                        startDelay: const Duration(milliseconds: 1000),
                        glowColor: Colors.white,
                        endRadius: 100.0,
                        duration: const Duration(milliseconds: 2000),
                        repeat: true,
                        showTwoGlows: true,
                        repeatPauseDuration: const Duration(milliseconds: 100),
                        shape: BoxShape.circle,
                        //animate: rippleAnimation,
                        animate: false,
                        curve: Curves.fastOutSlowIn,
                        child: Material(
                          elevation: 8.0,
                          shape: const CircleBorder(),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(Assets.images.bird.path),
                            radius: mainCircleSize * _mainMenuAnimation.value,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*IconButton(
                            splashColor: Colors.black54,
                            splashRadius: 31.0,
                            onPressed: () {
                              setState(() {
                                if (!toggle) {
                                  toggle = !toggle;
                                  _controller.forward();
                                  Future.delayed(
                                      const Duration(milliseconds: 10), () {
                                    alignment1 = const Alignment(-1.7, -2);
                                    alignment2 = const Alignment(0, -2);
                                    alignment3 = const Alignment(1.7, -2);
                                    size1 = 100.0;
                                  });
                                } else {
                                  toggle = !toggle;
                                  _controller.reverse();
                                  alignment1 = const Alignment(0.0, 0.0);
                                  alignment2 = const Alignment(0.0, 0.0);
                                  alignment3 = const Alignment(0.0, 0.0);
                                  size1 = 20.0;
                                }
                              });
                            },
                            icon: const Icon(
                              FontAwesomeIcons.plateWheat,
                              size: 27,
                            ),
                          ),*/
/*CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment1,
                  size: size1,
                  imagePath: Assets.images.foodGen.path,
                  title: 'Генацвале',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment2,
                  size: size1,
                  imagePath: Assets.images.foodTer.path,
                  title: 'Терраса',
                ),
                CircleMenuItem(
                  toggle: toggle,
                  alignment: alignment3,
                  size: size1,
                  imagePath: Assets.images.foodTnk.path,
                  title: 'Точка',
                ),*/
class CircleMenuItem extends StatelessWidget {
  const CircleMenuItem({
    Key? key,
    required this.toggle,
    required this.alignment,
    required this.size,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  final bool toggle;
  final Alignment alignment;
  final double size;
  final String title;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration: toggle
          ? const Duration(milliseconds: 275)
          : const Duration(milliseconds: 375),
      alignment: alignment,
      curve: toggle ? Curves.easeIn : Curves.easeOut,
      child: AnimatedContainer(
        alignment: Alignment.bottomCenter,
        duration: toggle
            ? const Duration(milliseconds: 275)
            : const Duration(milliseconds: 375),
        curve: toggle ? Curves.easeIn : Curves.easeOut,
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          // image: DecorationImage(
          //   image: AssetImage(
          //     imagePath,
          //   ),
          // ),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

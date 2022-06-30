/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bird.png
  AssetGenImage get bird => const AssetGenImage('assets/images/bird.png');

  /// File path: assets/images/bird_square.png
  AssetGenImage get birdSquare =>
      const AssetGenImage('assets/images/bird_square.png');

  /// File path: assets/images/food_gen.png
  AssetGenImage get foodGen =>
      const AssetGenImage('assets/images/food_gen.png');

  /// File path: assets/images/food_ter.jpeg
  AssetGenImage get foodTer =>
      const AssetGenImage('assets/images/food_ter.jpeg');

  /// File path: assets/images/food_tnk.png
  AssetGenImage get foodTnk =>
      const AssetGenImage('assets/images/food_tnk.png');

  /// File path: assets/images/korela.png
  AssetGenImage get korela => const AssetGenImage('assets/images/korela.png');

  /// File path: assets/images/korela1.JPG
  AssetGenImage get korela1 => const AssetGenImage('assets/images/korela1.JPG');

  /// File path: assets/images/korela2.jpg
  AssetGenImage get korela2 => const AssetGenImage('assets/images/korela2.jpg');

  /// File path: assets/images/main_circle.png
  AssetGenImage get mainCircle =>
      const AssetGenImage('assets/images/main_circle.png');

  /// File path: assets/images/point_and_line.jpeg
  AssetGenImage get pointAndLine =>
      const AssetGenImage('assets/images/point_and_line.jpeg');

  /// File path: assets/images/prio_splash.png
  AssetGenImage get prioSplash =>
      const AssetGenImage('assets/images/prio_splash.png');

  /// File path: assets/images/station.png
  AssetGenImage get station => const AssetGenImage('assets/images/station.png');

  /// File path: assets/images/tochka.jpeg
  AssetGenImage get tochka => const AssetGenImage('assets/images/tochka.jpeg');
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/bus_driving.json
  String get busDriving => 'assets/lottie/bus_driving.json';
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/ru-RU.json
  String get ruRU => 'assets/translations/ru-RU.json';
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const String places = 'assets/places.json';
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

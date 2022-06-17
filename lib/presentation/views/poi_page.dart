import 'package:city_info_guide/data/datasources/local/map_launcher/yandex_map_launcher.dart';
import 'package:city_info_guide/presentation/blocs/poi/poi_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/l10n/locale_keys.dart';
import '../../domain/entities/poi.dart';
import '../../injector.dart';

class PoiPage extends StatefulWidget {
  const PoiPage({Key? key}) : super(key: key);

  @override
  State<PoiPage> createState() => _PoiPageState();
}

class _PoiPageState extends State<PoiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.pois.tr()),
      ),
      body: SafeArea(
          child: BlocProvider(
        create: (_) => sl<PoiCubit>()..getPointsOfInterest(),
        child: const PoiView(),
      )),
    );
  }
}

class PoiView extends StatelessWidget {
  const PoiView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PoiCubit, PoiState>(builder: (context, state) {
      return state.map(
        initial: (state) => const PoiInitial(),
        loading: (state) => const PoiLoading(),
        success: (state) => PoiSuccess(
          placesOfInterest: state.placesOfInterest,
        ),
        empty: (state) => const PoiEmpty(),
        failure: (state) => PoiError(
          exception: state.exception,
        ),
      );
    });
  }
}

class PoiError extends StatelessWidget {
  const PoiError({Key? key, required this.exception}) : super(key: key);

  final Exception exception;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        exception.toString(),
      ),
    );
  }
}

class PoiEmpty extends StatelessWidget {
  const PoiEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(LocaleKeys.error.tr()),
    );
  }
}

class PoiSuccess extends StatelessWidget {
  const PoiSuccess({Key? key, required this.placesOfInterest})
      : super(key: key);

  final List<PlaceOfInterest> placesOfInterest;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: placesOfInterest.length,
      itemBuilder: (context, index) {
        return PoiCard(placesOfInterest: placesOfInterest[index]);
      },
    );
  }
}

class PoiCard extends StatelessWidget {
  const PoiCard({
    Key? key,
    required this.placesOfInterest,
  }) : super(key: key);

  final PlaceOfInterest placesOfInterest;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(
          color: Colors.black45,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      color: Colors.grey[200],
      child: Row(
        children: [
          CachedNetworkImage(
            fit: BoxFit.fitHeight,
            imageBuilder: (context, imageProvider) => Container(
              width: 190,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            imageUrl: placesOfInterest.image!,
            placeholder: (_, __) => Shimmer.fromColors(
              baseColor: Colors.grey[500]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                width: 190.0,
                height: 150.0,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      placesOfInterest.title ?? '-',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => YandexMapLauncher().showPanorama(
                            pointLat: placesOfInterest.lat!,
                            pointLon: placesOfInterest.lon!,
                            directionAzimuth: 0,
                            directionAngle: 0,
                            spanHorizontal: 0,
                            spanVertical: 0),
                        child: Text(LocaleKeys.panorama.tr()),
                      ),
                      // ElevatedButton(
                      //   onPressed: () => YandexMapLauncher().showMarker(
                      //       pointLat: placesOfInterest.lat!,
                      //       pointLon: placesOfInterest.lon!,
                      //       zoom: 17),
                      //   child: Text(LocaleKeys.to_ya_map.tr()),
                      // ),
                      ElevatedButton(
                        onPressed: () => YandexMapLauncher()
                            .showOrgCard(oid: placesOfInterest.oid!),
                        child: Text(LocaleKeys.to_ya_map.tr()),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PoiLoading extends StatelessWidget {
  const PoiLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class PoiInitial extends StatelessWidget {
  const PoiInitial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

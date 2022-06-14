import 'package:city_info_guide/data/datasources/local/map_launcher/yandex_map_launcher.dart';
import 'package:city_info_guide/presentation/blocs/poi/poi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

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
        title: const Text('Достопримечательности'),
      ),
      body: SafeArea(
          child: BlocProvider(
        create: (_) => sl<PoiCubit>()..getPointsOfInterest(),
        child: BlocBuilder<PoiCubit, PoiState>(builder: (context, state) {
          return state.map(
            initial: (state) =>
                const Center(child: CircularProgressIndicator()),
            loading: (state) =>
                const Center(child: CircularProgressIndicator()),
            success: (state) {
              return ListView.builder(
                itemCount: state.placesOfInterest.length,
                itemBuilder: (context, index) {
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
                          imageUrl: state.placesOfInterest[index].image!,
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
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: Text(
                                  state.placesOfInterest[index].title ?? '-',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500),
                                )),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () => YandexMapLauncher()
                                          .showPanorama(
                                              pointLat: state
                                                  .placesOfInterest[index].lat!,
                                              pointLon: state
                                                  .placesOfInterest[index].lon!,
                                              directionAzimuth: 0,
                                              directionAngle: 0,
                                              spanHorizontal: 0,
                                              spanVertical: 0),
                                      child: Text('Панорама'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () => YandexMapLauncher()
                                          .showMarker(
                                              pointLat: state
                                                  .placesOfInterest[index].lat!,
                                              pointLon: state
                                                  .placesOfInterest[index].lon!,
                                              zoom: 17),
                                      child: Text('В Яндекс Карты'),
                                    ),
                                    // ElevatedButton(
                                    //   onPressed: () => YandexMapLauncher()
                                    //       .showOrgCard(
                                    //           oid: state.placesOfInterest[index]
                                    //               .oid!),
                                    //   child: Text('Карточка'),
                                    // )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            empty: (state) => const Center(
              child: Text('Пусто'),
            ),
            failure: (state) => Center(
              child: Text(
                state.exception.toString(),
              ),
            ),
          );
        }),
      )),
    );
  }
}

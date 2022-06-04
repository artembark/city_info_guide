import 'package:city_info_guide/data/datasources/local/map_launcher/yandex_map_launcher.dart';
import 'package:city_info_guide/domain/blocs/poi/poi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: state.placesOfInterest[index].image!,
                          placeholder: (_, __) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 250.0,
                            child: Shimmer.fromColors(
                                baseColor: Colors.grey[500]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 200.0,
                                  height: 250.0,
                                  color: Colors.white,
                                )),
                          ),
                          height: 250,
                          // progressIndicatorBuilder:
                          //     (context, url, downloadProgress) =>
                          //         CircularProgressIndicator(
                          //             value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        // Image.network(
                        //   state.placesOfInterest[index].image!,
                        // ),
                        ListTile(
                          title: Column(
                            children: [
                              Text(state.placesOfInterest[index].title ?? '-'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.panorama),
                                    onPressed: () {
                                      YandexMapLauncher().showPanorama(
                                          pointLat: state
                                              .placesOfInterest[index].lat!,
                                          pointLon: state
                                              .placesOfInterest[index].lon!,
                                          directionAzimuth: 0,
                                          directionAngle: 0,
                                          spanHorizontal: 0,
                                          spanVertical: 0);
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.control_point),
                                    onPressed: () {
                                      YandexMapLauncher().showMarker(
                                          pointLat: state
                                              .placesOfInterest[index].lat!,
                                          pointLon: state
                                              .placesOfInterest[index].lon!,
                                          zoom: 17);
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.circle),
                                    onPressed: () {
                                      YandexMapLauncher().showOrgCard(
                                          oid: state
                                              .placesOfInterest[index].oid!);
                                    },
                                  ),
                                ],
                              )
                            ],
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

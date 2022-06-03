import 'package:city_info_guide/data/datasources/local/map_launcher/yandex_map_launcher.dart';
import 'package:city_info_guide/domain/blocs/poi/poi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                        Image.network(
                          state.placesOfInterest[index].image!,
                        ),
                        ListTile(
                          title:
                              Text(state.placesOfInterest[index].title ?? '-'),
                          trailing: IconButton(
                            icon: const Icon(Icons.map_outlined),
                            onPressed: () {
                              YandexMapLauncher()
                                  .isMapAvailable()
                                  .then((value) => print(value));
                              // YandexMapLauncher().showRoute(
                              //     fromLat: 61.042566,
                              //     fromLon: 30.137968,
                              //     toLat: 61.029901,
                              //     toLon: 30.122463,
                              //     routeType: 'auto');
                              // YandexMapLauncher().showMarker(
                              //     pointLat: state.placesOfInterest[index].lat!,
                              //     pointLon: state.placesOfInterest[index].lon!,
                              //     zoom: 17);
                              // YandexMapLauncher().showOrgCard(
                              //     oid: state.placesOfInterest[index].oid!);
                              YandexMapLauncher().showPanorama(
                                  pointLat: state.placesOfInterest[index].lat!,
                                  pointLon: state.placesOfInterest[index].lon!,
                                  directionAzimuth: 0,
                                  directionAngle: 0,
                                  spanHorizontal: 0,
                                  spanVertical: 0);
                            },
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

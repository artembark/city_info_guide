import 'package:city_info_guide/domain/blocs/poi/poi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

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
// CachedNetworkImage(
//   imageUrl: places[index].image,
//   placeholder: (context, url) =>
//       CircularProgressIndicator(),
//   errorWidget: (context, url, error) =>
//       Icon(Icons.error),
// ),
//TODO: refactor !
                        FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: state.placesOfInterest[index].image!,
                        ),
// Image.network(
//   places[index].image,
// ),
//TODO: refactor !
                        ListTile(
                          title:
                              Text(state.placesOfInterest[index].title ?? '-'),
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

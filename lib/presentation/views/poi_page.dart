import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:city_info_guide/domain/entities/poi.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PoiPage extends StatefulWidget {
  const PoiPage({Key? key}) : super(key: key);

  @override
  State<PoiPage> createState() => _PoiPageState();
}

class _PoiPageState extends State<PoiPage> {
  late List<PlaceOfInterest> places;

  Future<List<PlaceOfInterest>> loadData() async {
    String data =
        await DefaultAssetBundle.of(context).loadString('assets/places.json');
    Iterable l = jsonDecode(data);
    places = List<PlaceOfInterest>.from(
        l.map((model) => PlaceOfInterest.fromJson(model)));
    return places;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Достопримечательности'),
      ),
      body: SafeArea(
        child: FutureBuilder<List<PlaceOfInterest>>(
          future: loadData(),
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: places.length,
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
                          image: places[index].image!,
                        ),
                        // Image.network(
                        //   places[index].image,
                        // ),
                        //TODO: refactor !
                        ListTile(
                          title: Text(places[index].title ?? '-'),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    loadData();
  }
}

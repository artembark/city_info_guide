import 'dart:convert';

import 'package:city_info_guide/data/datasources/local/poi_data_sorce.dart';
import 'package:city_info_guide/data/dto/poi_dto.dart';
import 'package:flutter/services.dart';

class LocalPoiDataSource implements PoiDataSource {
  @override
  Future<List<PoiDTO>> getPlacesOfInterest() async {
    String dataFromFile = await rootBundle.loadString('assets/places.json');
    Iterable poiDtoIterableJson = jsonDecode(dataFromFile);
    return List<PoiDTO>.from(
        poiDtoIterableJson.map((model) => PoiDTO.fromJson(model)));
  }
}

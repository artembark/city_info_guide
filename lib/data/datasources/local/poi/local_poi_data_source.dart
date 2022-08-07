import 'dart:convert';

import 'package:city_info_guide/data/dto/poi_dto.dart';
import 'package:flutter/services.dart';

import 'poi_data_sorce.dart';

class AssetJsonPoiDataSource implements PoiDataSource {
  @override
  Future<List<PoiDTO>> getPlacesOfInterest() async {
    String dataFromFile = await rootBundle.loadString('assets/places.json');
    List<Map<String, dynamic>> poiDtoIterableJson =
        jsonDecode(dataFromFile) as List<Map<String, dynamic>>;
    return poiDtoIterableJson
        .map((Map<String, dynamic> model) => PoiDTO.fromJson(model))
        .toList();
  }
}

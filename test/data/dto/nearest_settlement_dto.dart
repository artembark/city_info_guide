import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/dummy_data/dummy_schedule_point_point_dto.dart';
import '../../helpers/dummy_data/dummy_schedule_point_point_entity.dart';
import '../../helpers/dummy_data/new_dummmy_schedule_point_point_dto.dart';
import '../../helpers/dummy_data/new_dummmy_schedule_point_point_entity.dart';
import '../../helpers/json_reader.dart';

void main() {
  final testNearestSettlementDTO = NearestSettlementDTO(
      distance: 1.239882235661964,
      code: "c10883",
      title: "Приозерск",
      popularTitle: "Приозерск",
      shortTitle: "Приозерск",
      lat: 61.035787,
      lng: 30.102868,
      type: "settlement");

  final testNearestSettlementEntity = NearestSettlementEntity(
      distance: 1.239882235661964,
      code: "c10883",
      title: "Приозерск",
      popularTitle: "Приозерск",
      shortTitle: "Приозерск",
      lat: 61.035787,
      lng: 30.102868,
      type: "settlement");

  group('to entity', () {
    test('should be a subclass of nearest settlement entity', () {
      final result = testNearestSettlementDTO.toEntity();
      expect(result, equals(testNearestSettlementEntity));
    });
  });

  group('from json', () {
    test(
      'should return a valid model from json',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          readJson('helpers/dummy_data/dummy_nearest_settlement_response.json'),
        );
        final result = NearestSettlementDTO.fromJson(jsonMap);
        expect(result, equals(testNearestSettlementDTO));
      },
    );
  });

  group('to json', () {
    test(
      'should return a json map containing proper data',
      () async {
        final result = testNearestSettlementDTO.toJson();
        final Map<String, dynamic> expectedJsonMapFromFile = json.decode(
          File('test/helpers/dummy_data/dummy_nearest_settlement_response.json')
              .readAsStringSync(),
        );
        //alternative
        final expectedJsonMap = {
          "distance": 1.239882235661964,
          "code": "c10883",
          "title": "Приозерск",
          "popular_title": "Приозерск",
          "short_title": "Приозерск",
          "lat": 61.035787,
          "lng": 30.102868,
          "type": "settlement"
        };
        expect(result, equals(expectedJsonMapFromFile));
      },
    );
  });
}

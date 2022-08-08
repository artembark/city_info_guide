import 'dart:convert';
import 'dart:io';

import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testNearestSettlementDTO = NearestSettlementDTO(
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
      'should return a valid nearest settlement model from json',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(File(
                'test/helpers/dummy_data/dummy_nearest_settlement_response.json')
            .readAsStringSync()) as Map<String, dynamic>;
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
        final Map<String, dynamic> expectedJsonMapFromFile = jsonDecode(
          File('test/helpers/dummy_data/dummy_nearest_settlement_response.json')
              .readAsStringSync(),
        ) as Map<String, dynamic>;
        //alternative
        // final expectedJsonMap = {
        //   "distance": 1.239882235661964,
        //   "code": "c10883",
        //   "title": "Приозерск",
        //   "popular_title": "Приозерск",
        //   "short_title": "Приозерск",
        //   "lat": 61.035787,
        //   "lng": 30.102868,
        //   "type": "settlement"
        // };
        expect(result, equals(expectedJsonMapFromFile));
      },
    );
  });
}

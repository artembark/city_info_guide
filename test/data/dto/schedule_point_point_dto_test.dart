import 'dart:convert';
import 'dart:io';

import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/dummy_data/new_dummmy_schedule_point_point_dto.dart';
import '../../helpers/dummy_data/new_dummmy_schedule_point_point_entity.dart';

void main() {
  group('to entity', () {
    test('should be a subclass of schedule_input point point entity', () {
      final result = testSchedulePointPointDTO.toEntity();
      expect(result, equals(testSchedulePointPointEntity));
    });
  });

  group('from json', () {
    test(
      'should return a valid model from json',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          File('test/helpers/dummy_data/new_dummy.json').readAsStringSync(),
        );
        final result = SchedulePointPointDTO.fromJson(jsonMap);
        expect(result, equals(testSchedulePointPointDTO));
      },
    );
  });

  group('to json', () {
    test(
      'should return a json map containing proper data',
      () async {
        final result = testSchedulePointPointDTO.toJson();
        final Map<String, dynamic> expectedJsonMap = json.decode(
          File('test/helpers/dummy_data/new_dummy.json').readAsStringSync(),
        );
        expect(result, equals(expectedJsonMap));
      },
    );
  });
}

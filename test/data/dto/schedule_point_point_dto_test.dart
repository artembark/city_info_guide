import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/dummy_data/dummy_schedule_point_point_dto.dart';
import '../../helpers/dummy_data/dummy_schedule_point_point_entity.dart';
import '../../helpers/dummy_data/new_dummmy_schedule_point_point_dto.dart';
import '../../helpers/dummy_data/new_dummmy_schedule_point_point_entity.dart';
import '../../helpers/json_reader.dart';

void main() {
  group('to entity', () {
    test('should be a subclass of schedule point point entity', () {
      final result = testSchedulePointPointDTO.toEntity();
      expect(result, equals(testSchedulePointPointEntity));
    });
  });

  group('from json', () {
    test(
      'should return a valid model from json',
      () async {
        // final Map<String, dynamic> jsonMap = json.decode(
        //   readJson('helpers/dummy_data/dummy_response_without_transfers.json'),
        // );
        //print(tSchedulePointPointDTO);
        final Map<String, dynamic> jsonMap = json.decode(
          readJson('helpers/dummy_data/new_dummy.json'),
        );
        //print(tSchedulePointPointDTO);
        final result = SchedulePointPointDTO.fromJson(jsonMap);
        // print(result);
        // print(testSchedulePointPointDTO);
        // final filename = 'outString.txt';
        //File(filename).writeAsString(result.toString());
        //expect(true, true);
        expect(result, equals(testSchedulePointPointDTO));
      },
    );
  });

  group('to json', () {
    test(
      'should return a json map containing proper data',
      () async {
        final result = testSchedulePointPointDTO.toJson();
        print(result);
        final Map<String, dynamic> expectedJsonMap = json.decode(
          readJson('helpers/dummy_data/new_dummy.json'),
        );
        print(expectedJsonMap);
        // final expectedJsonMap = {
        //   'weather': [
        //     {
        //       'main': 'Clouds',
        //       'description': 'few clouds',
        //       'icon': '02d',
        //     }
        //   ],
        //   'main': {
        //     'temp': 302.28,
        //     'pressure': 1009,
        //     'humidity': 70,
        //   },
        //   'name': 'Jakarta',
        // };
        expect(result, equals(expectedJsonMap));
      },
    );
  });
}

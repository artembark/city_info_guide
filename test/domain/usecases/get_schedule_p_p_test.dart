import 'dart:convert';
import 'dart:io';

import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/domain/usecases/get_schedule_p_p.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockScheduleRepository mockScheduleRepository;
  late GetSchedulePointPoint usecase;

  setUp(() {
    mockScheduleRepository = MockScheduleRepository();
    usecase = GetSchedulePointPoint(mockScheduleRepository);
  });

  test(
    'should get schedule from the repository',
    () async {
      final file =
          File('test/helpers/dummy_data/dummy_response_without_transfers.json')
              .readAsStringSync();
      final jsonFile = jsonDecode(file);
      final schedule = SchedulePointPointDTO.fromJson(jsonFile).toEntity();
      // arrange
      when(mockScheduleRepository.getSchedulePointPoint(
              from: 'c2', to: 'c10893', date: DateTime(2022, 6, 10)))
          .thenAnswer((_) async => Right(schedule));
      // act
      final result = await usecase.execute(
          from: 'c2', to: 'c10893', date: DateTime(2022, 6, 10));
      // assert
      expect(result, equals(Right(schedule)));
    },
  );
}

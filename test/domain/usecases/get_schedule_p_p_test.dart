import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import 'package:city_info_guide/domain/usecases/get_schedule_p_p.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/dummy_data/dummy_schedule_point_point_entity.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockScheduleRepository mockScheduleRepository;
  late GetSchedulePointPoint usecase;

  setUp(() {
    mockScheduleRepository = MockScheduleRepository();
    usecase = GetSchedulePointPoint(scheduleRepository: mockScheduleRepository);
  });

  test(
    'should get schedule_input from the repository',
    () async {
      when(mockScheduleRepository.getSchedulePointPoint(
              from: 'c2', to: 'c10893', date: DateTime(2022, 6, 10)))
          .thenAnswer((_) async => Right(tSchedulePointPointEntity));
      final result = await usecase.call(SchedulePointPointParams(
          from: 'c2', to: 'c10893', dateTime: DateTime(2022, 6, 10)));
      expect(
          result,
          equals(Right<dynamic, SchedulePointPointEntity>(
              tSchedulePointPointEntity)));
    },
  );
}

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
}

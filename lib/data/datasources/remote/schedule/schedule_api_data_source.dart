import '../../../dto/nearest_settlement/nearest_settlement_dto.dart';
import '../../../dto/schedule_p_p/schedule_point_point_dto.dart';

abstract class ScheduleApiDataSource {
  Future<SchedulePointPointDTO> getSchedulePointPoint(
      {required String from, required String to, required DateTime date});

  Future<NearestSettlementDTO> getNearestSettlement(
      {required double lat, required double lon});
}

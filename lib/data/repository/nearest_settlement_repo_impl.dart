import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:city_info_guide/domain/entities/nearest_settlement.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';

import '../datasources/remote/schedule/schedule_api_data_source.dart';

class NearestSettlementRepoImpl implements NearestSettlementRepository {
  final ScheduleApiDataSource scheduleApiDataSource;
  NearestSettlementRepoImpl({required this.scheduleApiDataSource});

  @override
  Future<NearestSettlement> getNearestSettlement(
      {required double lat, required double lon}) async {
    final res =
        await scheduleApiDataSource.getNearestSettlement(lat: lat, lon: lon);
    return res.toModel();
  }
}

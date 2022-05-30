import 'package:city_info_guide/domain/entities/nearest_settlement.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point.dart';

/// Сервис, который предоставляет API для получения ближайшего к данной геопозиции
/// названия города с его кодом
abstract class NearestSettlementRepository {
  Future<NearestSettlement> getNearestSettlement({
    required String lat,
    required String lon,
  });
}

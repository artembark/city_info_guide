import 'package:city_info_guide/data/failure.dart';
import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart';
import 'package:dartz/dartz.dart';

/// Репозиторий для получения ближайшего к данной геопозиции
/// названия города с его кодом
abstract class NearestSettlementRepository {
  Future<Either<Failure, NearestSettlementEntity>> getNearestSettlement({
    required double lat,
    required double lon,
  });
}

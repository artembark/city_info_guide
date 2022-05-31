import 'package:city_info_guide/data/datasources/remote/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:city_info_guide/domain/entities/nearest_settlement.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';

class NearestSettlementRepoImpl implements NearestSettlementRepository {
  final YandexRaspApiDataSource yandexRaspApiDataSource;
  NearestSettlementRepoImpl({required this.yandexRaspApiDataSource});

  @override
  Future<NearestSettlement> getNearestSettlement(
      {required double lat, required double lon}) async {
    final res =
        await yandexRaspApiDataSource.getNearestSettlement(lat: lat, lon: lon);
    return res.toModel();
  }
}

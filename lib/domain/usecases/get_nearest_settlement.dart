import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';
import 'package:city_info_guide/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../data/failure.dart';

class GetNearestSettlement extends UseCase<NearestSettlementEntity, NoParams> {
  final NearestSettlementRepository nearestSettlementRepository;
  final GeolocationRepository geolocationRepository;

  GetNearestSettlement(
      {required this.nearestSettlementRepository,
      required this.geolocationRepository});

  @override
  Future<Either<Failure, NearestSettlementEntity>> call(NoParams params) async {
    final position = await geolocationRepository.getCurrentPosition();
    position.map((r) => null);
    return position.fold(
        (l) => const Left(GeolocationFailure('Geolocation Failure')),
        (nearestSettlement) async =>
            await nearestSettlementRepository.getNearestSettlement(
                lat: nearestSettlement.latitude,
                lon: nearestSettlement.longitude));
  }
}

class NearestSettlementParams extends Equatable {
  final double lat;
  final double lon;

  const NearestSettlementParams({required this.lat, required this.lon});

  @override
  List<Object?> get props => [];
}

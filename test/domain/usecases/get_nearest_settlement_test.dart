import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart';
import 'package:city_info_guide/domain/usecases/get_nearest_settlement.dart';
import 'package:city_info_guide/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockNearestSettlementRepository mockNearestSettlementRepository;
  late MockGeolocationRepository mockGeolocationRepository;
  late GetNearestSettlement usecase;

  setUp(() {
    mockNearestSettlementRepository = MockNearestSettlementRepository();
    mockGeolocationRepository = MockGeolocationRepository();
    usecase = GetNearestSettlement(
        nearestSettlementRepository: mockNearestSettlementRepository,
        geolocationRepository: mockGeolocationRepository);
  });
  Position position = Position(
      longitude: 31.001,
      latitude: 61.001,
      timestamp: DateTime(2022, 06, 20),
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0);

  final testNearestSettlementEntity = NearestSettlementEntity(
      distance: 1.239882235661964,
      code: "c10883",
      title: "Приозерск",
      popularTitle: "Приозерск",
      shortTitle: "Приозерск",
      lat: 61.035787,
      lng: 30.102868,
      type: "settlement");

  test(
    'should get schedule_input from the repository',
    () async {
      when(mockGeolocationRepository.getCurrentPosition())
          .thenAnswer((_) async => Right(position));
      when(mockNearestSettlementRepository.getNearestSettlement(
              lat: 61.001, lon: 31.001))
          .thenAnswer((_) async => Right(testNearestSettlementEntity));
      final result = await usecase.call(NoParams());
      expect(
          result,
          equals(Right<dynamic, NearestSettlementEntity>(
              testNearestSettlementEntity)));
    },
  );
}

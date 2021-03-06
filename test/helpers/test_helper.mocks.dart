// Mocks generated by Mockito 5.2.0 from annotations
// in city_info_guide/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;

import 'package:bloc/bloc.dart' as _i18;
import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart'
    as _i16;
import 'package:city_info_guide/data/dto/list_stations_route/list_stations_route_dto.dart'
    as _i5;
import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart'
    as _i4;
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart'
    as _i3;
import 'package:city_info_guide/data/failure.dart' as _i10;
import 'package:city_info_guide/domain/entities/nearest_settlement_entity.dart'
    as _i13;
import 'package:city_info_guide/domain/entities/poi.dart' as _i17;
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart'
    as _i15;
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart'
    as _i8;
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart'
    as _i12;
import 'package:city_info_guide/domain/repositories/poi_repository.dart' as _i6;
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart'
    as _i14;
import 'package:city_info_guide/presentation/blocs/poi/poi_cubit.dart' as _i7;
import 'package:dartz/dartz.dart' as _i2;
import 'package:geolocator/geolocator.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeSchedulePointPointDTO_1 extends _i1.Fake
    implements _i3.SchedulePointPointDTO {}

class _FakeNearestSettlementDTO_2 extends _i1.Fake
    implements _i4.NearestSettlementDTO {}

class _FakeListStationsRouteDTO_3 extends _i1.Fake
    implements _i5.ListStationsRouteDTO {}

class _FakePlacesOfInterestRepository_4 extends _i1.Fake
    implements _i6.PlacesOfInterestRepository {}

class _FakePoiState_5 extends _i1.Fake implements _i7.PoiState {}

/// A class which mocks [GeolocationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGeolocationRepository extends _i1.Mock
    implements _i8.GeolocationRepository {
  MockGeolocationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i11.Position>> getCurrentPosition() =>
      (super.noSuchMethod(Invocation.method(#getCurrentPosition, []),
          returnValue: Future<_i2.Either<_i10.Failure, _i11.Position>>.value(
              _FakeEither_0<_i10.Failure, _i11.Position>())) as _i9
          .Future<_i2.Either<_i10.Failure, _i11.Position>>);
}

/// A class which mocks [NearestSettlementRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockNearestSettlementRepository extends _i1.Mock
    implements _i12.NearestSettlementRepository {
  MockNearestSettlementRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i13.NearestSettlementEntity>>
      getNearestSettlement({double? lat, double? lon}) => (super.noSuchMethod(
          Invocation.method(#getNearestSettlement, [], {#lat: lat, #lon: lon}),
          returnValue: Future<
                  _i2.Either<_i10.Failure, _i13.NearestSettlementEntity>>.value(
              _FakeEither_0<_i10.Failure, _i13.NearestSettlementEntity>())) as _i9
          .Future<_i2.Either<_i10.Failure, _i13.NearestSettlementEntity>>);
}

/// A class which mocks [ScheduleRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockScheduleRepository extends _i1.Mock
    implements _i14.ScheduleRepository {
  MockScheduleRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i15.SchedulePointPointEntity>>
      getSchedulePointPoint({String? from, String? to, DateTime? date}) =>
          (super.noSuchMethod(
              Invocation.method(#getSchedulePointPoint, [],
                  {#from: from, #to: to, #date: date}),
              returnValue:
                  Future<_i2.Either<_i10.Failure, _i15.SchedulePointPointEntity>>.value(
                      _FakeEither_0<_i10.Failure, _i15.SchedulePointPointEntity>())) as _i9
              .Future<_i2.Either<_i10.Failure, _i15.SchedulePointPointEntity>>);
}

/// A class which mocks [ScheduleApiDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockScheduleApiDataSource extends _i1.Mock
    implements _i16.ScheduleApiDataSource {
  MockScheduleApiDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i3.SchedulePointPointDTO> getSchedulePointPoint(
          {String? from, String? to, DateTime? date}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getSchedulePointPoint, [], {#from: from, #to: to, #date: date}),
          returnValue: Future<_i3.SchedulePointPointDTO>.value(
              _FakeSchedulePointPointDTO_1())) as _i9
          .Future<_i3.SchedulePointPointDTO>);
  @override
  _i9.Future<_i4.NearestSettlementDTO> getNearestSettlement(
          {double? lat, double? lon}) =>
      (super.noSuchMethod(
          Invocation.method(#getNearestSettlement, [], {#lat: lat, #lon: lon}),
          returnValue: Future<_i4.NearestSettlementDTO>.value(
              _FakeNearestSettlementDTO_2())) as _i9
          .Future<_i4.NearestSettlementDTO>);
  @override
  _i9.Future<_i5.ListStationsRouteDTO> getListStationsRoute({String? uid}) =>
      (super.noSuchMethod(
              Invocation.method(#getListStationsRoute, [], {#uid: uid}),
              returnValue: Future<_i5.ListStationsRouteDTO>.value(
                  _FakeListStationsRouteDTO_3()))
          as _i9.Future<_i5.ListStationsRouteDTO>);
}

/// A class which mocks [PlacesOfInterestRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlacesOfInterestRepository extends _i1.Mock
    implements _i6.PlacesOfInterestRepository {
  MockPlacesOfInterestRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<List<_i17.PlaceOfInterest>> getPlacesOfInterest() =>
      (super.noSuchMethod(Invocation.method(#getPlacesOfInterest, []),
              returnValue: Future<List<_i17.PlaceOfInterest>>.value(
                  <_i17.PlaceOfInterest>[]))
          as _i9.Future<List<_i17.PlaceOfInterest>>);
}

/// A class which mocks [PoiCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockPoiCubit extends _i1.Mock implements _i7.PoiCubit {
  MockPoiCubit() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.PlacesOfInterestRepository get placesOfInterestRepository =>
      (super.noSuchMethod(Invocation.getter(#placesOfInterestRepository),
              returnValue: _FakePlacesOfInterestRepository_4())
          as _i6.PlacesOfInterestRepository);
  @override
  _i7.PoiState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakePoiState_5()) as _i7.PoiState);
  @override
  _i9.Stream<_i7.PoiState> get stream => (super.noSuchMethod(
      Invocation.getter(#stream),
      returnValue: Stream<_i7.PoiState>.empty()) as _i9.Stream<_i7.PoiState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  _i9.Future<void> getPointsOfInterest() =>
      (super.noSuchMethod(Invocation.method(#getPointsOfInterest, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  void emit(_i7.PoiState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void onChange(_i18.Change<_i7.PoiState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  _i9.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
}

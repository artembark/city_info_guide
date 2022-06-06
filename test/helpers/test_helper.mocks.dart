// Mocks generated by Mockito 5.2.0 from annotations
// in city_info_guide/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart'
    as _i9;
import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart'
    as _i4;
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart'
    as _i3;
import 'package:city_info_guide/data/failure.dart' as _i7;
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart'
    as _i8;
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart'
    as _i5;
import 'package:dartz/dartz.dart' as _i2;
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

/// A class which mocks [ScheduleRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockScheduleRepository extends _i1.Mock
    implements _i5.ScheduleRepository {
  MockScheduleRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Either<_i7.Failure, _i8.SchedulePointPointEntity>>
      getSchedulePointPoint({String? from, String? to, DateTime? date}) =>
          (super.noSuchMethod(
              Invocation.method(#getSchedulePointPoint, [],
                  {#from: from, #to: to, #date: date}),
              returnValue:
                  Future<_i2.Either<_i7.Failure, _i8.SchedulePointPointEntity>>.value(
                      _FakeEither_0<_i7.Failure, _i8.SchedulePointPointEntity>())) as _i6
              .Future<_i2.Either<_i7.Failure, _i8.SchedulePointPointEntity>>);
}

/// A class which mocks [ScheduleApiDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockScheduleApiDataSource extends _i1.Mock
    implements _i9.ScheduleApiDataSource {
  MockScheduleApiDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.SchedulePointPointDTO> getSchedulePointPoint(
          {String? from, String? to, DateTime? date}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getSchedulePointPoint, [], {#from: from, #to: to, #date: date}),
          returnValue: Future<_i3.SchedulePointPointDTO>.value(
              _FakeSchedulePointPointDTO_1())) as _i6
          .Future<_i3.SchedulePointPointDTO>);
  @override
  _i6.Future<_i4.NearestSettlementDTO> getNearestSettlement(
          {double? lat, double? lon}) =>
      (super.noSuchMethod(
          Invocation.method(#getNearestSettlement, [], {#lat: lat, #lon: lon}),
          returnValue: Future<_i4.NearestSettlementDTO>.value(
              _FakeNearestSettlementDTO_2())) as _i6
          .Future<_i4.NearestSettlementDTO>);
}

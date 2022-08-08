import 'dart:convert';
import 'dart:io';

import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/dto/nearest_settlement/nearest_settlement_dto.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //rederence https://github.com/lomsa-dev/http-mock-adapter/blob/main/example/main.dart
  late Dio dio;
  late DioAdapter dioAdapter;
  late DioError dioError;
  late ScheduleApiDataSource scheduleApiDataSource;
  const wontFindPath = "/wont-find";
  const testPath = "/test";

  const baseUrl = 'https://api.rasp.yandex.net';
  setUpAll(() async {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
    dioAdapter = DioAdapter(
      dio: dio,
      matcher: const FullHttpRequestMatcher(),
    );
    dio.httpClientAdapter = dioAdapter;
    scheduleApiDataSource = YandexRaspApiDataSourceImpl(dio: dio);

    dioError = DioError(
      error: {'message': 'Will not find anything..'},
      requestOptions: RequestOptions(path: wontFindPath),
      response: Response<dynamic>(
        statusCode: 404,
        requestOptions: RequestOptions(path: wontFindPath),
      ),
      type: DioErrorType.response,
    );
  });

  group('general dio testing', () {
    test('correctly not throws when matches', () async {
      dioAdapter.onGet(testPath, (request) {
        request.reply(200, 'ok');
      });
      expectLater(dio.get<void>(testPath), completes);
    });

    test('correctly throws when does not match', () async {
      dioAdapter.onGet(
          wontFindPath, (request) => request.throws(404, dioError));
      expectLater(dio.get<void>(wontFindPath), throwsA(isA<DioError>()));
    });
  });

  group('getSchedulePointPoint', () {
    test('getSchedulePointPointFailed', () async {
      const path = '/v3.0/search/';

      dioAdapter.onGet(path, (server) {
        server.reply(404, <String, dynamic>{});
      }, data: null, queryParameters: <String, String>{
        "apikey": "",
        "date": "2022-06-20",
        "from": "c2",
        "to": "c10893",
        "transfers": "true",
      }, headers: <String, dynamic>{});

      expect(
          () async => await scheduleApiDataSource.getSchedulePointPoint(
              from: 'c2', to: 'c10893', date: DateTime(2022, 06, 20)),
          throwsException);
    });
  });

  group('getNearestSettlement', () {
    const testNearestSettlementDTO = NearestSettlementDTO(
        distance: 1.239882235661964,
        code: "c10883",
        title: "Приозерск",
        popularTitle: "Приозерск",
        shortTitle: "Приозерск",
        lat: 61.035787,
        lng: 30.102868,
        type: "settlement");

    test('getNearestSettlementSuccess', () async {
      final jsonFromFile = jsonDecode(
          File('test/helpers/dummy_data/dummy_nearest_settlement_response.json')
              .readAsStringSync()) as Map<String, dynamic>;

      const path = '/v3.0/nearest_settlement/';

      dioAdapter.onGet(
        path,
        (server) {
          server.reply(
            200,
            jsonFromFile,
            delay: const Duration(seconds: 1),
          );
        },
        data: null,
        queryParameters: <String, dynamic>{
          'apikey': '',
          'lat': 61.035787,
          'lng': 30.102868,
          'distance': '50',
          'format': 'json',
          'lang': 'ru_RU',
        },
        headers: <String, dynamic>{},
      );

      final response = await scheduleApiDataSource.getNearestSettlement(
          lon: 30.102868, lat: 61.035787);
      expect(response, equals(testNearestSettlementDTO));
    });

    test('getNearestSettlementFailed', () async {
      const path = '/v3.0/nearest_settlement/';

      dioAdapter.onGet(path, (server) {
        server.reply(404, <String, dynamic>{});
      }, data: null, queryParameters: <String, dynamic>{
        'apikey': '',
        'lat': 61.035787,
        'lng': 30.102868,
        'distance': '50',
        'format': 'json',
        'lang': 'ru_RU',
      }, headers: <String, dynamic>{});

      expect(
          () async => await scheduleApiDataSource.getNearestSettlement(
              lon: 30.102868, lat: 61.035787),
          throwsException);
    });
  });
}

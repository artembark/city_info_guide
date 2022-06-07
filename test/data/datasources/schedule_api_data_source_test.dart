import 'dart:convert';

import 'package:city_info_guide/core/utils/secrets.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/dummy_data/dummy_schedule_point_point_dto.dart';
import '../../helpers/json_reader.dart';

main() {
  late ScheduleApiDataSource scheduleApiDataSource;
  late DioAdapter dioAdapter;

  setUpAll(() async {
    Dio dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    scheduleApiDataSource = YandexRaspApiDataSourceImpl(dio: dio);
  });

  // test('Dio loads apikey from file', () {
  //   final queryParameters = dioAdapter.dio.options.queryParameters;
  //   expect(queryParameters['apikey'], yandexRaspApiKey);
  // });

  group('getSchedulePointPoint', () {
    test('getSchedulePointPointSuccess', () async {
      final jsonFromFile = jsonDecode(
          readJson('helpers/dummy_data/dummy_response_without_transfers.json'));
      // final tSchedulePointPointDTO =
      //     SchedulePointPointDTO.fromJson(jsonFromFile);
      // final tSchedulePointPointDTO = tSchedulePointPontDTO;
      // print(tSchedulePointPointDTO);
      const path = '/v3.0/search/';

      // dioAdapter.onGet(path, (server) {
      //   server.reply(200, jsonFromFile);
      // }, data: null, queryParameters: {
      //   "apikey": "",
      //   "date": "",
      //   "from": "",
      //   "to": "",
      //   "transfers": "",
      // }, headers: {});

      dioAdapter.onGet(path, (server) {
        server.reply(200, jsonFromFile);
      });

      final response = await scheduleApiDataSource.getSchedulePointPoint(
          from: 'c2', to: 'c10893', date: DateTime.now());
      expect(response, equals(tSchedulePointPointDTO));
    });

    test('getSchedulePointPointFailed', () async {
      const path = '/v3.0/search/';

      dioAdapter.onGet(path, (server) {
        server.reply(404, {});
      });

      expect(
          () async => await scheduleApiDataSource.getSchedulePointPoint(
              from: 'c2', to: 'c10893', date: DateTime.now()),
          throwsException);
    });
  });
}

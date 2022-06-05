import 'dart:convert';

import 'package:city_info_guide/data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'helpers/json_reader.dart';

main() {
  late ScheduleApiDataSource scheduleApiDataSource;
  late DioAdapter dioAdapter;

  setUpAll(() async {
    Dio dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    //????
    //dio.httpClientAdapter = dioAdapter;
    //???
    scheduleApiDataSource = YandexRaspApiDataSourceImpl(dio: dio);
  });

  test('getSchedulePointPoint', () async {
    final jsonFromFile = jsonDecode(
        readJson('helpers/dummy_data/dummy_response_without_transfers.json'));
    final tSchedulePointPointDTO = SchedulePointPointDTO.fromJson(jsonFromFile);

    // final responseBody = ResponseBody.fromString(
    //   jsonFromFile,
    //   200,
    // );

    const path = '/v3.0/search/';
    dioAdapter.onGet(path, (server) {
      server.reply(200, jsonFromFile);
    });

    // when(dioAdapter.fetch(RequestOptions(path: path), any, any))
    //     .thenAnswer((_) async => responseBody);

    final response = await scheduleApiDataSource.getSchedulePointPoint(
        from: 'c2', to: 'c10893', date: DateTime.now());
    expect(tSchedulePointPointDTO == response, true);
  });
}

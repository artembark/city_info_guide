import 'dart:convert';

import 'package:city_info_guide/data/datasources/local/location/geolocator_data_source.dart';
import 'package:city_info_guide/data/datasources/local/poi/local_poi_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/suggests/yandex_suggests_api_data_source.dart';
import 'package:city_info_guide/data/repository/geolocation_repo_impl.dart';
import 'package:city_info_guide/data/repository/list_station_route_repo_impl.dart';
import 'package:city_info_guide/data/repository/poi_repo_impl.dart';
import 'package:city_info_guide/data/repository/schedule_point_point_repo_impl.dart';
import 'package:city_info_guide/data/repository/suggested_city_repo_impl.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:city_info_guide/domain/repositories/list_station_route_repository.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';
import 'package:city_info_guide/domain/repositories/poi_repository.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:city_info_guide/domain/usecases/get_list_stations_route.dart';
import 'package:city_info_guide/domain/usecases/get_nearest_settlement.dart';
import 'package:city_info_guide/domain/usecases/get_schedule_p_p.dart';
import 'package:city_info_guide/presentation/blocs/poi/poi_cubit.dart';
import 'package:city_info_guide/presentation/blocs/schedule_details/schedule_details_cubit.dart';
import 'package:city_info_guide/presentation/blocs/schedule_input/schedule_input_cubit.dart';
import 'package:city_info_guide/presentation/blocs/schedule_result/schedule_result_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'data/datasources/local/location/location_data_source.dart';
import 'data/datasources/local/poi/poi_data_sorce.dart';
import 'data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'data/datasources/remote/suggests/suggests_api_data_source.dart';
import 'data/repository/nearest_settlement_repo_impl.dart';

GetIt sl = GetIt.instance;
//TODO: move this and dio to external file
_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String response) {
  return compute(_parseAndDecode, response);
}

Future<void> initializeDependencies() async {
  // Features - main feature
  //Usecases
  sl.registerLazySingleton(
      () => GetSchedulePointPoint(scheduleRepository: sl()));
  sl.registerLazySingleton(() => GetNearestSettlement(
        nearestSettlementRepository: sl(),
        geolocationRepository: sl(),
      ));
  sl.registerLazySingleton(
      () => GetListStationsRoute(listStationRouteRepository: sl()));
  // Bloc
  sl.registerFactory(
    () => ScheduleInputCubit(
      getNearestSettlement: sl(),
    ),
  );
  sl.registerFactory(
    () => ScheduleResultCubit(
      getSchedulePointPoint: sl(),
    ),
  );
  sl.registerFactory(
    () => PoiCubit(
      placesOfInterestRepository: sl(),
    ),
  );
  sl.registerFactory(() => ScheduleDetailsCubit(getListStationsRoute: sl()));
  // Repository
  sl.registerLazySingleton<ScheduleRepository>(
    () => ScheduleRepositoryImpl(
      scheduleApiDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<SuggestedCityCompactRepository>(
      () => SuggestedCityCompactRepoImpl(
            suggestsApiDataSource: sl(),
          ));
  sl.registerLazySingleton<NearestSettlementRepository>(
      () => NearestSettlementRepoImpl(
            scheduleApiDataSource: sl(),
          ));
  sl.registerLazySingleton<ListStationRouteRepository>(
      () => ListStationRouteRepoImpl(
            scheduleApiDataSource: sl(),
          ));
  sl.registerLazySingleton<GeolocationRepository>(
      () => GeolocationRepositoryImpl(
            locationDataSource: sl(),
          ));
  sl.registerLazySingleton<PlacesOfInterestRepository>(
      () => PlacesOfInterestRepoImpl(
            poiDataSource: sl(),
          ));
  // Data sources
  sl.registerLazySingleton<ScheduleApiDataSource>(
    () => YandexRaspApiDataSourceImpl(
      dio: sl(),
    ),
  );
  sl.registerLazySingleton<SuggestsApiDataSource>(
    () => YandexSuggestsApiDataSource(),
  );
  sl.registerLazySingleton<LocationDataSource>(
    () => GeolocatorDataSource(),
  );
  sl.registerLazySingleton<PoiDataSource>(
    () => AssetJsonPoiDataSource(),
  );

  // External
  const baseUrl = 'https://api.rasp.yandex.net';
  sl.registerLazySingleton(
    () {
      final dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      )..interceptors.add(
          LogInterceptor(
            responseBody: false,
            requestBody: false,
            responseHeader: false,
            requestHeader: false,
            request: false,
          ),
        );
      (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
      return dio;
    },
  );
}

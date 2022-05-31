import 'package:city_info_guide/data/datasources/local/location/geolocator_data_source.dart';
import 'package:city_info_guide/data/datasources/local/location/local_poi_data_source.dart';
import 'package:city_info_guide/data/datasources/local/poi_data_sorce.dart';
import 'package:city_info_guide/data/datasources/remote/schedule/yandex_rasp_api_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/suggests/yandex_suggests_api_data_source.dart';
import 'package:city_info_guide/data/repository/geolocation_repo_impl.dart';
import 'package:city_info_guide/data/repository/poi_repo_impl.dart';
import 'package:city_info_guide/data/repository/schedule_point_point_repo_impl.dart';
import 'package:city_info_guide/data/repository/suggested_city_repo_impl.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';
import 'package:city_info_guide/domain/repositories/poi_repository.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/datasources/local/location_data_sorce.dart';
import 'data/datasources/remote/schedule/schedule_api_data_source.dart';
import 'data/datasources/remote/suggests/suggests_api_data_source.dart';
import 'data/repository/nearest_settlement_repo_impl.dart';
import 'domain/blocs/schedule/schedule_cubit.dart';

GetIt sl = GetIt.instance; //short for service locator
// final dio = Dio(
//   BaseOptions(
//     connectTimeout: 20000,
//     baseUrl: 'https://api.rasp.yandex.net',
//     headers: {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//     },
//     responseType: ResponseType.plain,
//   ),
// );

Future<void> initializeDependencies() async {
  // Features - main feature
  // Bloc
  sl.registerFactory(
    () => ScheduleCubit(
      schedulePointPointRepository: sl(),
      geolocationRepository: sl(),
      nearestSettlementRepository: sl(),
    ),
  );
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
    () => LocalPoiDataSource(),
  );

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
  sl.registerLazySingleton<GeolocationRepository>(
      () => GeolocationRepositoryImpl(
            locationDataSource: sl(),
          ));
  sl.registerLazySingleton<PlacesOfInterestRepository>(
      () => PlacesOfInterestRepoImpl(
            poiDataSource: sl(),
          ));

  // External
  const baseUrl = 'https://api.rasp.yandex.net';
  sl.registerLazySingleton(
    () => Dio(
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
      ),
  );
}

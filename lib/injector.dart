import 'package:city_info_guide/data/datasources/remote/schedule_point_point_data_source.dart';
import 'package:city_info_guide/data/datasources/remote/suggested_city_data_source.dart';
import 'package:city_info_guide/data/dto/suggested_city/suggested_city_compact_dto.dart';
import 'package:city_info_guide/data/repository/schedule_point_point_repo_impl.dart';
import 'package:city_info_guide/data/repository/suggested_city_repo_impl.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'domain/blocs/schedule/schedule_cubit.dart';

// можно было бы просто RepositoryProvider и BlocProvider обойтись
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
    ),
  );
  // Data sources
  sl.registerLazySingleton<SchedulePointPointRemoteDataSource>(
    () => SchedulePointPointRemoteDataSourceImpl(
      dio: sl(),
    ),
  );
  sl.registerLazySingleton<SuggestedCityCompactDataSource>(
    () => SuggestedCityCompactDataSourceImpl(),
  );

  // Repository
  sl.registerLazySingleton<SchedulePointPointRepository>(
    () => SchedulePointPointRepositoryImpl(
      schedulePointPointRemoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<SuggestedCityCompactRepository>(
      () => SuggestedCityCompactRepoImpl(suggestedCityDataSource: sl()));

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
          responseBody: true,
          requestBody: true,
          responseHeader: true,
          requestHeader: true,
          request: true,
        ),
      ),
  );
}

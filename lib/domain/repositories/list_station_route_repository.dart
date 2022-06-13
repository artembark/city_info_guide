import 'package:city_info_guide/domain/entities/list_stations_route/list_stations_route_entity.dart';
import 'package:dartz/dartz.dart';

import '../../data/failure.dart';
import '../entities/schedule_p_p/schedule_point_point_entity.dart';

/// Репозиторий для получения подробного маршрута по идетификатору
abstract class ListStationRouteRepository {
  //получение объекта с маршрутом
  Future<Either<Failure, ListStationsRouteEntity>> getListStationsRoute({
    required String uid,
  });
}

import 'package:city_info_guide/data/failure.dart';
import 'package:city_info_guide/domain/entities/list_stations_route/list_stations_route_entity.dart';
import 'package:city_info_guide/domain/repositories/list_station_route_repository.dart';
import 'package:city_info_guide/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetListStationsRoute
    extends UseCase<ListStationsRouteEntity, ListStationsRouteParams> {
  final ListStationRouteRepository listStationRouteRepository;

  GetListStationsRoute({required this.listStationRouteRepository});

  @override
  Future<Either<Failure, ListStationsRouteEntity>> call(
      ListStationsRouteParams params) async {
    //TODO:remove this demonstration only delay
    return Future.delayed(const Duration(seconds: 1)).then((value) async =>
        await listStationRouteRepository.getListStationsRoute(uid: params.uid));
  }
}

class ListStationsRouteParams extends Equatable {
  final String uid;

  const ListStationsRouteParams({required this.uid});

  @override
  List<Object?> get props => [uid];
}

import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/usecases/get_list_stations_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/list_stations_route/list_stations_route_entity.dart';

part 'schedule_details_state.dart';

part 'schedule_details_cubit.freezed.dart';

class ScheduleDetailsCubit extends Cubit<ScheduleDetailsState> {
  ScheduleDetailsCubit({required this.getListStationsRoute})
      : super(const ScheduleDetailsState.initial());

  final GetListStationsRoute getListStationsRoute;

  void getScheduleDetails(String uid) async {
    emit(const ScheduleDetailsState.resultsLoading());
    final listStationsRoute = await getListStationsRoute.call(
      ListStationsRouteParams(uid: uid),
    );
    listStationsRoute.fold(
      (failure) => emit(ScheduleDetailsState.resultsFailure(failure.message)),
      (data) => emit(
        ScheduleDetailsState.resultsLoaded(data),
      ),
    );
  }
}

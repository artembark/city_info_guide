import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import '../../../domain/usecases/get_schedule_p_p.dart';

part 'schedule_result_state.dart';

part 'schedule_result_cubit.freezed.dart';

class ScheduleResultCubit extends Cubit<ScheduleResultState> {
  ScheduleResultCubit({required this.getSchedulePointPoint})
      : super(const ScheduleResultState.resultsLoading());

  final GetSchedulePointPoint getSchedulePointPoint;

  getSchedule(ScheduleRequest scheduleRequest) async {
    emit(const ScheduleResultState.resultsLoading());
    final schedulePointPoint = await getSchedulePointPoint.call(
        SchedulePointPointParams(
            from: scheduleRequest.from ?? '',
            to: scheduleRequest.to ?? '',
            dateTime: scheduleRequest.date ?? DateTime.now()));
    schedulePointPoint.fold(
      (failure) => emit(
        ScheduleResultState.resultsFailure(failure.message),
      ),
      (data) {
        if (data.pagination?.total == 0) {
          emit(const ScheduleResultState.resultsEmpty());
        } else {
          emit(ScheduleResultState.resultsLoaded(data));
        }
      },
    );

    // state.maybeMap(
    //     citiesSubmitting: (state) async {
    //       emit(const ScheduleState.resultsLoading());
    //       try {
    //         final schedulePointPoint =
    //             await schedulePointPointRepository.getSchedulePointPoint(
    //                 from: state.scheduleRequest.from ?? '',
    //                 to: state.scheduleRequest.to ?? '',
    //                 date: state.scheduleRequest.date ?? DateTime.now());
    //         if (schedulePointPoint.pagination?.total == 0) {
    //           emit(const ScheduleState.resultsEmpty());
    //         } else {
    //           emit(ScheduleState.resultsLoaded(schedulePointPoint));
    //         }
    //       } on Exception catch (exception) {
    //         emit(ScheduleState.resultsFailure(exception));
    //       }
    //     },
    //     orElse: () {});
  }
}

import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/domain/usecases/get_nearest_settlement.dart';
import 'package:city_info_guide/domain/usecases/get_schedule_p_p.dart';
import 'package:city_info_guide/domain/usecases/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/schedule_point_point_entity.dart';

part 'schedule_state.dart';
part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit({
    required this.getSchedulePointPoint,
    required this.getNearestSettlement,
  }) : super(
          ScheduleState.citiesSubmitting(scheduleRequest: ScheduleRequest()),
        );
  final GetSchedulePointPoint getSchedulePointPoint;
  final GetNearestSettlement getNearestSettlement;

  init(ScheduleRequest scheduleRequest) {
    emit(ScheduleState.citiesSubmitting(scheduleRequest: scheduleRequest));
  }

  fillWithFavourite() {
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest: ScheduleRequest(
            from: 'c10883',
            fromTitle: 'Приозерск',
            to: 'c2',
            toTitle: 'Санкт-Петербург',
            date: DateTime(2022, 06, 28))));
  }

  swapFromTo() {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(
      ScheduleState.citiesSubmitting(
        scheduleRequest: ScheduleRequest(
            from: scheduleRequest.to,
            fromTitle: scheduleRequest.toTitle,
            to: scheduleRequest.from,
            toTitle: scheduleRequest.fromTitle,
            date: scheduleRequest.date),
      ),
    );
  }

  setFromCity(String fromCode, String fromTitle) {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest:
            scheduleRequest.copyWith(from: fromCode, fromTitle: fromTitle)));
    // state.maybeMap(
    //     citiesSubmitting: (state) {
    //       emit(state.copyWith.scheduleRequest(from: from));
    //     },
    //     orElse: () {});
  }

  setToCity(String toCode, String toTitle) {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest:
            scheduleRequest.copyWith(to: toCode, toTitle: toTitle)));
    // state.maybeMap(
    //     citiesSubmitting: (state) {
    //       emit(state.copyWith.scheduleRequest(to: to));
    //     },
    //     orElse: () {});
  }

  setDate(DateTime dateTime) {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest: scheduleRequest.copyWith(date: dateTime)));
    // state.maybeMap(
    //     citiesSubmitting: (state) {
    //       emit(state.copyWith.scheduleRequest(date: dateTime));
    //     },
    //     orElse: () {});
  }

  getPosition() async {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest: scheduleRequest, requestingLocation: true));

    final nearestSettlement = await getNearestSettlement.call(NoParams());

    nearestSettlement.fold(
        (l) => emit(const ScheduleState.resultsFailure('Error')),
        (nearestSettlement) => emit(
              ScheduleState.citiesSubmitting(
                scheduleRequest: scheduleRequest.copyWith(
                  from: nearestSettlement.code,
                  fromTitle: nearestSettlement.title,
                ),
                requestingLocation: false,
              ),
            ));

    // state.maybeMap(
    //     citiesSubmitting: (state) {
    //       emit(state.copyWith.scheduleRequest(
    //           from: nearestSettlement.code,
    //           fromTitle: nearestSettlement.title));
    //     },
    //     orElse: () {});
  }

  getSchedule() async {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    if (scheduleRequest.from == scheduleRequest.to) {
      return;
    }
    emit(const ScheduleState.resultsLoading());
    final schedulePointPoint = await getSchedulePointPoint.call(
        SchedulePointPointParams(
            from: scheduleRequest.from ?? '',
            to: scheduleRequest.to ?? '',
            dateTime: scheduleRequest.date ?? DateTime.now()));
    schedulePointPoint.fold(
      (failure) => emit(
        ScheduleState.resultsFailure(failure.message),
      ),
      (data) {
        if (data.pagination?.total == 0) {
          emit(const ScheduleState.resultsEmpty());
        } else {
          emit(ScheduleState.toDetailsPage(data));
          //emit(ScheduleState.resultsLoaded(data));
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

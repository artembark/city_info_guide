import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/domain/usecases/get_nearest_settlement.dart';
import 'package:city_info_guide/domain/usecases/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_input_state.dart';
part 'schedule_input_cubit.freezed.dart';

class ScheduleInputCubit extends Cubit<ScheduleInputState> {
  ScheduleInputCubit({
    required this.getNearestSettlement,
  }) : super(
          ScheduleInputState.citiesSubmitting(
              scheduleRequest: ScheduleRequest()),
        );
  final GetNearestSettlement getNearestSettlement;

  init(ScheduleRequest scheduleRequest) {
    emit(ScheduleInputState.citiesSubmitting(scheduleRequest: scheduleRequest));
  }

  fillWithFavourite() {
    emit(ScheduleInputState.citiesSubmitting(
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
      ScheduleInputState.citiesSubmitting(
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
    emit(ScheduleInputState.citiesSubmitting(
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
    emit(ScheduleInputState.citiesSubmitting(
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
    emit(ScheduleInputState.citiesSubmitting(
        scheduleRequest: scheduleRequest.copyWith(date: dateTime)));
    // state.maybeMap(
    //     citiesSubmitting: (state) {
    //       emit(state.copyWith.scheduleRequest(date: dateTime));
    //     },
    //     orElse: () {});
  }

  getPosition() async {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleInputState.citiesSubmitting(
        scheduleRequest: scheduleRequest, requestingLocation: true));

    final nearestSettlement = await getNearestSettlement.call(NoParams());

    nearestSettlement.fold(
        (l) => emit(const ScheduleInputState.geolocationFailure('Error')),
        (nearestSettlement) => emit(
              ScheduleInputState.citiesSubmitting(
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

  checkInputFields() {
    state.whenOrNull(
        citiesSubmitting: (scheduleRequest, locationUpdating, message) {
      if (scheduleRequest.from == null && scheduleRequest.to == null) {
        emit(ScheduleInputState.citiesSubmitting(
            scheduleRequest: scheduleRequest,
            errorMessage: 'Необходимо ввести пункты отправления и прибытия'));
      } else if (scheduleRequest.from == scheduleRequest.to) {
        emit(ScheduleInputState.citiesSubmitting(
            scheduleRequest: scheduleRequest,
            errorMessage: 'Необходимо ввести разные пункты'));
      } else if (scheduleRequest.from == null) {
        emit(ScheduleInputState.citiesSubmitting(
            scheduleRequest: scheduleRequest,
            errorMessage: 'Необходимо ввести пункт отправления'));
      } else if (scheduleRequest.to == null) {
        emit(ScheduleInputState.citiesSubmitting(
            scheduleRequest: scheduleRequest,
            errorMessage: 'Необходимо ввести пункт прибытия'));
      } else {
        emit(ScheduleInputState.toDetailsPage(scheduleRequest));
      }
    });
  }

  toDetailsPage(ScheduleRequest scheduleRequest) {
    emit(ScheduleInputState.toDetailsPage(scheduleRequest));
  }
}

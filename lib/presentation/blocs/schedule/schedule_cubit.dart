import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/domain/repositories/geolocation_repository.dart';
import 'package:city_info_guide/domain/repositories/nearest_settlement_repository.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:city_info_guide/domain/usecases/get_schedule_p_p.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_p_p/schedule_point_point_entity.dart';

part 'schedule_state.dart';

part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit({
    required this.nearestSettlementRepository,
    required this.geolocationRepository,
    required this.schedulePointPointRepository,
    required this.getSchedulePointPoint,
  }) : super(
          ScheduleState.citiesSubmitting(scheduleRequest: ScheduleRequest()),
        );
  final ScheduleRepository schedulePointPointRepository;
  final GeolocationRepository geolocationRepository;
  final NearestSettlementRepository nearestSettlementRepository;
  final GetSchedulePointPoint getSchedulePointPoint;

  setFrom(String from) {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest: scheduleRequest.copyWith(from: from)));
    // state.maybeMap(
    //     citiesSubmitting: (state) {
    //       emit(state.copyWith.scheduleRequest(from: from));
    //     },
    //     orElse: () {});
  }

  setTo(String to) {
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest: scheduleRequest.copyWith(to: to)));
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
    //TODO: try on Exception
    final scheduleRequest = (state as _CitiesSubmitting).scheduleRequest;
    emit(ScheduleState.citiesSubmitting(
        scheduleRequest: scheduleRequest, requestingLocation: true));

    final position = await geolocationRepository.getCurrentPosition();
    if (position == null) return;

    final nearestSettlement = await nearestSettlementRepository
        .getNearestSettlement(lat: position.latitude, lon: position.longitude);

    emit(
      ScheduleState.citiesSubmitting(
        scheduleRequest: scheduleRequest.copyWith(
          from: nearestSettlement.code,
          fromTitle: nearestSettlement.title,
        ),
        requestingLocation: false,
      ),
    );
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
    emit(const ScheduleState.resultsLoading());
    final schedulePointPoint = await getSchedulePointPoint.execute(
        from: scheduleRequest.from ?? '',
        to: scheduleRequest.to ?? '',
        date: scheduleRequest.date ?? DateTime.now());
    schedulePointPoint
        .fold((failure) => emit(ScheduleState.resultsFailure(failure.message)),
            (data) {
      if (data.pagination?.total == 0) {
        emit(const ScheduleState.resultsEmpty());
      } else {
        emit(ScheduleState.resultsLoaded(data));
      }
    });

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

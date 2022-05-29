import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'schedule_state.dart';

part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit({
    required this.schedulePointPointRepository,
  }) : super(
          ScheduleState.citiesSubmitting(ScheduleRequest()),
        );
  final SchedulePointPointRepository schedulePointPointRepository;

  updateFromState(String from) {
    state.maybeMap(
        citiesSubmitting: (state) {
          emit(state.copyWith.scheduleRequest(from: from));
        },
        orElse: () {});
  }

  updateToState(String to) {
    state.maybeMap(
        citiesSubmitting: (state) {
          emit(state.copyWith.scheduleRequest(to: to));
        },
        orElse: () {});
  }

  updateDate(DateTime dateTime) {
    state.maybeMap(
        citiesSubmitting: (state) {
          emit(state.copyWith.scheduleRequest(date: dateTime));
        },
        orElse: () {});
  }

  getSchedule() {
    state.maybeMap(
        citiesSubmitting: (state) async {
          emit(ScheduleState.resultsLoading());
          final schedulePointPoint =
              await schedulePointPointRepository.getSchedulePointPoint(
                  from: state.scheduleRequest.from ?? '',
                  to: state.scheduleRequest.to ?? '',
                  date: state.scheduleRequest.date ?? DateTime(2022, 6, 2));
          emit(ScheduleState.resultsLoaded(schedulePointPoint));
        },
        orElse: () {});
    final from = emit(const ScheduleState.resultsLoading());
    state.maybeMap(
        citiesSubmitting: (state) async {
          final schedulePointPoint =
              await schedulePointPointRepository.getSchedulePointPoint(
                  from: state.scheduleRequest.from ?? '',
                  to: state.scheduleRequest.to ?? '',
                  date: state.scheduleRequest.date ?? DateTime(2022, 6, 2));
          emit(ScheduleState.resultsLoaded(schedulePointPoint));
        },
        orElse: () {});
    state.maybeMap(
        resultsLoaded: (state) {
          if (state.schedulePointPoint.pagination?.total == 0) {
            print('Нет маршрута');
          } else {
            print(state.schedulePointPoint.segments?.first.from?.title);
            print(state.schedulePointPoint.segments?.first.to?.title);
          }
        },
        orElse: () {});
  }

  printText() async {
    final schedule = await schedulePointPointRepository.getSchedulePointPoint(
        from: 'c2', to: 'c85072', date: DateTime(2022, 6, 2));
    print('working');
    print(schedule.segments?.first.from?.title);
  }
}

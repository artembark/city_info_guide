import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_state.dart';

part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit({
    required this.schedulePointPointRepository,
  }) : super(
          ScheduleState(ScheduleRequest()),
        );
  final SchedulePointPointRepository schedulePointPointRepository;

  // updateFormState(ScheduleRequest scheduleRequest) {
  //   emit(state.copyWith(registrationModel: registrationModel));
  // }
  init() {
    print('bloc info ${state.scheduleRequest.toString()}');
  }

  updateFromState(String from) {
    emit(state.copyWith.scheduleRequest(from: from));
    print('bloc updated ${state.scheduleRequest.from}');
    print(state.scheduleRequest.toString());
    //state.copyWith(scheduleRequest: )
  }

  updateToState(String to) {
    emit(state.copyWith.scheduleRequest(to: to));
    print('bloc updated ${state.scheduleRequest.to}');
    print(state.scheduleRequest.toString());
    //state.copyWith(scheduleRequest: )
  }

  updateDate(DateTime dateTime) {
    emit(state.copyWith.scheduleRequest(date: dateTime));
    print(state.scheduleRequest.toString());
  }

  getSchedule() async {
    final schedule = await schedulePointPointRepository.getSchedulePointPoint(
        from: state.scheduleRequest.from ?? '',
        to: state.scheduleRequest.to ?? '',
        date: state.scheduleRequest.date ?? DateTime(2022, 6, 2));
    if (schedule.pagination?.total == 0) {
      print('Нет маршрута');
    } else {
      print(schedule.segments?.first.from?.title);
      print(schedule.segments?.first.to?.title);
    }
  }

  printText() async {
    final schedule = await schedulePointPointRepository.getSchedulePointPoint(
        from: 'c2', to: 'c85072', date: DateTime(2022, 6, 2));
    print('working');
    print(schedule.segments?.first.from?.title);
  }
}

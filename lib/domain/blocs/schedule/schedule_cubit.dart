import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'schedule_state.dart';

part 'schedule_cubit.freezed.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit({
    required this.schedulePointPointRepository,
  }) : super(
          ScheduleState.initial(''),
        );
  final SchedulePointPointRepository schedulePointPointRepository;

  printText() async {
    final schedule = await schedulePointPointRepository.getSchedulePointPoint(
        from: 'c2', to: 'c85072', date: DateTime(2022, 6, 2));
    print('working');
    print(schedule.segments?.first.from?.title);
  }
}

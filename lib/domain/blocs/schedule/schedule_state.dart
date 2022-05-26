part of 'schedule_cubit.dart';

@freezed
abstract class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial(String from) = _Initial;
  const factory ScheduleState.loading() = _Loading;
}

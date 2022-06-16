part of 'schedule_result_cubit.dart';

@freezed
class ScheduleResultState with _$ScheduleResultState {
  const factory ScheduleResultState.resultsLoading() = _ResultsLoading;

  const factory ScheduleResultState.resultsLoaded(
      SchedulePointPointEntity schedulePointPoint) = _ResultsLoaded;

  const factory ScheduleResultState.resultsEmpty() = _ResultsEmpty;

  const factory ScheduleResultState.resultsFailure(String message) =
      _ResultsFailure;
}

part of 'schedule_cubit.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.citiesSubmitting(
      ScheduleRequest scheduleRequest) = _CitiesSubmitting;
  const factory ScheduleState.resultsLoading() = _ResultsLoading;
  const factory ScheduleState.resultsLoaded(
      SchedulePointPoint schedulePointPoint) = _ResultsLoaded;
  const factory ScheduleState.resultsEmpty() = _ResultsEmpty;
  const factory ScheduleState.resultsFailure(Exception exception) =
      _ResultsFailure;
}

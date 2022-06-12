part of 'schedule_cubit.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.citiesSubmitting(
      {required ScheduleRequest scheduleRequest,
      @Default(false) bool requestingLocation}) = _CitiesSubmitting;

  const factory ScheduleState.resultsLoading() = _ResultsLoading;

  const factory ScheduleState.resultsLoaded(
      SchedulePointPointEntity schedulePointPoint) = _ResultsLoaded;

  const factory ScheduleState.resultsEmpty() = _ResultsEmpty;

  const factory ScheduleState.resultsFailure(String message) = _ResultsFailure;
  const factory ScheduleState.toDetailsPage(
      SchedulePointPointEntity schedulePointPoint) = _ToDetailsPage;
}

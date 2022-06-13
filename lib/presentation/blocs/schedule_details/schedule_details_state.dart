part of 'schedule_details_cubit.dart';

@freezed
class ScheduleDetailsState with _$ScheduleDetailsState {
  const factory ScheduleDetailsState.initial() = _ResultsInitial;

  const factory ScheduleDetailsState.resultsLoading() = _ResultsLoading;

  const factory ScheduleDetailsState.resultsLoaded(
      ListStationsRouteEntity listStationsEntity) = _ResultsLoaded;

  const factory ScheduleDetailsState.resultsEmpty() = _ResultsEmpty;

  const factory ScheduleDetailsState.resultsFailure(String message) =
      _ResultsFailure;
}

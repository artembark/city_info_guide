part of 'schedule_input_cubit.dart';

@freezed
class ScheduleInputState with _$ScheduleInputState {
  const factory ScheduleInputState.citiesSubmitting({
    required ScheduleRequest scheduleRequest,
    @Default(false) bool requestingLocation,
    @Default(null) String? errorMessage,
  }) = _CitiesSubmitting;

  const factory ScheduleInputState.geolocationFailure(String message) =
      _GeolocationFailure;

  const factory ScheduleInputState.toDetailsPage(
      ScheduleRequest scheduleRequest) = _ToDetailsPage;
}

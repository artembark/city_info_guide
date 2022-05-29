part of 'schedule_cubit.dart';

// @freezed
// class ScheduleState with _$ScheduleState {
//   const factory ScheduleState({
//     ScheduleRequest? scheduleRequest,
//     SchedulePointPoint? schedulePointPoint,
//   }) = _ScheduleState;
//
//   // const ScheduleState._();
//   // const factory ScheduleState.initial() = Initial;
//   factory ScheduleState.citiesSubmitting() => ScheduleState(
//         scheduleRequest: ScheduleRequest(),
//       );
//
//   factory ScheduleState.resultsLoading() => ScheduleState();
//
//   factory ScheduleState.resultsLoaded() => ScheduleState();
// }

@freezed
class ScheduleState with _$ScheduleState {
  //const factory ScheduleState(ScheduleRequest scheduleRequest) = _ScheduleState;
  // const ScheduleState._();
  // const factory ScheduleState.initial() = Initial;
  const factory ScheduleState.citiesSubmitting(
      ScheduleRequest scheduleRequest) = CitiesSubmitting;
  const factory ScheduleState.resultsLoading() = ResultsLoading;
  const factory ScheduleState.resultsLoaded(
      SchedulePointPoint schedulePointPoint) = ResultsLoaded;
}

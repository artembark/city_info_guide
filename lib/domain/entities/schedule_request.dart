import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_request.freezed.dart';

@freezed
class ScheduleRequest with _$ScheduleRequest {
  factory ScheduleRequest({
    String? from,
    String? fromTitle,
    String? to,
    String? toTitle,
    DateTime? date,
  }) = _ScheduleRequest;
}

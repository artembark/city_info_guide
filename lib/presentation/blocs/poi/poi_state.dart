part of 'poi_cubit.dart';

@freezed
class PoiState with _$PoiState {
  const factory PoiState.initial() = _Initial;

  const factory PoiState.loading() = _Loading;

  const factory PoiState.success(List<PlaceOfInterest> placesOfInterest) =
      _Success;

  const factory PoiState.empty() = _Empty;

  const factory PoiState.failure(Exception exception) = _Failure;
}

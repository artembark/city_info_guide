import 'package:bloc/bloc.dart';
import 'package:city_info_guide/domain/entities/poi.dart';
import 'package:city_info_guide/domain/repositories/poi_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poi_state.dart';
part 'poi_cubit.freezed.dart';

class PoiCubit extends Cubit<PoiState> {
  PoiCubit({required this.placesOfInterestRepository})
      : super(const PoiState.initial());

  final PlacesOfInterestRepository placesOfInterestRepository;

  Future<void> getPointsOfInterest() async {
    emit(const PoiState.loading());
    try {
      List<PlaceOfInterest> poiList =
          await placesOfInterestRepository.getPlacesOfInterest();
      if (poiList.isEmpty) {
        emit(const PoiState.empty());
      } else {
        emit(PoiState.success(poiList));
      }
    } on Exception catch (exception) {
      emit(PoiState.failure(exception));
    }
  }
}

import 'package:bloc_test/bloc_test.dart';
import 'package:city_info_guide/domain/entities/poi.dart';
import 'package:city_info_guide/presentation/blocs/poi/poi_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockPlacesOfInterestRepository mockPlacesOfInterestRepository;
  late PoiCubit poiCubit;

  final List<PlaceOfInterest> tPoiList = [
    PlaceOfInterest(
        id: 1,
        title: 'Музей-Крепость Корела',
        description: "Музей-Крепость Корела",
        category: 'poi',
        image:
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f8/ab/46/img-20180512-171036537.jpg?w=500&h=400&s=1',
        lon: 30.122480,
        lat: 61.029946,
        oid: 1234080827)
  ];

  setUp(() {
    mockPlacesOfInterestRepository = MockPlacesOfInterestRepository();
    poiCubit =
        PoiCubit(placesOfInterestRepository: mockPlacesOfInterestRepository);
  });

  test(
    'initial state should be loading',
    () => expect(
      poiCubit.state,
      const PoiState.initial(),
    ),
  );

  blocTest<PoiCubit, PoiState>(
      'should emit [loading, has data] when data us gotten successfully',
      build: () {
        when(mockPlacesOfInterestRepository.getPlacesOfInterest()).thenAnswer(
            (_) => Future.delayed(const Duration(seconds: 1))
                .then((value) => tPoiList));
        return poiCubit;
      },
      act: (cubit) => cubit.getPointsOfInterest(),
      wait: const Duration(milliseconds: 100),
      expect: () => [
            const PoiState.loading(),
            PoiState.success(tPoiList),
          ],
      verify: (cubit) =>
          verify(mockPlacesOfInterestRepository.getPlacesOfInterest()));
}

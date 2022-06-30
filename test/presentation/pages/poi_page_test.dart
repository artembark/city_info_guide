import 'package:bloc_test/bloc_test.dart';
import 'package:city_info_guide/domain/entities/poi.dart';
import 'package:city_info_guide/presentation/blocs/poi/poi_cubit.dart';
import 'package:city_info_guide/presentation/views/poi_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockPoiCubit extends MockCubit<PoiState> implements PoiCubit {}

class FakePoiState extends Fake implements PoiState {}

void main() {
  late MockPoiCubit mockPoiCubit;

  setUp(() => mockPoiCubit = MockPoiCubit());

  setUpAll(() {
    registerFallbackValue(FakePoiState());

    final di = GetIt.instance;
    di.registerFactory(() => mockPoiCubit);
  });

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

  Widget _makeTestableWidget(Widget body) {
    return BlocProvider<PoiCubit>.value(
      value: mockPoiCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets(
    'should show progress indicator when state is loading',
    (WidgetTester tester) async {
      when(() => mockPoiCubit.state).thenReturn(const PoiState.loading());
      await tester.pumpWidget(_makeTestableWidget(const PoiView()));
      expect(find.byType(CircularProgressIndicator), equals(findsOneWidget));
    },
  );

  testWidgets(
    'should show widget contain weather data when state is has data',
    (WidgetTester tester) async {
      when(() => mockPoiCubit.state).thenReturn(PoiState.success(tPoiList));

      await tester.pumpWidget(_makeTestableWidget(const PoiView()));
      expect(find.byType(Image), equals(findsOneWidget));
    },
  );

  testWidgets(
    'should show widget contain weather data when state is has data',
    (WidgetTester tester) async {
      when(() => mockPoiCubit.state).thenReturn(const PoiState.empty());

      await tester.pumpWidget(_makeTestableWidget(const PoiView()));
      expect(find.byType(Text), equals(findsOneWidget));
    },
  );
}

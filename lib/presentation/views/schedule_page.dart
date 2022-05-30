import 'package:city_info_guide/domain/blocs/schedule/schedule_cubit.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/suggested_city/suggested_city_compact.dart';
import '/injector.dart' as di;

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final TextEditingController _fromTypeAheadController =
      TextEditingController();
  final TextEditingController _toTypeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Расписание'),
      ),
      body: BlocProvider(
        create: (context) => di.sl<ScheduleCubit>(),
        child: BlocBuilder<ScheduleCubit, ScheduleState>(
          builder: (context, state) {
            return state.map(
                citiesSubmitting: (citiesSubmittingState) {
                  return ListView(children: [
                    Image.asset('assets/images/station.png'),
                    Text('Откуда'),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TypeAheadField(
                              minCharsForSuggestions: 1,
                              textFieldConfiguration: TextFieldConfiguration(
                                  controller: _fromTypeAheadController,
                                  autofocus: false,
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(fontStyle: FontStyle.italic),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder())),
                              suggestionsCallback: (userInput) async {
                                final res = await di
                                    .sl<SuggestedCityCompactRepository>()
                                    .getSuggestedCityList(userInput: userInput);
                                return res;
                              },
                              itemBuilder: (context, suggestion) {
                                final sug = suggestion as SuggestedCityCompact;
                                return ListTile(
                                  leading: const Icon(Icons.location_city),
                                  title: Text(sug.fullTitle!),
                                  subtitle: Text(sug.pointKey!),
                                );
                              },
                              onSuggestionSelected: (suggestion) {
                                final sug = suggestion as SuggestedCityCompact;
                                _fromTypeAheadController.text = sug.title!;
                                context
                                    .read<ScheduleCubit>()
                                    .updateFromField(sug.pointKey!);
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.gps_fixed),
                            onPressed: () async {
                              Position position = await _determinePosition();
                              print(position.latitude);
                            },
                          )
                        ],
                      ),
                    ),
                    Text('Куда'),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TypeAheadField(
                        minCharsForSuggestions: 1,
                        textFieldConfiguration: TextFieldConfiguration(
                            controller: _toTypeAheadController,
                            autofocus: false,
                            style: DefaultTextStyle.of(context)
                                .style
                                .copyWith(fontStyle: FontStyle.italic),
                            decoration:
                                InputDecoration(border: OutlineInputBorder())),
                        suggestionsCallback: (userInput) async {
                          final res = await di
                              .sl<SuggestedCityCompactRepository>()
                              .getSuggestedCityList(userInput: userInput);
                          return res;
                        },
                        itemBuilder: (context, suggestion) {
                          final sug = suggestion as SuggestedCityCompact;
                          return ListTile(
                            leading: const Icon(Icons.shopping_cart),
                            title: Text(sug.fullTitle!),
                            subtitle: Text(sug.pointKey!),
                          );
                        },
                        onSuggestionSelected: (suggestion) {
                          final sug = suggestion as SuggestedCityCompact;
                          _toTypeAheadController.text = sug.title!;
                          context
                              .read<ScheduleCubit>()
                              .updateToField(sug.pointKey!);
                        },
                      ),
                    ),
                    if (citiesSubmittingState.scheduleRequest.date != null)
                      Text(
                        DateFormat('yyyy-MM-dd').format(
                            citiesSubmittingState.scheduleRequest.date!),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ElevatedButton(
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022, 5, 1),
                              lastDate: DateTime(2022, 5, 31));
                          if (newDate == null) return;
                          context.read<ScheduleCubit>().updateDate(newDate);
                        },
                        child: Text('Выбрать дату')),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ScheduleCubit>().getSchedule();
                      },
                      child: Text('Получить расписание'),
                    )
                  ]);
                },
                resultsLoading: (resultsLoadingState) =>
                    const Center(child: CircularProgressIndicator()),
                resultsLoaded: (resultsLoadedState) {
                  final segments =
                      resultsLoadedState.schedulePointPoint.segments;
                  return ListView.separated(
                    itemCount: segments!.length,
                    itemBuilder: (context, index) {
                      final segment = segments[index];
                      IconData icon = Icons.control_point;
                      if (segment.from?.transportType == 'bus') {
                        icon = Icons.bus_alert as IconData;
                      }
                      if (segment.from?.transportType == 'train') {
                        icon = Icons.train as IconData;
                      }
                      int dur = 0;
                      final duration = segment.duration;
                      if (duration != null) {
                        dur = duration.toInt();
                      }
                      return Card(
                        color: Colors.grey[200],
                        child: ListTile(
                          leading: Icon(icon),
                          title: Column(
                            children: [
                              Text('Откуда'),
                              Text(segment.from?.title ?? ''),
                              Text('Время отъезда ${segment.departure}'),
                              Text(
                                  'Тип транспорта ${segment.from?.transportType}'),
                              Text('Куда'),
                              Text(segments[index].to?.title ?? ''),
                              Text('Время прибытия ${segment.arrival}'),
                              Text(
                                  'Тип транспорта ${segment.to?.transportType}'),
                              Text(
                                  'Время в пути ${printDuration(Duration(seconds: dur))}'),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 10.0,
                      );
                    },
                  );
                },
                resultsEmpty: (resultsEmptyState) {
                  return const Center(child: Text('Нет маршрута'));
                },
                resultsFailure: (resultsFailureState) {
                  return const Center(child: Text('Ошибка'));
                });
          },
        ),
      ),
    );
  }
}

String printDuration(Duration duration) {
  //String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigits(int n) => n.toString();
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  // String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  //return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  return "${twoDigits(duration.inHours)} ч. $twoDigitMinutes м.";
}

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

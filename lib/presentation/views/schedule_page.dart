import 'package:city_info_guide/domain/blocs/schedule/schedule_cubit.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
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
                      child: TypeAheadField(
                        minCharsForSuggestions: 1,
                        textFieldConfiguration: TextFieldConfiguration(
                            controller: _fromTypeAheadController,
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
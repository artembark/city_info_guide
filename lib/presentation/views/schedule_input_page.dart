import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:city_info_guide/presentation/blocs/schedule/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/suggested_city/suggested_city_compact.dart';
import '../../gen/assets.gen.dart';
import '/injector.dart';

class ScheduleInputPage extends StatefulWidget {
  const ScheduleInputPage({Key? key}) : super(key: key);

  @override
  State<ScheduleInputPage> createState() => _ScheduleInputPageState();
}

class _ScheduleInputPageState extends State<ScheduleInputPage> {
  final TextEditingController _fromTypeAheadController =
      TextEditingController();
  final TextEditingController _toTypeAheadController = TextEditingController();

  @override
  void dispose() {
    _fromTypeAheadController.dispose();
    _toTypeAheadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Расписание'),
      ),
      body: BlocProvider(
        create: (_) => sl<ScheduleCubit>(),
        child: BlocConsumer<ScheduleCubit, ScheduleState>(
          listenWhen: (previous, current) {
            final previousFrom = previous.mapOrNull(
              citiesSubmitting: (citiesSubmittingState) {
                return citiesSubmittingState.scheduleRequest.fromTitle;
              },
            );
            final currentFrom = current.mapOrNull(
              citiesSubmitting: (citiesSubmittingState) {
                return citiesSubmittingState.scheduleRequest.fromTitle;
              },
            );
            return previousFrom != currentFrom;
          },
          listener: (context, state) {
            state.mapOrNull(citiesSubmitting: (citiesSubmittingState) {
              _fromTypeAheadController.text =
                  citiesSubmittingState.scheduleRequest.fromTitle ?? '';
            });
          },
          builder: (context, state) {
            final scheduleCubit = context.read<ScheduleCubit>();
            return state.when(
                citiesSubmitting: (scheduleRequest, loadingLocation) {
              return ListView(children: [
                Assets.images.station.image(),
                const Text('Откуда'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TypeAheadField(
                          direction: AxisDirection.up,
                          minCharsForSuggestions: 1,
                          textFieldConfiguration: TextFieldConfiguration(
                              controller: _fromTypeAheadController,
                              autofocus: false,
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .copyWith(fontStyle: FontStyle.italic),
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder())),
                          suggestionsCallback: (userInput) async {
                            final res =
                                await sl<SuggestedCityCompactRepository>()
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
                            scheduleCubit.setFrom(sug.pointKey!);
                          },
                        ),
                      ),
                      loadingLocation
                          ? const CircularProgressIndicator()
                          : IconButton(
                              icon: const Icon(Icons.gps_fixed),
                              onPressed: () async {
                                scheduleCubit.getPosition();
                              },
                            )
                    ],
                  ),
                ),
                const Text('Куда'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TypeAheadField(
                    direction: AxisDirection.up,
                    minCharsForSuggestions: 1,
                    textFieldConfiguration: TextFieldConfiguration(
                      controller: _toTypeAheadController,
                      autofocus: false,
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(fontStyle: FontStyle.italic),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    suggestionsCallback: (userInput) async {
                      final res = await sl<SuggestedCityCompactRepository>()
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
                      scheduleCubit.setTo(sug.pointKey!);
                    },
                  ),
                ),
                if (scheduleRequest.date != null)
                  Text(
                    DateFormat('yyyy-MM-dd').format(scheduleRequest.date!),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25.0),
                  ),
                ElevatedButton(
                    onPressed: () async {
                      final initialDate = DateTime.now();
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: initialDate,
                        firstDate: DateTime.now().subtract(
                          const Duration(
                            days: 30,
                          ),
                        ),
                        lastDate: DateTime.now().add(
                          const Duration(
                            days: 30,
                          ),
                        ),
                      );
                      if (newDate == null) return;
                      scheduleCubit.setDate(newDate);
                    },
                    child: const Text('Выбрать дату')),
                ElevatedButton(
                  onPressed: () {
                    scheduleCubit.getSchedule();
                  },
                  child: const Text('Получить расписание'),
                )
              ]);
            }, resultsLoading: () {
              return const Center(child: CircularProgressIndicator());
            }, resultsLoaded: (resultsLoadedState) {
              final segments = resultsLoadedState.segments;
              return ListView.separated(
                itemCount: segments!.length,
                itemBuilder: (context, index) {
                  final segment = segments[index];
                  IconData icon = Icons.control_point;
                  if (segment.from?.transportType == 'bus') {
                    icon = Icons.bus_alert;
                  }
                  if (segment.from?.transportType == 'train') {
                    icon = Icons.train;
                  }
                  int dur = 0;
                  final duration = segment.duration;
                  if (duration != null) {
                    dur = duration.toInt();
                  }
                  final correctedDepartureTime =
                      segment.departure?.add(const Duration(hours: 3));
                  final correctedArrivalTime =
                      segment.arrival?.add(const Duration(hours: 3));
                  return Card(
                    color: Colors.grey[200],
                    child: ListTile(
                      leading: Icon(icon),
                      title: Column(
                        children: [
                          const Text('Откуда'),
                          Text(segment.from?.title ?? ''),
                          Text(
                              'Время отъезда ${DateFormat('dd/MM/yyyy в kk:mm').format(correctedDepartureTime!)}'),
                          Text('Тип транспорта ${segment.from?.transportType}'),
                          const Text('Куда'),
                          Text(segments[index].to?.title ?? ''),
                          Text(
                              'Время прибытия ${DateFormat('dd/MM/yyyy в kk:mm').format(correctedArrivalTime!)}'),
                          Text('Тип транспорта ${segment.to?.transportType}'),
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
            }, resultsEmpty: () {
              return const Center(child: Text('Нет маршрута'));
            }, resultsFailure: (resultsFailureState) {
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

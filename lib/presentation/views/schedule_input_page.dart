import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:city_info_guide/presentation/blocs/schedule/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../domain/entities/schedule_p_p/schedule_point_point_entity.dart';
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
        leading: const AutoLeadingButton(),
        title: const Text('Расписание'),
      ),
      body: BlocConsumer<ScheduleCubit, ScheduleState>(
        listener: (context, state) {
          state.whenOrNull(toDetailsPage: (schedulePointPoint) {
            context.router.push(ScheduleResultRoute(
                schedulePointPointEntity: schedulePointPoint));
          });
        },
        builder: (context, state) {
          final scheduleCubit = context.read<ScheduleCubit>();
          return state.when(
              citiesSubmitting: (scheduleRequest, loadingLocation) {
            _fromTypeAheadController.text = scheduleRequest.fromTitle ?? '';
            _toTypeAheadController.text = scheduleRequest.toTitle ?? '';
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder())),
                            suggestionsCallback: (userInput) async {
                              final res =
                                  await sl<SuggestedCityCompactRepository>()
                                      .getSuggestedCityList(
                                          userInput: userInput);
                              return res;
                            },
                            itemBuilder: (context, suggestion) {
                              final sug = suggestion as SuggestedCityCompact;
                              return ListTile(
                                title: Text(sug.fullTitle!),
                              );
                            },
                            onSuggestionSelected: (suggestion) {
                              final sug = suggestion as SuggestedCityCompact;
                              scheduleCubit.setFromCity(
                                  sug.pointKey ?? '', sug.title ?? '');
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
                  Transform.rotate(
                    angle: pi / 2,
                    child: IconButton(
                      onPressed: () {
                        scheduleCubit.swapFromTo();
                      },
                      icon: const Icon(Icons.compare_arrows),
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
                          title: Text(sug.fullTitle!),
                        );
                      },
                      onSuggestionSelected: (suggestion) {
                        final sug = suggestion as SuggestedCityCompact;
                        scheduleCubit.setToCity(
                            sug.pointKey ?? '', sug.title ?? '');
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
                  ),
                  ElevatedButton(
                    onPressed: () {
                      scheduleCubit.fillWithFavourite();
                    },
                    child: const Text('Заполнить'),
                  )
                ]);
          }, resultsLoading: () {
            return Center(
                child: Lottie.asset('assets/lottie/bus_driving.json'));
          }, resultsLoaded: (resultsLoadedState) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text('resultsLoadedState'),
              ),
            );
          }, resultsEmpty: () {
            return const Center(
              child: Text('Нет маршрута'),
            );
          }, resultsFailure: (resultsFailureState) {
            return const Center(
              child: Text('Ошибка'),
            );
          }, toDetailsPage: (SchedulePointPointEntity schedulePointPoint) {
            return const Center(
              child: Text('toDetailsPage'),
            );
          });
        },
      ),
    );
  }
}

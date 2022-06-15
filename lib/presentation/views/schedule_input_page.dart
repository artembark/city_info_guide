import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:city_info_guide/presentation/blocs/schedule/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/utils/date_converters.dart';
import '../../domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import '../../domain/entities/schedule_request.dart';
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
  int? initialIndex = 1;
  final List<ScheduleRequest> popularRequests = [
    ScheduleRequest(
      from: 'c10883',
      fromTitle: 'Приозерск',
      to: 'c2',
      toTitle: 'Санкт-Петербург',
      date: DateTime.now(),
    ),
    ScheduleRequest(
      from: 'c2',
      fromTitle: 'Санкт-Петербург',
      to: 'c10883',
      toTitle: 'Приозерск',
      date: DateTime.now(),
    ),
    ScheduleRequest(
      from: 'c10883',
      fromTitle: 'Приозерск',
      to: 'c2',
      toTitle: 'Санкт-Петербург',
      date: DateTime.now().add(const Duration(days: 1)),
    ),
    ScheduleRequest(
      from: 'c2',
      fromTitle: 'Санкт-Петербург',
      to: 'c10883',
      toTitle: 'Приозерск',
      date: DateTime.now().add(const Duration(days: 1)),
    ),
  ];

  @override
  void dispose() {
    _fromTypeAheadController.dispose();
    _toTypeAheadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
            _fromTypeAheadController.text = loadingLocation
                ? 'Определяем положение...'
                : scheduleRequest.fromTitle ?? '';
            _toTypeAheadController.text = scheduleRequest.toTitle ?? '';
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Assets.images.station.image(),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 200,
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: TypeAheadField(
                                      autoFlipDirection: true,
                                      minCharsForSuggestions: 1,
                                      textFieldConfiguration:
                                          TextFieldConfiguration(
                                        controller: _fromTypeAheadController,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            onPressed: () =>
                                                _fromTypeAheadController
                                                    .clear(),
                                            icon: const Icon(Icons.close),
                                          ),
                                          labelText: 'Откуда',
                                          border: const OutlineInputBorder(),
                                        ),
                                      ),
                                      suggestionsCallback: (userInput) async {
                                        final res = await sl<
                                                SuggestedCityCompactRepository>()
                                            .getSuggestedCityList(
                                                userInput: userInput);
                                        return res;
                                      },
                                      itemBuilder: (context, suggestion) {
                                        final sug =
                                            suggestion as SuggestedCityCompact;
                                        return ListTile(
                                          title: Text(sug.fullTitle!),
                                        );
                                      },
                                      onSuggestionSelected: (suggestion) {
                                        final sug =
                                            suggestion as SuggestedCityCompact;
                                        scheduleCubit.setFromCity(
                                            sug.pointKey ?? '',
                                            sug.title ?? '');
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: loadingLocation
                                        ? const CircularProgressIndicator()
                                        : IconButton(
                                            icon: const Icon(Icons.gps_fixed),
                                            onPressed: () async {
                                              scheduleCubit.getPosition();
                                            },
                                          ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: TypeAheadField(
                                      autoFlipDirection: true,
                                      minCharsForSuggestions: 1,
                                      textFieldConfiguration:
                                          TextFieldConfiguration(
                                        controller: _toTypeAheadController,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            onPressed: () =>
                                                _toTypeAheadController.clear(),
                                            icon: const Icon(Icons.close),
                                          ),
                                          labelText: 'Куда',
                                          border: const OutlineInputBorder(),
                                        ),
                                      ),
                                      suggestionsCallback: (userInput) async {
                                        final res = await sl<
                                                SuggestedCityCompactRepository>()
                                            .getSuggestedCityList(
                                                userInput: userInput);
                                        return res;
                                      },
                                      itemBuilder: (context, suggestion) {
                                        final sug =
                                            suggestion as SuggestedCityCompact;
                                        return ListTile(
                                          title: Text(sug.fullTitle!),
                                        );
                                      },
                                      onSuggestionSelected: (suggestion) {
                                        final sug =
                                            suggestion as SuggestedCityCompact;
                                        scheduleCubit.setToCity(
                                            sug.pointKey ?? '',
                                            sug.title ?? '');
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Transform.rotate(
                                      angle: pi / 2,
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          scheduleCubit.swapFromTo();
                                        },
                                        icon: const Icon(Icons.compare_arrows),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ToggleSwitch(
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.25,
                                minHeight: 50,
                                initialLabelIndex: initialIndex,
                                cornerRadius: 5.0,
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.white,
                                inactiveFgColor: Colors.black,
                                totalSwitches: 3,
                                borderWidth: 1.0,
                                borderColor: const [Colors.black38],
                                dividerColor: Colors.black26,
                                labels: const ['Сегодня', 'Завтра', 'Дата'],
                                icons: const [
                                  null,
                                  null,
                                  FontAwesomeIcons.calendar,
                                ],
                                activeBgColors: const [
                                  [Colors.blue],
                                  [Colors.blue],
                                  [Colors.blue],
                                ],
                                onToggle: (index) async {
                                  setState(() {
                                    initialIndex = index;
                                  });
                                  switch (index) {
                                    case 0:
                                      scheduleCubit.setDate(
                                        DateTime.now(),
                                      );
                                      break;
                                    case 1:
                                      scheduleCubit.setDate(
                                        DateTime.now().add(
                                          const Duration(days: 1),
                                        ),
                                      );
                                      break;
                                    case 2:
                                      var newDate = await showCalendar(context);
                                      if (newDate == null) {
                                        setState(() {
                                          initialIndex = null;
                                        });
                                      } else {
                                        scheduleCubit.setDate(newDate);
                                      }
                                      break;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const ButtonWithDate(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Популярное',
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: popularRequests.length,
                                  itemBuilder: (context, index) => InkWell(
                                    onTap: null,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                            '${popularRequests[index].fromTitle}-'
                                            '${popularRequests[index].toTitle}'
                                            '${formButtonDateText(popularRequests[index].date!)}'),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ],
              ),
            );
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

Future<DateTime?> showCalendar(BuildContext context) async {
  final initialDate = DateTime.now();
  DateTime? newDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: initialDate.subtract(
      const Duration(
        days: 30,
      ),
    ),
    lastDate: initialDate.add(
      const Duration(
        days: 30,
      ),
    ),
  );
  return newDate;
}

class ButtonWithDate extends StatelessWidget {
  const ButtonWithDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) {
        final scheduleCubit = context.read<ScheduleCubit>();
        return state.maybeWhen(citiesSubmitting: (scheduleRequest, location) {
          String buttonText = '';
          if (scheduleRequest.date != null &&
              scheduleRequest.date is DateTime) {
            buttonText = formButtonDateText(scheduleRequest.date!);
          }
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: ElevatedButton(
              onPressed: () {
                scheduleCubit.getSchedule();
              },
              child: Text('Узнать расписание$buttonText'),
            ),
          );
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
}

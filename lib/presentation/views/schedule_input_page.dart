import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/app/router/app_router.gr.dart';
import 'package:city_info_guide/core/l10n/locale_keys.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/utils/date_converters.dart';
import '../../domain/entities/schedule_request.dart';
import '../../domain/entities/suggested_city/suggested_city_compact.dart';
import 'package:city_info_guide/app/assets/assets.gen.dart';
import '../blocs/schedule_input/schedule_input_cubit.dart';
import '/injector.dart';

class ScheduleInputPage extends StatefulWidget {
  const ScheduleInputPage({Key? key}) : super(key: key);

  @override
  State<ScheduleInputPage> createState() => _ScheduleInputPageState();
}

class _ScheduleInputPageState extends State<ScheduleInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: Text(LocaleKeys.schedule.tr()),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Assets.images.station.image(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 200,
                ),
                const ScheduleInputForm(),
                PopularRoutes()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PopularRoutes extends StatelessWidget {
  PopularRoutes({
    Key? key,
  }) : super(key: key);

  //набор данных пока константный
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.popular.tr(),
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
                onTap: () => context.read<ScheduleInputCubit>().toDetailsPage(
                      ScheduleRequest(
                        from: popularRequests[index].from,
                        to: popularRequests[index].to,
                        date: popularRequests[index].date,
                      ),
                    ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '${popularRequests[index].fromTitle}-'
                      '${popularRequests[index].toTitle} на'
                      ' ${formButtonDateText(popularRequests[index].date!)}',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
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
    return BlocConsumer<ScheduleInputCubit, ScheduleInputState>(
      listener: (context, state) {
        state.whenOrNull(toDetailsPage: (scheduleRequest) {
          context.router
              .push(ScheduleResultRoute(scheduleRequest: scheduleRequest));
        }, citiesSubmitting: (scheduleRequest, locationUpdating, message) {
          if (message != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(message),
            ));
          }
        });
      },
      builder: (context, state) {
        return state.maybeWhen(
            citiesSubmitting: (scheduleRequest, location, message) {
          String buttonText = '';
          if (scheduleRequest.date != null &&
              scheduleRequest.date is DateTime) {
            buttonText = formButtonDateText(scheduleRequest.date!);
          }
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: ElevatedButton(
              onPressed: () {
                context.read<ScheduleInputCubit>().checkInputFields();
              },
              child: Text(
                  '${LocaleKeys.button_get_schedule_for.tr()} $buttonText'),
            ),
          );
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
}

class ScheduleInputForm extends StatefulWidget {
  const ScheduleInputForm({Key? key}) : super(key: key);

  @override
  State<ScheduleInputForm> createState() => _ScheduleInputFormState();
}

class _ScheduleInputFormState extends State<ScheduleInputForm> {
  final TextEditingController _fromTypeAheadController =
      TextEditingController();

  final TextEditingController _toTypeAheadController = TextEditingController();

  int? initialIndex = 1;

  @override
  void dispose() {
    _fromTypeAheadController.dispose();
    _toTypeAheadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleInputCubit, ScheduleInputState>(
      builder: (context, state) {
        final scheduleCubit = context.read<ScheduleInputCubit>();
        return state.when(
            citiesSubmitting: (scheduleRequest, loadingLocation, message) {
          _fromTypeAheadController.text = loadingLocation
              ? LocaleKeys.updating_geolocation.tr()
              : scheduleRequest.fromTitle ?? '';
          _toTypeAheadController.text = scheduleRequest.toTitle ?? '';
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FromInputField(
                        fromTypeAheadController: _fromTypeAheadController,
                        scheduleCubit: scheduleCubit),
                    GeolocationButton(scheduleCubit: scheduleCubit)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ToInputField(
                        toTypeAheadController: _toTypeAheadController,
                        scheduleCubit: scheduleCubit),
                    SwapIconButton(scheduleCubit: scheduleCubit),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ToggleSwitch(
                  minWidth: MediaQuery.of(context).size.width * 0.25,
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
                  labels: [
                    LocaleKeys.today.tr(),
                    LocaleKeys.tomorrow.tr(),
                    LocaleKeys.date.tr(),
                  ],
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
          );
        }, geolocationFailure: (geolocationFailure) {
          return Center(
            child: Text('${LocaleKeys.error.tr()} $geolocationFailure'),
          );
        }, toDetailsPage: (ScheduleRequest scheduleRequest) {
          return const Center(
            child: Text('toDetailsPage'),
          );
        });
      },
    );
  }
}

class SwapIconButton extends StatelessWidget {
  const SwapIconButton({
    Key? key,
    required this.scheduleCubit,
  }) : super(key: key);

  final ScheduleInputCubit scheduleCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class ToInputField extends StatelessWidget {
  const ToInputField({
    Key? key,
    required TextEditingController toTypeAheadController,
    required this.scheduleCubit,
  })  : _toTypeAheadController = toTypeAheadController,
        super(key: key);

  final TextEditingController _toTypeAheadController;
  final ScheduleInputCubit scheduleCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: TypeAheadField(
        autoFlipDirection: true,
        minCharsForSuggestions: 1,
        textFieldConfiguration: TextFieldConfiguration(
          controller: _toTypeAheadController,
          autofocus: false,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () => _toTypeAheadController.clear(),
              icon: const Icon(Icons.close),
            ),
            labelText: 'Куда',
            border: const OutlineInputBorder(),
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
          scheduleCubit.setToCity(sug.pointKey ?? '', sug.title ?? '');
        },
      ),
    );
  }
}

class GeolocationButton extends StatelessWidget {
  const GeolocationButton({
    Key? key,
    required this.scheduleCubit,
  }) : super(key: key);

  final ScheduleInputCubit scheduleCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: IconButton(
        icon: const Icon(Icons.gps_fixed),
        onPressed: () async {
          scheduleCubit.getPosition();
        },
      ),
    );
  }
}

class FromInputField extends StatelessWidget {
  const FromInputField({
    Key? key,
    required TextEditingController fromTypeAheadController,
    required this.scheduleCubit,
  })  : _fromTypeAheadController = fromTypeAheadController,
        super(key: key);

  final TextEditingController _fromTypeAheadController;
  final ScheduleInputCubit scheduleCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: TypeAheadField(
        autoFlipDirection: true,
        minCharsForSuggestions: 1,
        textFieldConfiguration: TextFieldConfiguration(
          controller: _fromTypeAheadController,
          autofocus: false,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () => _fromTypeAheadController.clear(),
              icon: const Icon(Icons.close),
            ),
            labelText: 'Откуда',
            border: const OutlineInputBorder(),
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
          scheduleCubit.setFromCity(sug.pointKey ?? '', sug.title ?? '');
        },
      ),
    );
  }
}

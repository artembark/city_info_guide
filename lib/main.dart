import 'package:city_info_guide/domain/blocs/schedule/schedule_cubit.dart';
import 'package:city_info_guide/domain/repositories/suggested_city_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';

import 'domain/entities/schedule_request.dart';
import 'domain/entities/suggested_city/suggested_city_compact.dart';
import 'injector.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initializeDependencies();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _fromTypeAheadController =
      TextEditingController();
  final TextEditingController _toTypeAheadController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => di.sl<ScheduleCubit>(),
          child: BlocBuilder<ScheduleCubit, ScheduleState>(
            builder: (context, state) {
              return ListView(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TypeAheadField(
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
                            .updateFromState(sug.pointKey!);
                      },
                    ),
                    TypeAheadField(
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
                            .updateToState(sug.pointKey!);
                      },
                    ),
                    if (context
                            .read<ScheduleCubit>()
                            .state
                            .scheduleRequest
                            .date !=
                        null)
                      Text(
                        DateFormat('yyyy-MM-dd').format(context
                            .read<ScheduleCubit>()
                            .state
                            .scheduleRequest
                            .date!),
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
          ),
        ),
      ),
    );
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- bloc: ${bloc.runtimeType}, change: $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- bloc: ${bloc.runtimeType}, error: $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }
}

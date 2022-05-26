import 'dart:io';

import 'package:city_info_guide/data/repository/schedule_point_point_repo_impl.dart';
import 'package:city_info_guide/domain/blocs/schedule/schedule_cubit.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point.dart';
import 'package:city_info_guide/domain/repositories/schedule_point_point_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'domain/entities/suggested_city/suggested_city_compact.dart';
import 'injector.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
  int _counter = 0;
  String selectedCity = '';

  void _incrementCounter() async {
    // print('test');
    // final schedule = await di
    //     .sl<SchedulePointPointRepository>()
    //     .getSchedulePointPoint(
    //         from: 'c2', to: 'c85072', date: DateTime(2022, 6, 2));
    // print(schedule.segments?.first.from?.title);
    // setState(() {
    //   _counter++;
    // });
    di.sl<ScheduleCubit>().printText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => di.sl<ScheduleCubit>(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                TypeAheadField(
                  minCharsForSuggestions: 1,
                  textFieldConfiguration: TextFieldConfiguration(
                      autofocus: false,
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(fontStyle: FontStyle.italic),
                      decoration:
                          InputDecoration(border: OutlineInputBorder())),
                  suggestionsCallback: (pattern) async {
                    return await getSuggestion(pattern);
                  },
                  itemBuilder: (context, suggestion) {
                    final sug1 = suggestion as SuggestedCityCompact;
                    return ListTile(
                      leading: const Icon(Icons.shopping_cart),
                      title: Text(sug1.fullTitle!),
                      subtitle: Text(sug1.pointKey!),
                    );
                  },
                  onSuggestionSelected: (suggestion) {
                    final sug = suggestion as SuggestedCityCompact;
                    print('Selected suggestion ${sug.fullTitle}');
                    setState(() {
                      selectedCity = sug.fullTitle!;
                    });
                  },
                ),
                TypeAheadField(
                  minCharsForSuggestions: 1,
                  textFieldConfiguration: TextFieldConfiguration(
                      autofocus: false,
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(fontStyle: FontStyle.italic),
                      decoration:
                          InputDecoration(border: OutlineInputBorder())),
                  suggestionsCallback: (pattern) async {
                    return await getSuggestion(pattern);
                  },
                  itemBuilder: (context, suggestion) {
                    final sug1 = suggestion as SuggestedCityCompact;
                    return ListTile(
                      leading: const Icon(Icons.shopping_cart),
                      title: Text(sug1.fullTitle!),
                      subtitle: Text(sug1.pointKey!),
                    );
                  },
                  onSuggestionSelected: (suggestion) {
                    final sug = suggestion as SuggestedCityCompact;
                    print('Selected suggestion ${sug.fullTitle}');
                    setState(() {
                      selectedCity = sug.fullTitle!;
                    });
                  },
                ),
                // BlocBuilder<ScheduleCubit, ScheduleState>(
                //     builder(context, state): builder)
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

const Map<String, String> headers = {
  'Host': 'suggests.rasp.yandex.net',
  'Accept': '*/*',
  'Accept-Encoding': 'gzip, deflate, br'
};

Future<dynamic> getSuggestion(String part) async {
  final client = http.Client();

  try {
    final url =
        'https://suggests.rasp.yandex.net/all_suggests?format=old&lang=ru&national_version=ru&part=$part';
    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final suggestedCities = convert.jsonDecode(response.body)[1];
      List<SuggestedCityCompact> suggestedCityList = [];
      for (var suggestedCity in suggestedCities) {
        suggestedCityList.add(
          SuggestedCityCompact(
              pointKey: suggestedCity[0],
              title: suggestedCity[1],
              fullTitle: suggestedCity[2],
              slug: suggestedCity[3]),
        );
      }
      if (kDebugMode) print(suggestedCityList.length);
      return suggestedCityList;
    } else {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }
  } on http.ClientException catch (error) {
    throw HttpException('Request failed with status: $error');
  } on SocketException catch (_) {
    print('Проблемы с соединением');
  } catch (_) {
    print('Что-то пошло не так');
  } finally {
    client.close();
  }
}

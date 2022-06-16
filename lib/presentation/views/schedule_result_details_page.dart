import 'package:city_info_guide/core/l10n/locale_keys.dart';
import 'package:city_info_guide/presentation/blocs/schedule_details/schedule_details_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../injector.dart';

class ScheduleResultDetailsPage extends StatelessWidget {
  const ScheduleResultDetailsPage({Key? key, required this.uid})
      : super(key: key);

  final String uid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ScheduleDetailsCubit>()..getScheduleDetails(uid),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.route_details.tr()),
        ),
        body: SafeArea(
            child: BlocBuilder<ScheduleDetailsCubit, ScheduleDetailsState>(
          builder: (context, state) {
            return state.when(
                initial: () => Center(
                    child: Lottie.asset('assets/lottie/bus_driving.json')),
                resultsLoading: () => Center(
                    child: Lottie.asset('assets/lottie/bus_driving.json')),
                resultsLoaded: (listStationsRoute) {
                  return Column(
                    children: [
                      Text(listStationsRoute.shortTitle!),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Text(
                                      'Станция: ${listStationsRoute.stops![index]!.station!.title!}'),
                                  Text(
                                      'Отправление: ${listStationsRoute.stops![index]!.departure}')
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider();
                            },
                            itemCount: listStationsRoute.stops!.length),
                      )
                    ],
                  );
                },
                resultsEmpty: () => const Center(
                      child: Text('Нет подробностей'),
                    ),
                resultsFailure: (message) => Center(
                      child: Text('Ошибка $message'),
                    ));
          },
        )),
      ),
    );
  }
}

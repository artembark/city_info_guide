import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import 'package:city_info_guide/presentation/blocs/schedule/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../core/utils/duration_converter.dart';
import '../../injector.dart';

class ScheduleResultPage extends StatelessWidget {
  const ScheduleResultPage({Key? key, required this.schedulePointPointEntity})
      : super(key: key);

  final SchedulePointPointEntity schedulePointPointEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: BlocProvider.of<ScheduleCubit>(context),
        child: ScheduleResultView(
          schedulePointPointEntity: schedulePointPointEntity,
        ));
  }
}

class ScheduleResultView extends StatelessWidget {
  const ScheduleResultView({Key? key, required this.schedulePointPointEntity})
      : super(key: key);

  final SchedulePointPointEntity schedulePointPointEntity;
  @override
  Widget build(BuildContext context) {
    final segments = schedulePointPointEntity.segments;
    return WillPopScope(
      onWillPop: () {
        context.read<ScheduleCubit>().init();
        return AutoRouter.of(context).pop();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text('Расписание'),
                Text('${schedulePointPointEntity.search?.from?.title} - '
                    '${schedulePointPointEntity.search?.to?.title}')
              ],
            ),
          ),
          body: SafeArea(
              child: ListView.separated(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
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
                      Text('Тип транспорта ${segment.from?.transportType}'),
                      Text(segment.from?.title ?? ''),
                      Text(
                          '${DateFormat('dd/MM/yyyy kk:mm').format(correctedDepartureTime!)}'),
                      Text(segments[index].to?.title ?? ''),
                      Text(
                          '${DateFormat('dd/MM/yyyy kk:mm').format(correctedArrivalTime!)}'),
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
          ))),
    );
  }
}

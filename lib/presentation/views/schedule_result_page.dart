import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/presentation/blocs/schedule/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../app/router/app_router.gr.dart';
import '../../core/utils/duration_converter.dart';

class ScheduleResultPage extends StatelessWidget {
  const ScheduleResultPage({Key? key, required this.schedulePointPointEntity})
      : super(key: key);

  final SchedulePointPointEntity schedulePointPointEntity;

  @override
  Widget build(BuildContext context) {
    final segments = schedulePointPointEntity.segments;
    return WillPopScope(
      onWillPop: () async {
        context.read<ScheduleCubit>().init(ScheduleRequest());
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: const [
                Text('Расписание'),
              ],
            ),
          ),
          body: SafeArea(
              child: Column(
            children: [
              Text(
                DateFormat('dd/MM/yyyy').format(
                  DateTime.parse(schedulePointPointEntity.search?.date ?? ''),
                ),
              ),
              Text(
                '${schedulePointPointEntity.search?.from?.title} - '
                '${schedulePointPointEntity.search?.to?.title}',
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  itemCount: segments!.length,
                  itemBuilder: (context, index) {
                    final segment = segments[index];
                    IconData icon = Icons.control_point;
                    if (segment.from?.transportType == 'bus') {
                      icon = FontAwesomeIcons.bus;
                    }
                    if (segment.from?.transportType == 'train') {
                      icon = FontAwesomeIcons.trainSubway;
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
                    return InkWell(
                      onTap: () {
                        context.router.push(
                          ScheduleResultDetailsRoute(uid: segment.thread!.uid!),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          side: const BorderSide(
                            color: Colors.black45,
                          ),
                        ),
                        clipBehavior: Clip.hardEdge,
                        elevation: 0,
                        color: Colors.grey[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      '${DateFormat('kk:mm').format(correctedDepartureTime!)}•--------'),
                                  Icon(icon),
                                  Text(
                                      '--------•${DateFormat('kk:mm').format(correctedArrivalTime!)}')
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFF8DC6FF).withOpacity(0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  printDuration(Duration(seconds: dur)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              //width: double.infinity,
                            ),
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
                ),
              ),
            ],
          ))),
    );
  }
}

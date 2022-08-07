import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/core/l10n/locale_keys.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/segment_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:city_info_guide/presentation/blocs/schedule_result/schedule_result_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app/assets/assets.gen.dart';
import '../../app/router/app_router.gr.dart';
import '../../core/utils/duration_converter.dart';
import '../../injector.dart';
import '../blocs/schedule_input/schedule_input_cubit.dart';

class ScheduleResultPage extends StatelessWidget {
  const ScheduleResultPage({Key? key, required this.scheduleRequest})
      : super(key: key);

  final ScheduleRequest scheduleRequest;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<ScheduleInputCubit>().init(
              ScheduleRequest(
                from: scheduleRequest.from,
                fromTitle: scheduleRequest.fromTitle,
                to: scheduleRequest.to,
                toTitle: scheduleRequest.toTitle,
                date: scheduleRequest.date,
              ),
            );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.schedule.tr()),
        ),
        body: SafeArea(
          child: BlocProvider(
            create: (context) =>
                sl<ScheduleResultCubit>()..getSchedule(scheduleRequest),
            child: const ScheduleResult(),
          ),
        ),
      ),
    );
  }
}

class ScheduleResult extends StatelessWidget {
  const ScheduleResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleResultCubit, ScheduleResultState>(
      builder: (context, state) {
        return state.when(resultsLoading: () {
          return const ScheduleResultsLoading();
        }, resultsLoaded: (schedulePointPointEntity) {
          return ScheduleResultLoaded(
            schedulePointPointEntity: schedulePointPointEntity,
          );
        }, resultsEmpty: () {
          return const ScheduleResultEmpty();
        }, resultsFailure: (failureMessage) {
          return ScheduleResultsFailure(
            failureMessage: failureMessage,
          );
        });
      },
    );
  }
}

class ScheduleResultsFailure extends StatelessWidget {
  const ScheduleResultsFailure({
    Key? key,
    required this.failureMessage,
  }) : super(key: key);
  final String failureMessage;

  @override
  Widget build(BuildContext context) {
    return Text('${LocaleKeys.error.tr()} $failureMessage}');
  }
}

class ScheduleResultEmpty extends StatelessWidget {
  const ScheduleResultEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(LocaleKeys.empty.tr()),
    );
  }
}

class ScheduleResultsLoading extends StatelessWidget {
  const ScheduleResultsLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/bus_driving.json'),
    );
  }
}

class ScheduleResultLoaded extends StatelessWidget {
  const ScheduleResultLoaded({
    Key? key,
    required this.schedulePointPointEntity,
  }) : super(key: key);

  final SchedulePointPointEntity schedulePointPointEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        RoutesList(segments: schedulePointPointEntity.segments!),
      ],
    );
  }
}

class RoutesList extends StatelessWidget {
  const RoutesList({
    Key? key,
    required this.segments,
  }) : super(key: key);

  final List<SegmentEntity> segments;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
        itemCount: segments.length + 1,
        itemBuilder: (context, index) {
          if (index < segments.length) {
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
            return RouteCard(
                segment: segment,
                correctedDepartureTime: correctedDepartureTime,
                icon: icon,
                correctedArrivalTime: correctedArrivalTime,
                dur: dur);
          } else {
            return Center(
              child: GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse('https://rasp.yandex.ru/'));
                  },
                  child: Assets.images.yandexRaspCopyright.image(
                    width: MediaQuery.of(context).size.width * 0.6,
                  )),
            );
          }
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10.0,
          );
        },
      ),
    );
  }
}

class RouteCard extends StatelessWidget {
  const RouteCard({
    Key? key,
    required this.segment,
    required this.correctedDepartureTime,
    required this.icon,
    required this.correctedArrivalTime,
    required this.dur,
  }) : super(key: key);

  final SegmentEntity segment;
  final DateTime? correctedDepartureTime;
  final IconData icon;
  final DateTime? correctedArrivalTime;
  final int dur;

  @override
  Widget build(BuildContext context) {
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
                  color: const Color(0xFF8DC6FF).withOpacity(0.5)),
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
  }
}

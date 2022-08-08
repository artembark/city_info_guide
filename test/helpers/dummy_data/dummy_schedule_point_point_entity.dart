import 'package:city_info_guide/domain/entities/schedule_p_p/from_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/pagination_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/schedule_point_point_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/search_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/segment_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/thread_entity.dart';
import 'package:city_info_guide/domain/entities/schedule_p_p/to_entity.dart';

final tSchedulePointPointEntity = SchedulePointPointEntity(
  intervalSegments: const <dynamic>[],
  pagination: const PaginationEntity(total: 2, limit: 100, offset: 0),
  segments: [
    SegmentEntity(
        arrival: DateTime.parse('2022-06-15T07:31:00+03:00'),
        from: const FromEntity(
            code: 's9813869',
            title: 'Приозерск',
            stationType: null,
            popularTitle: null,
            shortTitle: null,
            transportType: null,
            stationTypeName: null,
            type: 'station'),
        thread: const ThreadEntity(
            uid: 'empty_0_f9813869t9837534_175',
            title: 'Приозерск — Санкт-Петербург, метро «Парнас»',
            number: '960',
            shortTitle: null,
            threadMethodLink: null,
            carrier: null,
            transportType: null,
            vehicle: null,
            transportSubtype: null,
            expressType: null),
        departurePlatform: null,
        departure: DateTime.parse('2022-06-15T05:05:00+03:00'),
        stops: '',
        departureTerminal: null,
        to: const ToEntity(
            code: 's9837534',
            title: 'Санкт-Петербург, метро «Парнас»',
            stationType: null,
            popularTitle: null,
            shortTitle: null,
            transportType: null,
            stationTypeName: null,
            type: 'station'),
        hasTransfers: null,
        ticketsInfo: null,
        duration: 8760,
        arrivalTerminal: null,
        startDate: null,
        arrivalPlatform: null),
    SegmentEntity(
        arrival: DateTime.parse('2022-06-15T08:08:00+03:00'),
        from: const FromEntity(
            code: 's9813869',
            title: 'Приозерск',
            stationType: null,
            popularTitle: null,
            shortTitle: null,
            transportType: null,
            stationTypeName: null,
            type: 'station'),
        thread: const ThreadEntity(
            uid: 'empty_7_f9813869t9654496_175',
            title: 'Приозерск — Санкт-Петербург, Северный автовокзал',
            number: '859',
            shortTitle: null,
            threadMethodLink: null,
            carrier: null,
            transportType: null,
            vehicle: null,
            transportSubtype: null,
            expressType: null),
        departurePlatform: null,
        departure: DateTime.parse('2022-06-15T05:20:00+03:00'),
        stops: '',
        departureTerminal: null,
        to: const ToEntity(
            code: 's9654496',
            title: 'Санкт-Петербург, Северный автовокзал',
            stationType: null,
            popularTitle: null,
            shortTitle: null,
            transportType: null,
            stationTypeName: null,
            type: 'station'),
        hasTransfers: null,
        ticketsInfo: null,
        duration: 10080,
        arrivalTerminal: null,
        startDate: null,
        arrivalPlatform: null)
  ],
  search: const SearchEntity(
    date: '2022-06-15',
    to: ToEntity(
        code: 'c2',
        title: 'Санкт-Петербург',
        stationType: null,
        popularTitle: null,
        shortTitle: null,
        transportType: null,
        stationTypeName: null,
        type: 'settlement'),
    from: FromEntity(
        code: 'c10883',
        title: 'Приозерск',
        stationType: null,
        popularTitle: null,
        shortTitle: null,
        transportType: null,
        stationTypeName: null,
        type: 'settlement'),
  ),
);

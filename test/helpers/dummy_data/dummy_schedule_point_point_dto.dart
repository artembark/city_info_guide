import 'package:city_info_guide/data/dto/schedule_p_p/from_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/pagination_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/search_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/segment_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/thread_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/to_dto.dart';

final tSchedulePointPointDTO = SchedulePointPointDTO(
  intervalSegments: const <dynamic>[],
  pagination: const PaginationDTO(total: 2, limit: 100, offset: 0),
  segments: [
    SegmentDTO(
        arrival: DateTime.parse('2022-06-15T07:31:00+03:00'),
        from: FromDTO(
            code: 's9813869',
            title: 'Приозерск',
            stationType: 'bus_station',
            popularTitle: null,
            shortTitle: null,
            transportType: 'bus',
            stationTypeName: 'автовокзал',
            type: 'station'),
        thread: const ThreadDTO(
            uid: 'empty_0_f9813869t9837534_175',
            title: 'Приозерск — Санкт-Петербург, метро «Парнас»',
            number: '960',
            shortTitle: 'Приозерск — Санкт-Петербург, метро «Парнас»',
            threadMethodLink:
                'api.rasp.yandex.net/v3/thread/?date=2022-06-15&uid=empty_0_f9813869t9837534_175',
            carrier: null,
            transportType: 'bus',
            vehicle: null,
            transportSubtype: null,
            expressType: null),
        departurePlatform: null,
        departure: DateTime.parse('2022-06-15T05:05:00+03:00'),
        stops: '',
        departureTerminal: null,
        to: const ToDTO(
            code: 's9837534',
            title: 'Санкт-Петербург, метро «Парнас»',
            stationType: 'bus_stop',
            popularTitle: 'Метро «Парнас»',
            shortTitle: null,
            transportType: 'bus',
            stationTypeName: 'автобусная остановка',
            type: 'station'),
        hasTransfers: null,
        ticketsInfo: null,
        duration: 8760,
        arrivalTerminal: null,
        startDate: null,
        arrivalPlatform: null),
    SegmentDTO(
        arrival: DateTime.parse('2022-06-15T08:08:00+03:00'),
        from: FromDTO(
            code: 's9813869',
            title: 'Приозерск',
            stationType: null,
            popularTitle: null,
            shortTitle: null,
            transportType: null,
            stationTypeName: null,
            type: 'station'),
        thread: const ThreadDTO(
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
        to: const ToDTO(
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
  search: SearchDTO(
    date: '2022-06-15',
    to: const ToDTO(
        code: 'c2',
        title: 'Санкт-Петербург',
        stationType: null,
        popularTitle: null,
        shortTitle: null,
        transportType: null,
        stationTypeName: null,
        type: 'settlement'),
    from: FromDTO(
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

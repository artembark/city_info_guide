import 'package:city_info_guide/data/dto/schedule_p_p/pagination_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/schedule_point_point_dto.dart';
import 'package:city_info_guide/data/dto/schedule_p_p/segment_dto.dart';

final tSch = SchedulePointPointDTO(intervalSegments: [],
    pagination: PaginationDTO(total: 4, limit: 100, offset: 0),
    segments: [SegmentDTO(arrival: DateTime.parse('2022-06-15 04:31:00.000Z'),
    from: FromDTO(code: 's9813869',
title: 'Приозерск',
stationType: 'bus_station',
popularTitle: '',
shortTitle: '',
transportType: 'bus',
stationTypeName: 'автовокзал',
type: 'station'),
        thread: ThreadDTO(
        uid: 'empty_0_f9813869t9837534_175',
        title: 'Приозерск — Санкт-Петербург, метро «Парнас»',
        number: '960',
        shortTitle: 'Приозерск — Санкт-Петербург, метро «Парнас»',
        threadMethodLink: 'api.rasp.yandex.net/v3/thread/?date=2022-06-15&uid=empty_0_f9813869t9837534_175',
        carrier: null,
        transportType: 'bus',
        vehicle: null,
        transportSubtype: TransportSubtypeDTO(color: null, code: null, title: null),
        expressType: null),
    departurePlatform:,
    departure: 2022 - 06 - 15 02:05:00.000Z, stops:,
    departureTerminal: null
    ,
    to: ToDTO
      (
        code: s9837534,
        title: 'Санкт-Петербург, метро «Парнас»',
        stationType: bus_stop,
        popularTitle: 'Метро «Парнас»',
        shortTitle: '',
        transportType: 'bus',
        stationTypeName: 'автобусная остановка',
        type: 'station'),
    hasTransfers: false
    ,
    ticketsInfo: TicketsInfoDTO
      (
        etMarker: false
        ,
        places: [
        ]
    )
    ,
    duration: 8760
    ,
    arrivalTerminal: null
    ,
    startDate: 2022
        -
        06
        -
        15
    ,
    arrivalPlatform:)
,
    SegmentDTO(arrival: 2022-06-15 05:08:00.000Z, from: FromDTO
(
code: s9813869, title: Приозерск, stationType: bus_station, popularTitle: ,
shortTitle: ,
transportType: bus, stationTypeName: автовокзал,
type: station),
thread: ThreadDTO
(
uid: empty_7_f9813869t9654496_175, title: Приозерск — Санкт-Петербург, Северный автовок
з
а
л
,
number: 859
,
shortTitle: Приозерск — Санкт-Петербург, Северный автовок
з
а
л
,
threadMethodLink: api.rasp.yandex.net/v3/thread/?
date=2022
-
06
-
15
&
uid=empty_7_f9813869t9654496_175, carrier: null
,
transportType: bus, vehicle: null
,
transportSubtype: TransportSubtypeDTO
(
color: null
,
code: null
,
title: null
)
,
expressType: null
)
,
departurePlatform: ,
departure: 2022-06-15 02:20:00.000Z, stops: ,
departureTerminal: null
,
to: ToDTO
(
code: s9654496, title: Санкт-Петербург, Северный автовок
з
а
л
,
stationType: bus_station, popularTitle: Северный автовокзал (Му
р
и
н
о
)
,
shortTitle: ,
transportType: bus, stationTypeName: автовокзал,
type: station),
hasTransfers: false
,
ticketsInfo: TicketsInfoDTO
(
etMarker: false
,
places: [
]
)
,
duration: 10080
,
arrivalTerminal: null
,
startDate: 2022
-
06
-
15
,
arrivalPlatform: )
,
SegmentDTO
(
arrival: 2022-06-15 05:15:00.000Z, from: FromDTO
(
code: s9603177, title: Приозерск, stationType: train_station, popularTitle: ,
shortTitle: ,
transportType: train, stationTypeName: в
о
к
з
а
л
,
type: station),
thread: ThreadDTO
(
uid: 6508
_0_9602748_g22_4, title: Кузнечное — Санкт-Петербург (Финляндский вокз
а
л
)
,
number: 6508
,
shortTitle: Кузнечное — С
П
б
-
Ф
и
н
.
,
threadMethodLink: api.rasp.yandex.net/v3/thread/?
date=2022
-
06
-
15
&
uid=6508
_0_9602748_g22_4, carrier: {code: 1332, contacts: , url: http: //www.ppk-piter.ru/, logo_svg: null, title: Северо-западная пригородная пассажирская компания, phone: , codes: {icao: null, sirena: null, iata: null}, address: 197022, г. Санкт- Петербург, Инструментальная улица, дом 3, литера П, logo: https://yastat.net/s3/rasp/media/data/company/logo/szppk_logo2.png, email: }, transportType: suburban, vehicle: null, transportSubtype: TransportSubtypeDTO(color: #CC6600, code: suburban, title: Пригородный поезд), expressType: null), departurePlatform: , departure: 2022-06-15 02:28:00.000Z, stops: везде, departureTerminal: null, to: ToDTO(code: s9602497, title: Санкт-Петербург (Финляндский вокзал), stationType: train_station, popularTitle: Финляндский вокзал, shortTitle: СПб-Фин., transportType: train, stationTypeName: вокзал, type: station), hasTransfers: false, ticketsInfo: TicketsInfoDTO(etMarker: false, places: [{currency: RUB, price: {cents: 0, whole: 392}, name: null}]), duration: 10020, arrivalTerminal: null, startDate: 2022-06-15, arrivalPlatform: ), SegmentDTO(arrival: 2022-06-15 06:00:00.000Z, from: FromDTO(code: s9603177, title: Приозерск, stationType: train_station, popularTitle: , shortTitle: , transportType: train, stationTypeName: вокзал, type: station), thread: ThreadDTO(uid: 7582_0_9602748_g22_4, title: Кузнечное — Санкт-Петербург (Финляндский вокзал), number: 7582, shortTitle: Кузнечное — СПб-Фин., threadMethodLink: api.rasp.yandex.net/v3/thread/?date=2022-06-15&uid=7582_0_9602748_g22_4, carrier: {code: 1332, contacts: , url: http://www.ppk-piter.ru/, logo_svg: null, title: Северо-западная пригородная пассажирская компания, phone: , codes: {icao: null, sirena: null, iata: null}, address: 197022, г. Санкт- Петербург, Инструментальная улица, дом 3, литера П, logo: https://yastat.net/s3/rasp/media/data/company/logo/szppk_logo2.png, email: }, transportType: suburban, vehicle: null, transportSubtype: TransportSubtypeDTO(color: #CC6600, code: last, title: «Ласточка»), expressType: express), departurePlatform: , departure: 2022-06-15 03:56:00.000Z, stops: Громово, Лосево, Сосново, 69 км, Орехово, Токсово, Девяткино, Санкт-Петербург (Финляндский вокзал), departureTerminal: null, to: ToDTO(code: s9602497, title: Санкт-Петербург (Финляндский вокзал), stationType: train_station, popularTitle: Финляндский вокзал, shortTitle: СПб-Фин., transportType: train, stationTypeName: вокзал, type: station), hasTransfers: false, ticketsInfo: TicketsInfoDTO(etMarker: false, places: [{currency: RUB, price: {cents: 0, whole: 447}, name: null}]), duration: 7440, arrivalTerminal: null, startDate: 2022-06-15, arrivalPlatform: )], search: SearchDTO(date: 2022-06-15, to: ToDTO(code: c2, title: Санкт-Петербург, stationType: null, popularTitle: Санкт-Петербург, shortTitle: Санкт-Петербург, transportType: null, stationTypeName: null, type: settlement), from: FromDTO(code: c10883, title: Приозерск, stationType: null, popularTitle: Приозерск, shortTitle: Приозерск, transportType: null, stationTypeName: null, type: settlement)))
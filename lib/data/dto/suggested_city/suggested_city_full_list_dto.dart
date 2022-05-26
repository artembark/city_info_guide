import 'suggested_city_full_dto.dart';

class SuggestedCityFullListDTO {
  List<SuggestedCityFullDTO>? suggests;
  int? totalFound;
  bool? hasExactMatch;

  SuggestedCityFullListDTO(
      {this.suggests, this.totalFound, this.hasExactMatch});

  factory SuggestedCityFullListDTO.fromJson(Map<String, dynamic> json) =>
      SuggestedCityFullListDTO(
        suggests: (json['suggests'] as List<dynamic>?)
            ?.map(
                (e) => SuggestedCityFullDTO.fromJson(e as Map<String, dynamic>))
            .toList(),
        totalFound: json['total_found'] as int?,
        hasExactMatch: json['has_exact_match'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'suggests': suggests?.map((e) => e.toJson()).toList(),
        'total_found': totalFound,
        'has_exact_match': hasExactMatch,
      };
}
/*
{
"suggests": [
{},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "вкз. Приозерск, Приозерск",
"full_title_en": "train station Priozersk, Priozersk",
"full_title_ru": "вкз. Приозерск, Приозерск",
"full_title_uk": "вкз. Приозерск, Приозерськ",
"id": 1,
"majority": 2,
"object_id": 9603177,
"type": "station",
"order": 0,
"point_key": "s9603177",
"region_id": 10174,
"ttype": "train",
"title": "Приозерск",
"title_en": "Priozersk",
"title_ru": "Приозерск",
"title_uk": "Приозерск",
"zone_id": 2,
"slug": "priozersk-train-station",
"popular_title": "",
"station_type": "вокзал",
"settlement_title": "Приозерск",
"region_title": "Санкт-Петербург и Ленинградская область",
"country_title": "Россия"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "авт.вкз. Приозерск, Приозерск",
"full_title_en": "bus station Priozersk, Priozersk",
"full_title_ru": "авт.вкз. Приозерск, Приозерск",
"full_title_uk": "авт.вкз. Приозерск, Приозерськ",
"id": 1,
"majority": 2,
"object_id": 9813869,
"type": "station",
"order": 0,
"point_key": "s9813869",
"region_id": 10174,
"ttype": "bus",
"title": "Приозерск",
"title_en": "Priozersk",
"title_ru": "Приозерск",
"title_uk": "Приозерск",
"zone_id": -1,
"slug": "priozersk-bus-station",
"popular_title": "",
"station_type": "автовокзал",
"settlement_title": "Приозерск",
"region_title": "Санкт-Петербург и Ленинградская область",
"country_title": "Россия"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "авт.ост. 18 км Ново-Приозерского шоссе, Санкт-Петербург и Ленинградская область",
"full_title_en": "bus stop 18 км Ново-Приозерского шоссе, Saint-Petersburg and Leningradskaya oblast",
"full_title_ru": "авт.ост. 18 км Ново-Приозерского шоссе, Санкт-Петербург и Ленинградская область",
"full_title_uk": "авт.зуп. 18 км Ново-Приозерского шоссе, Санкт-Петербург і Ленінградська область",
"id": 1,
"majority": 4,
"object_id": 9868401,
"type": "station",
"order": 0,
"point_key": "s9868401",
"region_id": 10174,
"ttype": "bus",
"title": "18 км Ново-Приозерского шоссе",
"title_en": "18 км Ново-Приозерского шоссе",
"title_ru": "18 км Ново-Приозерского шоссе",
"title_uk": "18 км Ново-Приозерского шоссе",
"zone_id": -1,
"slug": "18-km-novo-priozerskogo-shosse",
"popular_title": "",
"station_type": "автобусная остановка",
"settlement_title": "",
"region_title": "Санкт-Петербург и Ленинградская область",
"country_title": "Россия"
},
{
"country_id": 149,
"disputed_territory": false,
"full_title": "о.п. Приозерный, Брестская область",
"full_title_en": "stop Priozerniy, Brest District",
"full_title_ru": "о.п. Приозерный, Брестская область",
"full_title_uk": "з.п. Приозерный, Брестська область",
"id": 1,
"majority": 4,
"object_id": 9614890,
"type": "station",
"order": 0,
"point_key": "s9614890",
"region_id": 21623,
"ttype": "train",
"title": "Приозерный",
"title_en": "Priozerniy",
"title_ru": "Приозерный",
"title_uk": "Приозерный",
"zone_id": 178,
"slug": "priozerniy-stop",
"popular_title": "",
"station_type": "остановочный пункт",
"settlement_title": "",
"region_title": "Брестская область",
"country_title": "Беларусь"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "авт.ост. Приозёрье, Калининградская область",
"full_title_en": "bus stop Приозёрье, Kaliningrad District",
"full_title_ru": "авт.ост. Приозёрье, Калининградская область",
"full_title_uk": "авт.зуп. Приозёрье, Калінінградська область",
"id": 1,
"majority": 4,
"object_id": 9861311,
"type": "station",
"order": 0,
"point_key": "s9861311",
"region_id": 10857,
"ttype": "bus",
"title": "Приозёрье",
"title_en": "Приозёрье",
"title_ru": "Приозёрье",
"title_uk": "Приозёрье",
"zone_id": -1,
"slug": "priozere",
"popular_title": "",
"station_type": "автобусная остановка",
"settlement_title": "",
"region_title": "Калининградская область",
"country_title": "Россия"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "авт.ост. Приозёрный, Санкт-Петербург и Ленинградская область",
"full_title_en": "bus stop Priozerniy, Saint-Petersburg and Leningradskaya oblast",
"full_title_ru": "авт.ост. Приозёрный, Санкт-Петербург и Ленинградская область",
"full_title_uk": "авт.зуп. Приозёрный, Санкт-Петербург і Ленінградська область",
"id": 1,
"majority": 4,
"object_id": 9837819,
"type": "station",
"order": 0,
"point_key": "s9837819",
"region_id": 10174,
"ttype": "bus",
"title": "Приозёрный",
"title_en": "Priozerniy",
"title_ru": "Приозёрный",
"title_uk": "Приозёрный",
"zone_id": -1,
"slug": "priozerniy-saint-petersburg-and-leningradskaya-oblast-s9837819",
"popular_title": "",
"station_type": "автобусная остановка",
"settlement_title": "",
"region_title": "Санкт-Петербург и Ленинградская область",
"country_title": "Россия"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "авт.ост. Приозёрный, Никологоры",
"full_title_en": "bus stop Приозёрный, Nikologory",
"full_title_ru": "авт.ост. Приозёрный, Никологоры",
"full_title_uk": "авт.зуп. Приозёрный, Никологоры",
"id": 1,
"majority": 4,
"object_id": 9872602,
"type": "station",
"order": 0,
"point_key": "s9872602",
"region_id": 10658,
"ttype": "bus",
"title": "Приозёрный",
"title_en": "Приозёрный",
"title_ru": "Приозёрный",
"title_uk": "Приозёрный",
"zone_id": -1,
"slug": "priozernyi-station-without-type",
"popular_title": "",
"station_type": "автобусная остановка",
"settlement_title": "Никологоры",
"region_title": "Владимирская область",
"country_title": "Россия"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "прст. Приозерный / Верхняя Тойма, левый берег, Верхнетоемский р-н, Архангельская область",
"full_title_en": "port st. Priozerny, Верхнетоемский р-н, Arkhangelsk District",
"full_title_ru": "прст. Приозерный / Верхняя Тойма, левый берег, Верхнетоемский р-н, Архангельская область",
"full_title_uk": "прист. Приозерный / Верхняя Тойма, левый берег, Верхнетоемский р-н, Архангельська область",
"id": 1,
"majority": 2,
"object_id": 9807151,
"type": "station",
"order": 0,
"point_key": "s9807151",
"region_id": 10842,
"ttype": "water",
"title": "Приозерный / Верхняя Тойма, левый берег",
"title_en": "Priozerny",
"title_ru": "Приозерный / Верхняя Тойма, левый берег",
"title_uk": "Приозерный / Верхняя Тойма, левый берег",
"zone_id": -1,
"slug": "priozerny",
"popular_title": "",
"station_type": "пристань",
"settlement_title": "",
"region_title": "Архангельская область",
"country_title": "Россия"
},
{
"country_id": 225,
"disputed_territory": false,
"full_title": "авт.ост. Приозёрная улица, Сестрорецк",
"full_title_en": "bus stop Приозёрная улица, Sestroretsk",
"full_title_ru": "авт.ост. Приозёрная улица, Сестрорецк",
"full_title_uk": "авт.зуп. Приозёрная улица, Сестрорецьк",
"id": 1,
"majority": 4,
"object_id": 9881568,
"type": "station",
"order": 0,
"point_key": "s9881568",
"region_id": 10174,
"ttype": "bus",
"title": "Приозёрная улица",
"title_en": "Приозёрная улица",
"title_ru": "Приозёрная улица",
"title_uk": "Приозёрная улица",
"zone_id": -1,
"slug": "priozernaia-ulitsa",
"popular_title": "",
"station_type": "автобусная остановка",
"settlement_title": "Сестрорецк",
"region_title": "Санкт-Петербург и Ленинградская область",
"country_title": "Россия"
}
],
"total_found": 10,
"has_exact_match": true
}*/

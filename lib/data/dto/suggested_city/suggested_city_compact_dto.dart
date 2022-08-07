import '../../../domain/entities/suggested_city/suggested_city_compact.dart';

class SuggestedCityCompactDTO {
  String? pointKey;
  String? title;
  String? fullTitle;
  String? slug;

  SuggestedCityCompactDTO({
    this.pointKey,
    this.title,
    this.fullTitle,
    this.slug,
  });

  factory SuggestedCityCompactDTO.fromApi(List<dynamic> data) =>
      SuggestedCityCompactDTO(
        pointKey: data[0] as String,
        title: data[1] as String,
        fullTitle: data[2] as String,
        slug: data[3] as String,
      );

// factory SuggestedCityCompactDTO.fromApi(data) {
//   final suggestedCities = convert.jsonDecode(data)[1];
//   List<SuggestedCityCompactDTO> suggestedCityList = [];
//   for (var suggestedCity in suggestedCities) {
//     suggestedCityList.add(
//       SuggestedCityCompactDTO(
//           pointKey: suggestedCity[0],
//           title: suggestedCity[1],
//           fullTitle: suggestedCity[2],
//           slug: suggestedCity[3]),
//     );
//   }
//   return suggestedCityList;
// }
}

extension SuggestedCityCompactMapper on SuggestedCityCompactDTO {
  SuggestedCityCompact toModel() {
    return SuggestedCityCompact(
      pointKey: pointKey,
      title: title,
      fullTitle: fullTitle,
      slug: slug,
    );
  }
}

/*[
null,
[
[
"c10883",
"Приозерск",
"г. Приозерск, Санкт-Петербург и Ленинградская область, Россия",
"priozersk"
],
[
"s9603177",
"Приозерск",
"вкз. Приозерск, Приозерск",
"priozersk-train-station"
],
[
"s9813869",
"Приозерск",
"авт.вкз. Приозерск, Приозерск",
"priozersk-bus-station"
],
[
"s9868401",
"18 км Ново-Приозерского шоссе",
"авт.ост. 18 км Ново-Приозерского шоссе, Санкт-Петербург и Ленинградская область",
"18-km-novo-priozerskogo-shosse"
],
[
"s9614890",
"Приозерный",
"о.п. Приозерный, Брестская область",
"priozerniy-stop"
],
[
"s9861311",
"Приозёрье",
"авт.ост. Приозёрье, Калининградская область",
"priozere"
],
[
"s9837819",
"Приозёрный",
"авт.ост. Приозёрный, Санкт-Петербург и Ленинградская область",
"priozerniy-saint-petersburg-and-leningradskaya-oblast-s9837819"
],
[
"s9807151",
"Приозерный / Верхняя Тойма, левый берег",
"прст. Приозерный / Верхняя Тойма, левый берег, Верхнетоемский р-н, Архангельская область",
"priozerny"
],
[
"s9872602",
"Приозёрный",
"авт.ост. Приозёрный, Никологоры",
"priozernyi-station-without-type"
],
[
"s9881568",
"Приозёрная улица",
"авт.ост. Приозёрная улица, Сестрорецк",
"priozernaia-ulitsa"
]
]
]*/

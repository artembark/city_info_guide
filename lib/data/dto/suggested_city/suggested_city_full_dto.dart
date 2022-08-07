class SuggestedCityFullDTO {
  int? countryId;
  bool? disputedTerritory;
  String? fullTitle;
  String? fullTitleEn;
  String? fullTitleRu;
  String? fullTitleUk;
  int? id;
  int? majority;
  int? objectId;
  String? type;
  int? order;
  String? pointKey;
  int? regionId;
  String? ttype;
  String? title;
  String? titleEn;
  String? titleRu;
  String? titleUk;
  int? zoneId;
  String? slug;
  String? popularTitle;
  String? stationType;
  String? settlementTitle;
  String? regionTitle;
  String? countryTitle;

  SuggestedCityFullDTO({
    this.countryId,
    this.disputedTerritory,
    this.fullTitle,
    this.fullTitleEn,
    this.fullTitleRu,
    this.fullTitleUk,
    this.id,
    this.majority,
    this.objectId,
    this.type,
    this.order,
    this.pointKey,
    this.regionId,
    this.ttype,
    this.title,
    this.titleEn,
    this.titleRu,
    this.titleUk,
    this.zoneId,
    this.slug,
    this.popularTitle,
    this.stationType,
    this.settlementTitle,
    this.regionTitle,
    this.countryTitle,
  });

  factory SuggestedCityFullDTO.fromJson(Map<String, dynamic> json) =>
      SuggestedCityFullDTO(
        countryId: json['country_id'] as int?,
        disputedTerritory: json['disputed_territory'] as bool?,
        fullTitle: json['full_title'] as String?,
        fullTitleEn: json['full_title_en'] as String?,
        fullTitleRu: json['full_title_ru'] as String?,
        fullTitleUk: json['full_title_uk'] as String?,
        id: json['id'] as int?,
        majority: json['majority'] as int?,
        objectId: json['object_id'] as int?,
        type: json['type'] as String?,
        order: json['order'] as int?,
        pointKey: json['point_key'] as String?,
        regionId: json['region_id'] as int?,
        ttype: json['ttype'] as String?,
        title: json['title'] as String?,
        titleEn: json['title_en'] as String?,
        titleRu: json['title_ru'] as String?,
        titleUk: json['title_uk'] as String?,
        zoneId: json['zone_id'] as int?,
        slug: json['slug'] as String?,
        popularTitle: json['popular_title'] as String?,
        stationType: json['station_type'] as String?,
        settlementTitle: json['settlement_title'] as String?,
        regionTitle: json['region_title'] as String?,
        countryTitle: json['country_title'] as String?,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'country_id': countryId,
        'disputed_territory': disputedTerritory,
        'full_title': fullTitle,
        'full_title_en': fullTitleEn,
        'full_title_ru': fullTitleRu,
        'full_title_uk': fullTitleUk,
        'id': id,
        'majority': majority,
        'object_id': objectId,
        'type': type,
        'order': order,
        'point_key': pointKey,
        'region_id': regionId,
        'ttype': ttype,
        'title': title,
        'title_en': titleEn,
        'title_ru': titleRu,
        'title_uk': titleUk,
        'zone_id': zoneId,
        'slug': slug,
        'popular_title': popularTitle,
        'station_type': stationType,
        'settlement_title': settlementTitle,
        'region_title': regionTitle,
        'country_title': countryTitle,
      };
}

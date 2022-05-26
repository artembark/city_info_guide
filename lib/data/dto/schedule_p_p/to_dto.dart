import '../../../domain/entities/schedule_p_p/to.dart';

class ToDTO {
  String? code;
  String? title;
  String? stationType;
  String? popularTitle;
  String? shortTitle;
  String? transportType;
  String? stationTypeName;
  String? type;

  ToDTO({
    this.code,
    this.title,
    this.stationType,
    this.popularTitle,
    this.shortTitle,
    this.transportType,
    this.stationTypeName,
    this.type,
  });

  factory ToDTO.fromJson(Map<String, dynamic> json) => ToDTO(
        code: json['code'] as String?,
        title: json['title'] as String?,
        stationType: json['station_type'] as String?,
        popularTitle: json['popular_title'] as String?,
        shortTitle: json['short_title'] as String?,
        transportType: json['transport_type'] as String?,
        stationTypeName: json['station_type_name'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'title': title,
        'station_type': stationType,
        'popular_title': popularTitle,
        'short_title': shortTitle,
        'transport_type': transportType,
        'station_type_name': stationTypeName,
        'type': type,
      };
}

extension ToMapper on ToDTO {
  To toModel() {
    return To(
      code: code,
      title: title,
      stationType: stationType,
      popularTitle: popularTitle,
      shortTitle: shortTitle,
      transportType: transportType,
      stationTypeName: stationTypeName,
      type: type,
    );
  }
}

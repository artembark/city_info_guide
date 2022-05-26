import '../../../domain/entities/schedule_p_p/transport_subtype.dart';

class TransportSubtypeDTO {
  dynamic color;
  dynamic code;
  dynamic title;

  TransportSubtypeDTO({this.color, this.code, this.title});

  factory TransportSubtypeDTO.fromJson(Map<String, dynamic> json) {
    return TransportSubtypeDTO(
      color: json['color'] as dynamic,
      code: json['code'] as dynamic,
      title: json['title'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'color': color,
        'code': code,
        'title': title,
      };
}

extension TransportSubtypeMapper on TransportSubtypeDTO {
  TransportSubtype toModel() {
    return TransportSubtype(
      color: color,
      code: code,
      title: title,
    );
  }
}

import '../../../domain/entities/schedule_p_p/thread.dart';
import 'transport_subtype_dto.dart';

class ThreadDTO {
  String? uid;
  String? title;
  String? number;
  String? shortTitle;
  String? threadMethodLink;
  dynamic carrier;
  String? transportType;
  dynamic vehicle;
  TransportSubtypeDTO? transportSubtype;
  dynamic expressType;

  ThreadDTO({
    this.uid,
    this.title,
    this.number,
    this.shortTitle,
    this.threadMethodLink,
    this.carrier,
    this.transportType,
    this.vehicle,
    this.transportSubtype,
    this.expressType,
  });

  factory ThreadDTO.fromJson(Map<String, dynamic> json) => ThreadDTO(
        uid: json['uid'] as String?,
        title: json['title'] as String?,
        number: json['number'] as String?,
        shortTitle: json['short_title'] as String?,
        threadMethodLink: json['thread_method_link'] as String?,
        carrier: json['carrier'] as dynamic,
        transportType: json['transport_type'] as String?,
        vehicle: json['vehicle'] as dynamic,
        transportSubtype: json['transport_subtype'] == null
            ? null
            : TransportSubtypeDTO.fromJson(
                json['transport_subtype'] as Map<String, dynamic>),
        expressType: json['express_type'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'title': title,
        'number': number,
        'short_title': shortTitle,
        'thread_method_link': threadMethodLink,
        'carrier': carrier,
        'transport_type': transportType,
        'vehicle': vehicle,
        'transport_subtype': transportSubtype?.toJson(),
        'express_type': expressType,
      };
}

extension ThreadMapper on ThreadDTO {
  Thread toModel() {
    return Thread(
      uid: uid,
      title: title,
      number: number,
      shortTitle: shortTitle,
      threadMethodLink: threadMethodLink,
      carrier: carrier,
      transportType: transportType,
      vehicle: vehicle,
      transportSubtype: transportSubtype?.toModel(),
      expressType: expressType,
    );
  }
}

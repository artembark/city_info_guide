import 'transport_subtype_entity.dart';

class ThreadEntity {
  String? uid;
  String? title;
  String? number;
  String? shortTitle;
  String? threadMethodLink;
  dynamic carrier;
  String? transportType;
  dynamic vehicle;
  TransportSubtypeEntity? transportSubtype;
  dynamic expressType;

  ThreadEntity({
    required this.uid,
    required this.title,
    required this.number,
    required this.shortTitle,
    required this.threadMethodLink,
    required this.carrier,
    required this.transportType,
    required this.vehicle,
    required this.transportSubtype,
    required this.expressType,
  });
}

import 'package:equatable/equatable.dart';

import 'transport_subtype_entity.dart';

class ThreadEntity extends Equatable {
  final String? uid;
  final String? title;
  final String? number;
  final String? shortTitle;
  final String? threadMethodLink;
  final dynamic carrier;
  final String? transportType;
  final dynamic vehicle;
  final TransportSubtypeEntity? transportSubtype;
  final dynamic expressType;

  const ThreadEntity({
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

  @override
  List<Object?> get props => [
        uid,
        title,
        number,
        shortTitle,
        threadMethodLink,
        carrier,
        transportType,
        vehicle,
        transportSubtype,
        expressType
      ];
}

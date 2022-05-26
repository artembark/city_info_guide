import 'package:meta/meta.dart';

import 'transport_subtype.dart';

class Thread {
  String? uid;
  String? title;
  String? number;
  String? shortTitle;
  String? threadMethodLink;
  dynamic carrier;
  String? transportType;
  dynamic vehicle;
  TransportSubtype? transportSubtype;
  dynamic expressType;

  Thread({
    @required this.uid,
    @required this.title,
    @required this.number,
    @required this.shortTitle,
    @required this.threadMethodLink,
    @required this.carrier,
    @required this.transportType,
    @required this.vehicle,
    @required this.transportSubtype,
    @required this.expressType,
  });
}

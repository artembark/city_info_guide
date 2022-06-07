import 'package:equatable/equatable.dart';

class TicketsInfoEntity extends Equatable {
  final bool? etMarker;
  final List<dynamic>? places;

  const TicketsInfoEntity({
    required this.etMarker,
    required this.places,
  });

  @override
  List<Object?> get props => [etMarker, places];
}
